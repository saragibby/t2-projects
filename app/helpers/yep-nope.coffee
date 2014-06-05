YepNope = Ember.Handlebars.makeBoundHelper (val) ->
  if val
    new Handlebars.SafeString("Yes")
  else
    new Handlebars.SafeString("No")

`export default YepNope`

