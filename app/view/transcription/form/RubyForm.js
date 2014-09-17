// Generated by CoffeeScript 1.7.1
(function() {
  Ext.define('GSW.view.transcription.form.RubyForm', {
    extend: 'GSW.view.transcription.form.AbstractMarkupForm',
    xtype: 'ruby-form',
    title: 'ルビを追加',
    items: [
      {
        xtype: 'fieldset',
        defaultType: 'textfield',
        defaults: {
          anchor: '100%'
        },
        items: [
          {
            allowBlank: false,
            fieldLabel: 'ルビ文字',
            name: 'text',
            emptyText: 'るび'
          }
        ]
      }
    ],
    register: function() {
      var e;
      try {
        return this.editor.ruby(this.getValues().text);
      } catch (_error) {
        e = _error;
        return this.notifySelectionError();
      } finally {
        this.close();
      }
    }
  });

}).call(this);