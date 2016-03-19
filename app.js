// Generated by CoffeeScript 1.7.1
(function() {
  var Application, app, clc, dir, express, fs, magenta, main_app, pass, path, sessions, sql, user, _;

  require("rootpath")();

  express = require("express");

  sessions = require("client-sessions");

  path = require("path");

  fs = require("fs");

  _ = require("underscore");

  module.exports = app = express();

  app.configure("development", function() {
    app.use(express.errorHandler({
      showStack: true,
      dumpExceptions: true
    }));
    app.locals.pretty = true;
    app.set("db user", "docker");
    app.set("db pass", "docker");
    return app.set("port", 8080);
  });

  app.configure("production", function() {
    app.use(express.errorHandler());
    app.set("db user", "esbsif_user");
    app.set("db pass", "password");
    return app.set("port", 3000);
  });

  app.engine("jade", require("jade").__express);

  app.set("view engine", "jade");

  app.locals.basedir = path.join(__dirname, "views");

  app.use(express.json());

  app.use(express.urlencoded());

  app.use("/public", express["static"](path.join(__dirname, "public")));

  user = app.get("db user");

  pass = app.get("db pass");

  require("db").setup("esbsif", user, pass, app);

  app.use(sessions({
    cookieName: "session",
    requestKey: "session",
    secret: "wooajeowjfowejfoej23010231jas",
    duration: 10 * 60 * 1000
  }));

  clc = require("cli-color");

  sql = clc.cyanBright.bold;

  magenta = clc.redBright;

  app.use(function(req, res, next) {
    var start;
    start = Date.now();
    res.on("header", function() {
      var buffer, cmd, params, status_code, status_color;
      cmd = "" + req.method + " " + req.url;
      params = _.extend({}, req.body, req.query, req.params);
      status_code = res.statusCode.toString();
      status_color = (function() {
        switch (status_code[0]) {
          case "2":
            return clc.green;
          case "5":
            return clc.red;
          default:
            return clc.xterm(214);
        }
      })();
      buffer = ["[" + (status_color(res.statusCode)) + "]"];
      buffer.push(" " + (sql(cmd)) + " - " + (JSON.stringify(params)) + " ms: " + (Date.now() - start));
      return console.log(buffer.join(""));
    });
    return next();
  });

  Application = require("./application");

  main_app = new Application(app);

  dir = "./controllers";

  fs.readdirSync(dir).filter(function(file) {
    return path.extname(file) === ".js";
  }).forEach(function(file) {
    var klass;
    klass = require("" + dir + "/" + file);
    return main_app.include(klass);
  });

  app.get("*", function(req, res) {
    return res.status(404).render("404");
  });

  app.listen(app.get("port"));

  console.log("Listening on port: " + (app.get("port")));

}).call(this);
