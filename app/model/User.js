// Generated by CoffeeScript 1.7.1
(function() {
  Ext.define('GSW.model.User', {
    extend: 'GSW.model.Base',
    fields: [
      {
        name: 'name',
        type: 'string',
        defaultValue: ''
      }
    ],
    hasMay: ['TextAnnotation', 'ImageAnnotation'],
    getName: function() {
      return this.get('name');
    }
  });

}).call(this);
