db = require "db"
Sector = db.models.Sector

class Company
    @path: "/company"
    @route_name: "company_"

    index: "/": ->
        get: ->
            @res.redirect @url_for "company_about"

    about: "/about": ->
        get: ->
            Sector.select()
                .then (sectors) =>
                    @res.render "company/about", title: "Company | ESB SIF", navbar: "company", sectors: sectors

    team: "/team": ->
        get: ->
            @res.render "company/team", title: "Company", navbar: "company"

    "/team/fall-2013": ->
        get: ->
            @res.render "company/fall-2013", title: "Fall 2013", navbar: "company"

    "/team/fall-2013/:member": ->
        get: ->
            @res.render "company/member", title: "Member!", navbar: "company", name: ""


module.exports = Company
