db = require "db"

Model = db.Model
schema = db.schema
types = schema.types

schema.create_table "teams", [
    { name: "id", type: types.serial }
    { name: "year", type: types.text }
    "PRIMARY KEY (id)"
]
    .then -> schema.create_index "teams", "year", unique: true

class Team extends Model
    @table: "teams"

module.exports = Team
