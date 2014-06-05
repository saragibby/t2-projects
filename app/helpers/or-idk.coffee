OrIdk = Ember.Handlebars.makeBoundHelper (val) ->
  if val
    val
  else
    new Handlebars.SafeString("???")

`export default OrIdk`
