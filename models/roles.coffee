db = require "db"

Model = db.Model
schema = db.schema
types = schema.types

schema.create_table "roles", [
    { name: "id", type: types.serial }
    { name: "description", type: types.text }
    "PRIMARY KEY (id)"
]

class Role extends Model
    @table: "roles"

module.exports = Role
