// Generated by CoffeeScript 1.7.1
(function() {
  var Model, Role, db, schema, types,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  db = require("db");

  Model = db.Model;

  schema = db.schema;

  types = schema.types;

  schema.create_table("roles", [
    {
      name: "id",
      type: types.serial
    }, {
      name: "description",
      type: types.text
    }, "PRIMARY KEY (id)"
  ]);

  Role = (function(_super) {
    __extends(Role, _super);

    function Role() {
      return Role.__super__.constructor.apply(this, arguments);
    }

    Role.table = "roles";

    return Role;

  })(Model);

  module.exports = Role;

}).call(this);