// Generated by CoffeeScript 1.7.1
(function() {
  Ext.define('GSW.store.UserStore', {
    extend: 'Ext.data.Store',
    model: 'GSW.model.User',
    proxy: {
      type: 'localstorage'
    }
  });

}).call(this);
