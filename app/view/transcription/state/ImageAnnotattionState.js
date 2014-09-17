// Generated by CoffeeScript 1.8.0
(function() {
  Ext.define('GSW.view.transcription.state.ImageAnnotationState', {
    extend: 'GSW.view.transcription.state.DefaultState',
    requires: ['GSW.model.ImageAnnotation', 'GSW.view.transcription.ImageAnnotationPanel'],
    onSwitchState: function() {
      this.drawMode = false;
      this.origin = null;
      return this.rect = null;
    },
    mousedown: function(event) {
      var model, options;
      if (!this.drawMode) {
        this.drawMode = true;
        this.origin = this.canvas.c.getPointer(event.e);
        model = Ext.create('GSW.model.ImageAnnotation');
        options = {
          width: 0,
          height: 0,
          left: this.origin.x,
          top: this.origin.y,
          canvas: this.canvas.c
        };
        this.rect = new fabric.AnnotationRect(options);
        this.panel = Ext.create('GSW.view.transcription.ImageAnnotationPanel', {
          target: this.rect,
          canvas: this.canvas,
          model: model
        });
        this.canvas.c.add(this.rect);
        return this.canvas.c.renderAll();
      }
    },
    mousemove: function(event) {
      var h, mouse, w;
      if (this.drawMode) {
        mouse = this.canvas.c.getPointer(event.e);
        w = Math.abs(mouse.x - this.origin.x);
        h = Math.abs(mouse.y - this.origin.y);
        this.rect.set("width", w).set("height", h);
        return this.canvas.c.renderAll();
      }
    },
    mouseout: function(event) {
      return this._onZoneCreated(event);
    },
    mouseup: function(event) {
      return this._onZoneCreated(event);
    },
    _onZoneCreated: function(event) {
      this.drowMode = false;
      this.rect = null;
      this.panel.showPanel();
      return this.canvas.resetState();
    },
    showAnnotationPanel: function(rect) {},
    hideAnnotationPanel: function(rect) {}
  });

}).call(this);
