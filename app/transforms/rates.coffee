Rates = Ember.Object.extend
  developer: (-> @['Developer']).property()
  designer: (-> @['Designer']).property()
  principal: (-> @['Principal']).property()
  productManager: (-> @['Product Manager']).property()

RatesTransform = DS.Transform.extend
  serialize: (object) ->
    JSON.stringify(object)

  deserialize: (json) ->
    Rates.create(json)

`export default RatesTransform`


