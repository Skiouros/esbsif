// Generated by CoffeeScript 1.7.1
(function() {
  var Index;

  Index = (function() {
    function Index() {}

    Index.prototype.index = {
      "/": function() {
        return {
          get: function() {
            return this.res.render("index", {
              title: "Eberhardt School of Business | Student Investment Fund",
              navbar: "home"
            });
          }
        };
      }
    };

    Index.prototype["/contact"] = function() {
      return {
        get: function() {
          return this.res.render("contact", {
            title: "Contact",
            navbar: "contact"
          });
        }
      };
    };

    return Index;

  })();

  module.exports = Index;

}).call(this);