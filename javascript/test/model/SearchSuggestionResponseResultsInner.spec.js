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
    instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
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

  describe('SearchSuggestionResponseResultsInner', function() {
    it('should create an instance of SearchSuggestionResponseResultsInner', function() {
      // uncomment below and update the code to test SearchSuggestionResponseResultsInner
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be.a(GamebrainJs.SearchSuggestionResponseResultsInner);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property year (base name: "year")', function() {
      // uncomment below and update the code to test the property year
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property genre (base name: "genre")', function() {
      // uncomment below and update the code to test the property genre
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property link (base name: "link")', function() {
      // uncomment below and update the code to test the property link
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property rating (base name: "rating")', function() {
      // uncomment below and update the code to test the property rating
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

    it('should have the property adultOnly (base name: "adult_only")', function() {
      // uncomment below and update the code to test the property adultOnly
      //var instance = new GamebrainJs.SearchSuggestionResponseResultsInner();
      //expect(instance).to.be();
    });

  });

}));
