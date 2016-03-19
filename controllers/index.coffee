class Index
    index: "/": ->
        get: ->
            @res.render "index", title: "Eberhardt School of Business | Student Investment Fund", navbar: "home"

    "/contact": ->
        get: ->
            @res.render "contact", title: "Contact", navbar: "contact"


module.exports = Index


