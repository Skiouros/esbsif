// Generated by CoffeeScript 1.7.1
(function() {
  var Admin, bcrypt, require_login;

  bcrypt = require("bcrypt");

  require_login = function(next) {
    return function() {
      if (this.current_user) {
        return next;
      } else {
        return this.res.redirect(this.url_for("admin_login"));
      }
    };
  };

  Admin = (function() {
    function Admin() {}

    Admin.path = "/admin";

    Admin.route_name = "admin_";

    Admin.before = function(next) {
      var username;
      if (username = this.req.session.user) {
        console.log(username);
      }
      return next();
    };

    Admin.prototype.index = {
      "/": function() {
        return {
          get: function() {
            return this.res.render("admin/index");
          }
        };
      }
    };

    Admin.prototype.login = {
      "/login": function() {
        return {
          post: function() {
            return bcrypt.compare(this.params.password, "user_password_from_db", (function(_this) {
              return function(err, res) {
                if (res) {
                  _this.req.session.user = username;
                  return _this.res.redirect("/admin");
                } else {
                  return _this.res.redirect("/admin/login");
                }
              };
            })(this));
          },
          get: function() {
            return this.res.render("admin/login");
          }
        };
      }
    };

    Admin.prototype.user = {
      "/user": function() {
        return {
          post: function() {
            return this.res.send("ok");
          },
          get: function() {
            return this.res.render("admin/userprofile");
          }
        };
      }
    };

    Admin.prototype.manage_user = {
      "/user/manage": function() {
        return {
          get: function() {
            return this.res.render("admin/manage_users");
          }
        };
      }
    };

    return Admin;

  })();

  module.exports = Admin;

}).call(this);
