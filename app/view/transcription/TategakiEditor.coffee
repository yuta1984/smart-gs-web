# Generated by CoffeeScript 1.8.0
(->
  Ext.define "GSW.view.transcription.TategakiEditor",
    extend: "Ext.panel.Panel"
    xtype: "tategaki-editor"
    requires: [
      "GSW.view.transcription.form.RubyForm"
      "GSW.view.transcription.ContextMenu"
    ]
    bodyBorder: false
    layout: "fit"
    padding: 0
    dockedItems: [
      dock: "top"
      xtype: "toolbar"
      border: 1
      style:
        "background-color": "rgb(235,235,235)"

      items: [
        {
          iconCls: null
          text: "Text"
          xtype: "splitbutton"
          menu: [
            {
              text: "ルビ"
              value: "ruby"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "追加 (add)"
              value: "add"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "削除 (del)"
              value: "del"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "空白 (gap)"
              value: "gap"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "ハイライト (hi)"
              value: "hi"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "不明瞭 (unclear)"
              value: "unclear"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "選択肢 (choice)"
              value: "choice"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "破損 (damage)"
              value: "damage"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
          ]
        }
        {
          iconCls: null
          text: "Dates/Names"
          xtype: "splitbutton"
          menu: [
            {
              text: "日付 (date)"
              value: "date"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "団体・組織名 (orgName)"
              value: "orgName"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "人名 (persName)"
              value: "persName"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "役職名 (roleName)"
              value: "roleName"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "場所名 (placeName)"
              value: "placeName"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
            {
              text: "地域・地方名 (region)"
              value: "region"
              handler: (item, e) ->
                @up("tategaki-editor").onMarkupButtonPressed item, e
            }
          ]
        }
        {
          iconCls: null
          text: "Misk"
          xtype: "splitbutton"
          menu: [
            {
              text: "リンク (link)"
              value: "link"
            }
            {
              text: "外字 (gaiji)"
              value: "gaiji"
            }
          ]
        }
        "-"
        {
          iconCls: null
          xtype: "button"
          text: "Delete markup"
        }
      ]
    ]
    constructor: (config) ->
      @callParent arguments

    listeners:
      afterrender: ->
        @buildEditor()

    buildEditor: ->
      iframeId = undefined
      iframeId = "iframe-" + @getId()
      @setHtml "<iframe id='" + iframeId + "' width='100%' height='100%' style='border: none;'></iframe>"
      @editor = new window.TategakiEditor(iframeId)
      $(".tategaki-editor", @editor.doc).css "height", "100%"
      @editor.on "element:selected", ->

      @editor.on "change", ((_this) ->
        ->
          _this.saveText()
      )(this)
      @editor.on "contextmenu", ((_this) ->
        (e) ->
          offset = undefined
          if _this.editor.selectedElement()
            _this.menu = Ext.create("GSW.view.transcription.ContextMenu",
              editor: _this
            )
            offset = _this.editor.getIframeOffset()
            _this.menu.showAt offset.left + e.clientX, offset.top + e.clientY
            e.preventDefault()
      )(this)
      @editor.on "mousedown", ((_this) ->
        (e) ->
          _this.menu.close()  if _this.menu
      )(this)

    source: (s) ->
      @editor.source s

    getTeiSource: ->
      html = undefined
      html = @getSource()
      $ html

    saveText: ->
      @zone.setHtmlText @editor.getHtmlSource()  if @zone

    setZone: (zone) ->
      @zone = zone
      @source zone.getHtmlText()

    markup: (item, attrs) ->
      teiAttrs = undefined
      attrs = {}  unless attrs?
      teiAttrs = {}
      teiAttrs["type"] = item.value
      teiAttrs["class"] = "tei-element tei:" + item.value
      @editor.markup "span", teiAttrs

    ruby: (text) ->
      @editor.ruby text,
        class: "tei-element tei:ruby"


    openAnnotationDialog: ->
      Ext.Msg.alert "アノテーション対象が選択されていません"  unless @editor.selectedElement()

    onMarkupButtonPressed: (item, e) ->
      form = undefined
      console.log item
      switch item.value
        when "ruby"
          form = Ext.create("GSW.view.transcription.form.RubyForm",
            editor: this
          )
          form.show()

  return
).call this


# Ext.define 'GSW.view.transcription.TategakiEditor',
#   extend: 'Ext.panel.Panel'
#   xtype: "tategaki-editor"
#   requires: [
#     'GSW.view.transcription.form.RubyForm'
#     'GSW.view.transcription.ContextMenu'
#   ]
#   bodyBorder: false
#   layout: 'fit'
#   padding: 0
#   dockedItems: [
#     dock: 'top'
#     xtype: 'toolbar'
#     border: 1
#     style: 'background-color':"rgb(235,235,235)"
#     items: [
#       iconCls: null
#       text: 'Text'
#       xtype: 'splitbutton'
#       menu: [
#         {text: "ルビ", value: 'ruby', handler: (item,e)-> @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "追加 (add)", value: 'add', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "削除(del)", value: 'del', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "空白(gap)", value: 'gap', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "ハイライト (hi)", value: 'hi', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "不明瞭 (unclear)", value: 'unclear', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "選択肢 (choice)", value: 'choice', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "破損(damage)", value: 'damage', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#       ]
#     ,
#       iconCls: null
#       text: 'date/names'
#       xtype: 'splitbutton'
#       menu: [
#         {text: "日付 (date)", value: 'date', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "団体・組織名 (orgName)", value: 'orgName', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "人名(persName)", value: 'persName', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "役職名 (roleName)", value: 'roleName', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "場所名 (placeName)", value: 'placeName', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#         {text: "地域・地方名 (region)", value: 'region', handler: (item,e)->
#           @up("tategaki-editor").onMarkupButtonPressed(item, e)}
#       ]
#     ,
#       iconCls: null
#       text: 'misc'
#       xtype: 'splitbutton'
#       menu: [
#         {text: "リンク (link)", value: 'link'}
#         {text: "外字 (gaiji)", value:'gaiji'}
#       ]
#     ,
#       '-'
#     ,
#       iconCls: null
#       xtype: 'button'
#       text: 'Delete markup'
#     ]
#   ]

#     constructor: (config) ->
#       @callParent(arguments)

#     listeners:
#       afterrender: -> @buildEditor()
      
#     buildEditor: ->
#       iframeId= 'iframe-' + @getId()
#       @setHtml "<iframe id='#{iframeId}' width='100%' height='100%' style='border: none;'></iframe>"
#       @editor = new window.TategakiEditor(iframeId)
#       $(".tategaki-editor", @editor.doc).css("height","100%")
#       @editor.on "element:selected", ->
#       @editor.on "change", =>
#         @saveText()
#       @editor.on "contextmenu", (e)=>
#         if @editor.selectedElement()
#           @menu = Ext.create('GSW.view.transcription.ContextMenu', editor: this)
#           offset = @editor.getIframeOffset()
#           @menu.showAt(offset.left+e.clientX, offset.top+e.clientY)
#           e.preventDefault()
#       @editor.on "mousedown", (e)=>
#         @menu.close() if @menu
        
#     source: (s)->
#       @editor.source(s)

#     getTeiSource: ->
#       html = @getSource()
#       $(html)

#     saveText: ->
#       if @zone
#         @zone.setHtmlText @editor.getHtmlSource()
    
#     setZone: (zone) ->
#       @zone = zone
#       @source zone.getHtmlText()

#     markup: (item, attrs={}) ->
#       teiAttrs = {}
#       # for k,v of attrs
#       #   teiAttrs["tei:"+k] = v
#       teiAttrs["type"] = item.value
#       teiAttrs["class"] = "tei-element tei:#{item.value}"
#       @editor.markup "span", teiAttrs

#     ruby: (text) ->
#       @editor.ruby text, class: "tei-element tei:ruby"

#     openAnnotationDialog: ->
#       unless @editor.selectedElement()
#         return Ext.Msg.alert "アノテーション対象が選択されていません"
      

#     #
#     # handler for markup buttons
#     #
#     onMarkupButtonPressed: (item, e) ->
#       console.log item
#       switch item.value
#         when 'ruby'
#           form = Ext.create('GSW.view.transcription.form.RubyForm', editor: this)
#           form.show()
          
