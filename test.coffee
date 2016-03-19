app = require "./app"
db = require "./db"


filler = "Lorem ipsum dolor sit amet, te delectus officiis cum, ancillae hendrerit te qui. Summo phaedrum ut vim. Sea quis duis dissentiet cu, quis ornatus nostrum at sea, dicta mazim sed ut. Sumo dicta duo an, idque recusabo concludaturque vix ei, dicant suscipiantur eum ea. Sea ut essent efficiendi, unum nobis delicatissimi ea mel."

sectors = [
    {
        img: "/public/img/portfolio/cols/wyn.jpg"
        name: "Wyndham Worldwide Corp"
        info: filler
        abbrv: "wyn"
        website: "https://google.com"
        category: "cd"
    },
    {
        img: "/public/img/portfolio/cols/gis.jpg"
        name: "General Mills Inc"
        info: filler
        abbrv: "gis"
        website: "https://google.com"
        category: "cs"
    },
    {
        img: "/public/img/portfolio/cols/pep.jpg"
        name: "Pepsico Inc"
        info: filler
        abbrv: "pep"
        website: "https://google.com"
        category: "cs"
    },
    {
        img: "/public/img/portfolio/cols/pg.jpg"
        name: "Procter & Gamble"
        info: filler
        abbrv: "pg"
        website: "https://google.com"
        category: "cs"
    },
    {
        img: "/public/img/portfolio/cols/tgp.jpg"
        name: "Teekay LNG Partners LP"
        info: filler
        abbrv: "tgp"
        website: "https://google.com"
        category: "enrg"
    },
    {
        img: "/public/img/portfolio/cols/kog.jpg"
        name: "Kodiak Oil & Gas Corp"
        info: filler
        abbrv: "kog"
        website: "https://google.com"
        category: "enrg"
    },
    {
        img: "/public/img/portfolio/cols/frc.jpg"
        name: "First Republic Bank/CA"
        info: filler
        abbrv: "frc"
        website: "https://google.com"
        category: "fin"
    },
    {
        img: "/public/img/portfolio/cols/hta.jpg"
        name: "Healthcare Trust of AME-CLA"
        info: filler
        abbrv: "hta"
        website: "https://google.com"
        category: "fin"
    },
    {
        img: "/public/img/portfolio/cols/met.jpg"
        name: "Metlife Inc"
        info: filler
        abbrv: "met"
        website: "https://google.com"
        category: "fin"
    },
    {
        img: "/public/img/portfolio/cols/praa.jpg"
        name: "Portfolio Recovery Associate"
        info: filler
        abbrv: "praa"
        website: "https://google.com"
        category: "fin"
    },
    {
        img: "/public/img/portfolio/cols/jazz.jpg"
        name: "Jazz Pharmaceuticals PLC"
        info: filler
        abbrv: "jazz"
        website: "https://google.com"
        category: "hc"
    },
    {
        img: "/public/img/portfolio/cols/ens.jpg"
        name: "EnerSys"
        info: filler
        abbrv: "ens"
        website: "https://google.com"
        category: "ind"
    },
    {
        img: "/public/img/portfolio/cols/pwr.jpg"
        name: "Quanta Services Inc."
        info: filler
        abbrv: "pwr"
        website: "https://google.com"
        category: "ind"
    },
    {
        img: "/public/img/portfolio/cols/mu.jpg"
        name: "Micron Technology Inc."
        info: filler
        abbrv: "mu"
        website: "https://google.com"
        category: "it"
    },
    {
        img: "/public/img/portfolio/cols/wdc.jpg"
        name: "Western Digital Corp."
        info: filler
        abbrv: "wdc"
        website: "https://google.com"
        category: "it"
    },
    {
        img: "/public/img/portfolio/cols/rkt.jpg"
        name: "RockTenn Company"
        info: filler
        abbrv: "rkt"
        website: "https://google.com"
        category: "mat"
    },
    {
        img: "/public/img/portfolio/cols/nee.jpg"
        name: "NextEra Energy Inc."
        info: filler
        abbrv: "nee"
        website: "https://google.com"
        category: "util"
    },
    {
        img: "/public/img/portfolio/cols/agg.jpg"
        name: "iShares Core Total US Bond Fund Market"
        info: filler
        abbrv: "agg"
        website: "https://google.com"
        category: "uncl"
    },
    {
        img: "/public/img/portfolio/cols/ciu.jpg"
        name: "iShares Intermediate Credit"
        info: filler
        abbrv: "ciu"
        website: "https://google.com"
        category: "uncl"
    }
]

teams = [
    { year: "fall-2014" },
    { year: "fall-2013" },
    { year: "fall-2012" },
    { year: "fall-2011" },
    { year: "spring-2010" },
    { year: "spring-2011" },
    { year: "spring-2012" },
    { year: "spring-2013" },
    { year: "spring-2014" }
]

roles = [
    { description: "admin" },
    { description: "blog" },
    { description: "hidden" },
]

users = [
    {
        img: ""
        bio: ""
        title: ""
        firstname: ""
        lastname: ""
    }
]

for k in sectors
    db.models.Sector.create k
