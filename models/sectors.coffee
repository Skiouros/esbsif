db = require "db"

Model = db.Model
schema = db.schema
types = schema.types

schema.create_table "sectors", [
    { name: "id", type: types.serial }
    { name: "img", type: types.text }
    { name: "name", type: types.text }
    { name: "info", type: types.text }
    { name: "abbrv", type: types.text }
    { name: "website", type: types.text }
    { name: "category", type: types.text }
    "PRIMARY KEY (id)"
]
    .then -> schema.create_index "sectors", "abbrv", unique: true

class Sector extends Model
    @table: "sectors"

module.exports = Sector
