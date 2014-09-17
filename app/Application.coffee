###*
The main application class. An instance of this class is created by app.js when it calls
Ext.application(). This is the ideal place to handle application launch and initialization
details.
###
Ext.define "GSW.Application",
  extend: "Ext.app.Application"
  name: "GSW"
  stores: [
    "GSW.store.ResourceStore"
    "GSW.store.UserStore"
  ]
  models: [
    "GSW.model.User"    
    "GSW.model.Surface"
    "GSW.model.Zone"
    "GSW.model.AbstractAnnotation"
    "GSW.model.ImageAnnotation"
    "GSW.model.TextAnnotation"        
  ]
  launch: ->    
    window.initialize = ->
    @loadGoogleMap()

  loadGoogleMap: ->
    # opts =
    #   zoom: 3
    #   mapTypeId: google.maps.MapTypeId.ROADMAP
    #   center: new google.maps.LatLng(0.0, 0.0)
    #   mapTypeId: google.maps.MapTypeId.ROADMAP
    script = document.createElement('script')      
    script.type = 'text/javascript'
    script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&callback=initialize'
    document.body.appendChild(script)

