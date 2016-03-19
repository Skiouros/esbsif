class News
    @path: "/news"
    @route_name: "news_"

    index: "/": ->
        get: ->
            @res.redirect @url_for "news_blog"

    blog: "/blog": ->
        get: ->
            @res.render "news/blog", title: "Blog | ESB SIF", navbar: "news"

    events: "/events": ->
        get: ->
            @res.render "news/events", title: "Events | ESB SIF", navbar: "news"

module.exports = News
