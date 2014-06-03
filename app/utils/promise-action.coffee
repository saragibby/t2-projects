# Stolen, with love, from: http://discuss.emberjs.com/t/sendaction-as-a-promise/3143
#
promiseActionComputedProperty = (fn) ->
  Ember.computed ->
    self = this
    ->
      args = arguments
      new Ember.RSVP.Promise((resolve) ->
        resolve fn.apply(self, args)
        return
      )

`export default promiseActionComputedProperty`
