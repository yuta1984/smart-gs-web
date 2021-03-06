###
This class is the main view for the application. It is specified in app.js as the
"autoCreateViewport" property. That setting automatically applies the "viewport"
plugin to promote that instance of this class to the body element.

TODO - Replace this content of this view to suite the needs of your application.
###
Ext.define "GSW.view.main.Main",
  extend: "Ext.container.Container"
  requires: ["GSW.view.transcription.TranscriptionPanel","GSW.store.ResourceStore", 'Ext.ux.TabReorderer', 'GSW.view.main.NavigationTreePanel']
  xtype: "app-main"  
  controller: "main"
  viewModel:
    type: "main"

  layout:
    type: "border"

  items: [
    {      
      region: 'north'
      xtype: 'component'
      cls: 'appBanner'
      padding: 10
      height: 40
      html: 'SMART-GS Web'
      style: 'background-color: black; color: white; font-size: 20px;'
    }
    {
      xtype: "navigation-tree-panel"
      title: "古地震研究会"
      region: "west"
      width: 200
    }
    {
      region: "center"
      xtype: "tabpanel"
      id: "content-tabpanel"
      plugins: 'tabreorderer'      
      defaults:
        closable: true
        autoScroll: true
      items: [
        title: "Page 001"
        xtype: "transcription-panel"
      ,
        title: "Page 002"
        xtype: "transcription-panel"
      
      ]
    }
  ]
