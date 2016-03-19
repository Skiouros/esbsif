validator = require "validator"
bcrypt = require "bcrypt"

class Users
    @path: "/users"
    @route_name: "users_"

    index: "/": ->
        post: ->

            username = @params.username
            password = @params.password

            @res.json { error: "Not valid email" } unless validator.isEmail username

            bcrypt.genSalt 10, (err, salt) =>
                bcrypt.hash password, salt, (err, hash) =>
                        throw err if err

                        # TODO: Implement login with postgres
                        @res.json { "success" }


module.exports = Users
