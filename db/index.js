// Generated by CoffeeScript 1.7.1
(function() {
  var Singleton, clc, fs, magenta, path, query, sql;

  fs = require("fs");

  path = require("path");

  query = require("pg-query");

  clc = require("cli-color");

  sql = clc.cyanBright;

  magenta = clc.redBright;

  Singleton = (function() {
    var instance;

    instance = null;

    Singleton.prototype.TRUE = "TRUE";

    Singleton.prototype.FALSE = "FALSE";

    Singleton.prototype.NULL = "NULL";

    function Singleton() {}

    Singleton.get = function() {
      return instance != null ? instance : instance = new Singleton();
    };

    Singleton.prototype.escape_var = function(obj) {
      if (obj === this.NULL) {
        return obj;
      }
      switch (typeof obj) {
        case "string":
          return "'" + obj + "'";
        case "boolean":
          if (obj) {
            return this.TRUE;
          } else {
            return this.FALSE;
          }
        default:
          return obj;
      }
    };

    Singleton.prototype.escape_name = function(obj) {
      return "\"" + obj + "\"";
    };

    Singleton.prototype.query = function(text, values, cb) {
      var error;
      console.log("" + (sql("SQL")) + ": " + (magenta(text)));
      try {
        return query(text, values, cb);
      } catch (_error) {
        error = _error;
        return console.log(error);
      }
    };

    Singleton.prototype.select = function(text, values, cb) {
      return this.query("SELECT " + text, values, cb);
    };

    Singleton.prototype.insert = function(table, info, ret) {
      var i, k, q, v, values;
      if ("string" === typeof ret) {
        ret = [ret];
      }
      values = [];
      for (k in info) {
        v = info[k];
        values.push(v);
      }
      q = "INSERT INTO " + (this.escape_name(table)) + " (" + (Object.keys(info).join(",")) + ") VALUES (" + (((function() {
        var _i, _ref, _results;
        _results = [];
        for (i = _i = 1, _ref = values.length; _i <= _ref; i = _i += 1) {
          _results.push("$" + i);
        }
        return _results;
      })()).join(",")) + ")";
      if (ret) {
        q = "" + q + " RETURNING " + (ret.join(","));
      }
      return this.query(q, values);
    };

    Singleton.prototype.update = function(table, values, conditions) {
      var condition, k, q, v, value;
      value = (function() {
        var _results;
        _results = [];
        for (k in values) {
          v = values[k];
          _results.push("" + (this.escape_name(k)) + " = " + (this.escape_var(v)));
        }
        return _results;
      }).call(this);
      condition = (function() {
        var _results;
        _results = [];
        for (k in conditions) {
          v = conditions[k];
          _results.push("" + (this.escape_name(k)) + " = " + (this.escape_var(v)));
        }
        return _results;
      }).call(this);
      q = "UPDATE " + (this.escape_name(table)) + " SET " + (value.join(", ")) + " WHERE " + (condition.join(" and "));
      return this.query(q);
    };

    Singleton.prototype["delete"] = function(table, conditions) {
      var condition, k, v;
      condition = (function() {
        var _results;
        _results = [];
        for (k in conditions) {
          v = conditions[k];
          _results.push("" + (this.escape_name(k)) + " = " + (this.escape_var(v)));
        }
        return _results;
      }).call(this);
      return this.query("DELETE FROM " + (this.escape_name(table)) + " WHERE " + (condition.join(" and ")));
    };

    Singleton.prototype.setup = function(database, user, pass, app) {
      query.connectionParameters = "postgres://" + user + ":" + pass + "@localhost/" + database;
      this.Model = require("db/model");
      this.schema = require("db/schema");
      return this.load_models();
    };

    Singleton.prototype.load_models = function() {
      this.models = {};
      return fs.readdirSync("models/").filter((function(_this) {
        return function(file) {
          return path.extname(file) === ".js";
        };
      })(this)).forEach((function(_this) {
        return function(file) {
          var model;
          console.log(file);
          model = require("models/" + file);
          return _this.models[model.name] = model;
        };
      })(this));
    };

    return Singleton;

  })();

  module.exports = Singleton.get();

}).call(this);