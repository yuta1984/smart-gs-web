Ext.define 'GSW.model.ImageAnnotation',
  extend: 'GSW.model.AbstractAnnotation'
  fields: [
    {name: 'x', type: 'int'}
    {name: 'y', type: 'int'}
    {name: 'w', type: 'int'}
    {name: 'h', type: 'int'}    
  ]

  getBodyType: ->
    "text/plain"

  getTargetURI: ->
    @getSurface().getImageURI()

  getTargetType: ->
    "Image"
  
  getMotivation: ->
    "commenting"

  toTriples: ->
    triples = @callSuper()
    # target desc
    triples.push [@getTargetURI(), @p("rdf","type"), @p("dctypes", "Image")]
    triples
    
  
  update: (rect)->
    @set 'x', rect.getLeft()
    @set 'y', rect.getTop()
    @set 'w', rect.getWidth()
    @set 'h', rect.getHeight()

