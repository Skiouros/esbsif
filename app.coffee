# If getting underfiend is not a function, make sure db is up
#
#

require("rootpath")()
express = require "express"
sessions = require "client-sessions"

path = require "path"
fs = require "fs"
_ = require "underscore"

module.exports = app = express()

app.configure "development", ->
    app.use(express.errorHandler(showStack: true, dumpExceptions: true))
    app.locals.pretty = true
    app.set "db user", "docker"
    app.set "db pass", "docker"

    app.set "port", 8080

app.configure "production", ->
    app.use(express.errorHandler())

    app.set "db user", "esbsif_user"
    app.set "db pass", "password"

    app.set "port", 3000

app.engine "jade", require("jade").__express
app.set "view engine", "jade"
app.locals.basedir = path.join(__dirname, "views")

app.use express.json()
app.use express.urlencoded()
app.use("/public", express.static(path.join(__dirname, "public")))

# Db stuff
user = app.get "db user"
pass = app.get "db pass"
require("db").setup("esbsif", user, pass, app)

app.use sessions
    cookieName: "session"
    requestKey: "session"
    secret: "wooajeowjfowejfoej23010231jas"
    duration: 10 * 60 * 1000  # 10 minutes
    # Five minutes activeDuration: 5 * 60 * 1000

clc = require "cli-color"
sql = clc.cyanBright.bold
magenta = clc.redBright

# Logging
app.use (req, res, next) ->
    start = Date.now()

    res.on "header", ->
        cmd = "#{req.method} #{req.url}"
        params = _.extend {}, req.body, req.query, req.params

        status_code = res.statusCode.toString()
        status_color = switch status_code[0]
            when "2" then clc.green
            when "5" then clc.red
            else clc.xterm 214


        buffer = ["[#{status_color res.statusCode}]"]
        buffer.push " #{sql cmd} - #{JSON.stringify params} ms: #{Date.now() - start}"

        console.log buffer.join ""

    next()


Application = require "./application"
main_app = new Application(app)

# Load all controllers
dir = "./controllers"
fs.readdirSync(dir)
    .filter (file) -> path.extname(file) == ".js"
    .forEach (file) ->
        klass = require "#{dir}/#{file}"
        main_app.include(klass)


app.get "*", (req, res) ->
    res.status(404).render "404"

app.listen app.get "port"
console.log "Listening on port: #{app.get "port"}"
