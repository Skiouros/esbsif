validator = require "validator"
bcrypt = require "bcrypt"

class Login
    @path: "/login"
    @name: "login_"

    index: "/": ->
        get: ->
            @res.render "login", title: "Login"

        post: ->
            username = @params.username
            password = @params.password

            # TODO: Login system with postgres
            bcrypt.compare password, "user_password_from_db", (err, res) =>
                if res
                    @req.session.user = username
                    @res.redirect "/admin"
                else
                    @res.redirect "/login"

module.exports = Login
