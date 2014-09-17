Ext.define 'GSW.model.Surface',
  extend: 'GSW.model.Base'
  fields: [
    {name: 'imageURI', type: 'string', defaultValue: ''}
  ]

  hasMany: 'Zone'
  hasMany: 'ImageAnnotation'

  getImageURI: ->
    @get('imageURI')
