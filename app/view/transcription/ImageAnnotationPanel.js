// Generated by CoffeeScript 1.8.0
(function() {
  Ext.define('GSW.view.transcription.ImageAnnotationPanel', {
    extend: 'Ext.panel.Panel',
    xtype: 'image-annnotation-panel',
    width: 350,
    height: 120,
    floating: true,
    html: '<div class="annotation-comment">\n  <textarea class="annotation-textarea" placeholder="Add a comment (word with leading \'#\' will be recognized as a tag e.g. #kyoto-school）" ></textarea>\n</div>\n<div class="buttons">\n  <a href="#" class="annotation-button save">Save</a>\n  <a href="#" class="annotation-button cancel">Cancel</a>     \n</div>      ',
    hidden: true,
    cls: 'image-annotation-panel',
    style: {
      "border-radius": "8px"
    },
    constructor: function(config) {
      this.callParent(config);
      this.target = config.target;
      this.canvas = config.canvas;
      this.model = config.model;
      this.target.on("mouseover", (function(_this) {
        return function() {
          return _this.showPanel();
        };
      })(this));
      this.target.on("mouseout", (function(_this) {
        return function() {
          return _this.startHideTimer();
        };
      })(this));
      return this;
    },
    listeners: {
      afterrender: function(container) {
        return container.getEl().on("click", (function(_this) {
          return function(e, elem) {
            switch (elem.className) {
              case "annotation-button save":
                _this.model.set('x', _this.target.getLeft());
                _this.model.set('y', _this.target.getTop());
                _this.model.set('w', _this.target.getWidth());
                _this.model.set('h', _this.target.getHeight());
                _this.model.set('target_uri', _this.canvas.surf.get('uri'));
                _this.canvas.surf.get('annotations').push(_this.model);
                return container.close();
              case "annotation-button cancel":
                container.canvas.c.remove(container.target);
                container.canvas.c.renderAll();
                return container.close();
            }
          };
        })(this));
      }
    },
    startHideTimer: function() {
      var hidePanel;
      hidePanel = (function(_this) {
        return function() {
          return _this.hidePanel();
        };
      })(this);
      return this.timer = window.setTimeout(hidePanel, 500);
    },
    showPanel: function() {
      var el, origin, rightCenter;
      if (this.timer) {
        window.clearTimeout(this.timer);
      }
      rightCenter = this.target.getRightCenter();
      origin = this.canvas.translateToAbsolutePoint(rightCenter);
      this.setPosition(origin.x + 12, origin.y - 50);
      this.show(true);
      el = this.getEl();
      el.setOpacity(0);
      el.setOpacity(1, {
        duration: 300,
        easing: 'ease-in'
      });
      this.getEl().hover((function(_this) {
        return function() {
          if (_this.timer) {
            return window.clearTimeout(_this.timer);
          }
        };
      })(this));
      return $(this.getEl().query("textarea")[0]).focus();
    },
    hidePanel: function() {
      return this.getEl().setOpacity(0, {
        duration: 300,
        easing: 'ease-in',
        afteranimate: (function(_this) {
          return function() {
            return _this.hide();
          };
        })(this)
      });
    }
  });

}).call(this);
