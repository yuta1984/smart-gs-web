// Generated by CoffeeScript 1.8.0
(function() {
  Ext.define('GSW.model.ImageAnnotation', {
    extend: 'GSW.model.AbstractAnnotation',
    fields: [
      {
        name: 'x',
        type: 'int'
      }, {
        name: 'y',
        type: 'int'
      }, {
        name: 'w',
        type: 'int'
      }, {
        name: 'h',
        type: 'int'
      }
    ],
    getBodyType: function() {
      return "text/plain";
    },
    getTargetURI: function() {
      return "http://yuta1984.github.io/images/ansei_jou/ansei_jou_03.jpg";
    },
    getTargetType: function() {
      return "image";
    },
    getMotivation: function() {
      return "commenting";
    },
    toTriples: function() {
      var triples;
      triples = this.callSuper();
      triples.push([this.getTargetURI(), this.p("rdf", "type"), this.p("dctypes", "Image")]);
      return triples;
    },
    update: function(rect) {
      this.set('x', rect.getLeft());
      this.set('y', rect.getTop());
      this.set('w', rect.getWidth());
      return this.set('h', rect.getHeight());
    }
  });

}).call(this);
