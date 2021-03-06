// Generated by CoffeeScript 1.7.1
(function() {
  var News;

  News = (function() {
    function News() {}

    News.path = "/news";

    News.route_name = "news_";

    News.prototype.index = {
      "/": function() {
        return {
          get: function() {
            return this.res.redirect(this.url_for("news_blog"));
          }
        };
      }
    };

    News.prototype.blog = {
      "/blog": function() {
        return {
          get: function() {
            return this.res.render("news/blog", {
              title: "Blog | ESB SIF",
              navbar: "news"
            });
          }
        };
      }
    };

    News.prototype.events = {
      "/events": function() {
        return {
          get: function() {
            return this.res.render("news/events", {
              title: "Events | ESB SIF",
              navbar: "news"
            });
          }
        };
      }
    };

    return News;

  })();

  module.exports = News;

}).call(this);
