// Generated by CoffeeScript 1.8.0

/**
The main application class. An instance of this class is created by app.js when it calls
Ext.application(). This is the ideal place to handle application launch and initialization
details.
 */

(function() {
  Ext.define("GSW.Application", {
    extend: "Ext.app.Application",
    name: "GSW",
    stores: ["GSW.store.ResourceStore", "GSW.store.UserStore"],
    models: ["GSW.model.User", "GSW.model.Surface", "GSW.model.Zone", "GSW.model.AbstractAnnotation", "GSW.model.ImageAnnotation", "GSW.model.TextAnnotation"],
    launch: function() {
      window.initialize = function() {};
      return this.loadGoogleMap();
    },
    loadGoogleMap: function() {
      var script;
      script = document.createElement('script');
      script.type = 'text/javascript';
      script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&callback=initialize';
      return document.body.appendChild(script);
    }
  });

}).call(this);
