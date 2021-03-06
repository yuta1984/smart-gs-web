// Generated by CoffeeScript 1.8.0
(function() {
  Ext.define('GSW.view.transcription.state.DefaultState', {
    constructor: function(config) {
      if (!config.canvas) {
        Ext.Error.raise({
          msg: "canvas component not given"
        });
      }
      this.canvas = config.canvas;
      return this.callParent(config);
    },
    onSwitchState: function() {
      this.grabMode = false;
      return this.currentPos = null;
    },
    mouseup: function(event) {
      return this.grabMode = false;
    },
    mousedown: function(event) {
      if (!this.canvas.c.getActiveObject()) {
        this.grabMode = true;
        return this.currentPos = {
          x: event.e.offsetX,
          y: event.e.offsetY
        };
      }
    },
    mousemove: function(event) {
      var delta, nextPos;
      if (this.grabMode) {
        nextPos = {
          x: event.e.offsetX,
          y: event.e.offsetY
        };
        delta = {
          x: this.currentPos.x - nextPos.x,
          y: this.currentPos.y - nextPos.y
        };
        this.canvas.moveViewportBy(delta);
        return this.currentPos = nextPos;
      }
    },
    mousewheel: function(event) {
      var delta;
      delta = event.originalEvent.wheelDelta / 1500;
      this.canvas.setZoom(this.canvas.zoom + delta);
      event.stopPropagation();
      return event.preventDefault();
    },
    mouseout: function(event) {
      return this.grabMode = false;
    }
  });

}).call(this);
