// Generated by CoffeeScript 1.7.1
(function() {
  var Model, Sector, db, schema, types,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  db = require("db");

  Model = db.Model;

  schema = db.schema;

  types = schema.types;

  schema.create_table("sectors", [
    {
      name: "id",
      type: types.serial
    }, {
      name: "img",
      type: types.text
    }, {
      name: "name",
      type: types.text
    }, {
      name: "info",
      type: types.text
    }, {
      name: "abbrv",
      type: types.text
    }, {
      name: "website",
      type: types.text
    }, {
      name: "category",
      type: types.text
    }, "PRIMARY KEY (id)"
  ]).then(function() {
    return schema.create_index("sectors", "abbrv", {
      unique: true
    });
  });

  Sector = (function(_super) {
    __extends(Sector, _super);

    function Sector() {
      return Sector.__super__.constructor.apply(this, arguments);
    }

    Sector.table = "sectors";

    return Sector;

  })(Model);

  module.exports = Sector;

}).call(this);