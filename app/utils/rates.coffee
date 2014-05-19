contentAttr = (name) ->
  ((_, v) ->
    @get('content')[name] = v if arguments.length > 1
    @get('content')[name]
  ).property()

Rates = Ember.ObjectProxy.extend
  developer: contentAttr('Developer')
  designer: (-> @content['Designer']).property()
  principal: (-> @content['Principal']).property()
  productManager: (-> @content['Product Manager']).property()

`export default Rates`
