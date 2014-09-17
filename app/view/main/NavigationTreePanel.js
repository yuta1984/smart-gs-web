// Generated by CoffeeScript 1.8.0
(function() {
  Ext.define('GSW.view.main.NavigationTreePanel', {
    extend: 'Ext.tree.Panel',
    xtype: "navigation-tree-panel",
    requires: ['GSW.view.map.GoogleMapPanel'],
    layout: 'fit',
    collapsible: true,
    split: true,
    rootVisible: false,
    useArrows: true,
    colspan: 2,
    store: "GSW.store.ResourceStore",
    constructor: function(config) {
      return this.callParent(arguments);
    },
    listeners: {
      itemclick: function(tree, record, item, index) {
        return this.createTab(tree, record, item, index);
      }
    },
    createTab: function(tree, record, item, index) {
      var tab, tabpanel;
      switch (record.data.type) {
        case 'document':
          tab = Ext.create("GSW.view.transcription.TranscriptionPanel", {
            title: record.data.text
          });
          tab.setBackgroundImg(record.data.url);
          break;
        case 'map':
          tab = Ext.create("GSW.view.map.GoogleMapPanel", {
            title: '京都'
          });
      }
      tabpanel = Ext.getCmp("content-tabpanel");
      tabpanel.add(tab);
      return tabpanel.setActiveTab(tab);
    }
  });

}).call(this);