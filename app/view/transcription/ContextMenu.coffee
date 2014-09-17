Ext.define 'GSW.view.transcription.ContextMenu',
  extend: 'Ext.menu.Menu'
  constructor: (config) ->
    @callParent(config)
    Ext.Error.raise "editor not given" unless @editor = config.editor

  items: [
    text: 'TEI属性情報を編集'
  ,
    text: 'マークアップを削除'    
  ,
    '-'
  ,
    text: 'アノテーションを編集'
  ,
    text: 'アノテーションを削除'
  ]


  
