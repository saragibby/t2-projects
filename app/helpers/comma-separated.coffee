CommaSeparated = Ember.Handlebars.makeBoundHelper (collection, key) ->
  list = collection.map (item) ->
    item.get(key)
  new Handlebars.SafeString(list.join(", "))

`export default CommaSeparated`
