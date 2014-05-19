`import Rates from 't2-projects/utils/rates'`

RatesTransform = DS.Transform.extend
  serialize: (object) ->
    object.get("content")

  deserialize: (json) ->
    Rates.create(content: json)

`export default RatesTransform`


