bcrypt = require "bcrypt"

require_login = (next) ->
    ->
        if @current_user
            next
        else
            @res.redirect @url_for "admin_login"


class Admin
    @path: "/admin"
    @route_name: "admin_"

    @before: (next) ->
        if username = @req.session.user
            #find user
            #if user is found set @current_user and call next()
            console.log username
        next()

    index: "/": ->
        get: ->
            @res.render "admin/index"

    login: "/login": ->
        post: ->
            bcrypt.compare @params.password, "user_password_from_db", (err, res) =>
                if res
                    @req.session.user = username
                    @res.redirect "/admin"
                else
                    @res.redirect "/admin/login"
        get: ->
            @res.render "admin/login"

    user: "/user": ->
        post: ->
            @res.send "ok"
        get: ->
            @res.render "admin/userprofile"

    manage_user: "/user/manage": ->
        get: ->
            @res.render "admin/manage_users"

module.exports = Admin
