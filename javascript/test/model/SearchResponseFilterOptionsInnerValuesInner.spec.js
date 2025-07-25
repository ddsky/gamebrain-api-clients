/**
 * GameBrain API
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.1
 * Contact: mail@gamebrain.co
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.GamebrainJs);
  }
}(this, function(expect, GamebrainJs) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new GamebrainJs.SearchResponseFilterOptionsInnerValuesInner();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('SearchResponseFilterOptionsInnerValuesInner', function() {
    it('should create an instance of SearchResponseFilterOptionsInnerValuesInner', function() {
      // uncomment below and update the code to test SearchResponseFilterOptionsInnerValuesInner
      //var instance = new GamebrainJs.SearchResponseFilterOptionsInnerValuesInner();
      //expect(instance).to.be.a(GamebrainJs.SearchResponseFilterOptionsInnerValuesInner);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new GamebrainJs.SearchResponseFilterOptionsInnerValuesInner();
      //expect(instance).to.be();
    });

    it('should have the property key (base name: "key")', function() {
      // uncomment below and update the code to test the property key
      //var instance = new GamebrainJs.SearchResponseFilterOptionsInnerValuesInner();
      //expect(instance).to.be();
    });

    it('should have the property count (base name: "count")', function() {
      // uncomment below and update the code to test the property count
      //var instance = new GamebrainJs.SearchResponseFilterOptionsInnerValuesInner();
      //expect(instance).to.be();
    });

  });

}));
