db = require "db"
Sector = db.models.Sector

class Portfolio
    @path: "/portfolio"
    @route_name: "portfolio_"

    index: "/": ->
        get: ->
            @res.redirect @url_for "portfolio_sectors"

    sectors: "/sectors": ->
        get: ->
            Sector.select()
                .then (sectors) =>
                    @res.render "portfolio/sectors", title: "Portfolio | ESB SIF", navbar: "portfolio", sectors: sectors

    sector: "/sectors/:abbrv": ->
        get: ->
            abbrv = @params.abbrv
            Sector.find abbrv: abbrv
                .then(
                    (sector) =>
                        if !sector
                            @res.redirect @url_for "portfolio_sectors"
                        @res.render "portfolio/sector", title: "#{abbrv.toUpperCase()} | ESB SIF", navbar: "portfolio", project: sector
                    (err) ->
                        console.log "stupid erro", err
                        @res.redirect @url_for "portfolio_sectors"
                    )

module.exports = Portfolio
