IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo('projects')

`export default IndexRoute`
