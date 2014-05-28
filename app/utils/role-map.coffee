contentAttr = (name) ->
  ((_, v) ->
    @get('content')[name] = v if arguments.length > 1
    @get('content')[name]
  ).property()

RoleMap = Ember.ObjectProxy.extend
  developer: contentAttr('Developer')
  designer: contentAttr('Designer')
  principal: contentAttr('Principal')
  productManager: contentAttr('Product Manager')

`export default RoleMap`
