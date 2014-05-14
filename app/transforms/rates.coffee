Rates = Ember.ObjectProxy.extend
  developer: (-> @content['Developer']).property()
  designer: (-> @content['Designer']).property()
  principal: (-> @content['Principal']).property()
  productManager: (-> @content['Product Manager']).property()

RatesTransform = DS.Transform.extend
  serialize: (object) ->
    JSON.stringify(object.get("content"))

  deserialize: (json) ->
    Rates.create(content: json)

`export default RatesTransform`


