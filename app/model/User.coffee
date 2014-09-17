Ext.define 'GSW.model.User',
  extend: 'GSW.model.Base'
  fields: [
    {name: 'name', type: 'string', defaultValue: ''}    
  ]

  hasMay: ['TextAnnotation','ImageAnnotation']

  getName: ->
    @get('name')
