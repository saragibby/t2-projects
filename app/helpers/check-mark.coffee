CheckMark = Ember.Handlebars.makeBoundHelper (val) ->
  new Handlebars.SafeString("&#10003;") if val

`export default CheckMark`

