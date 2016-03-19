// Generated by CoffeeScript 1.7.1
(function() {
  var Login, bcrypt, validator;

  validator = require("validator");

  bcrypt = require("bcrypt");

  Login = (function() {
    function Login() {}

    Login.path = "/login";

    Login.name = "login_";

    Login.prototype.index = {
      "/": function() {
        return {
          get: function() {
            return this.res.render("login", {
              title: "Login"
            });
          },
          post: function() {
            var password, username;
            username = this.params.username;
            password = this.params.password;
            return bcrypt.compare(password, "user_password_from_db", (function(_this) {
              return function(err, res) {
                if (res) {
                  _this.req.session.user = username;
                  return _this.res.redirect("/admin");
                } else {
                  return _this.res.redirect("/login");
                }
              };
            })(this));
          }
        };
      }
    };

    return Login;

  })();

  module.exports = Login;

}).call(this);
