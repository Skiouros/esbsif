db = require "db"

Model = db.Model
schema = db.schema
types = schema.types

schema.create_table "users", [
    { name: "id", type: types.serial }
    { name: "img", type: types.text }
    { name: "bio", type: types.text }
    { name: "email", type: types.text }
    { name: "title", type: types.text }
    { name: "firstname", type: types.text }
    { name: "lastname", type: types.text }
    "PRIMARY KEY (id)"
]
    .then((-> schema.create_index "users", "email", unique: true), console.log)

class User extends Model
    @table: "users"

module.exports = User
