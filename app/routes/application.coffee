ApplicationRoute = Ember.Route.extend
  beforeModel: (transition) ->
    auth = @controllerFor('authentication')
    auth.extractAccessToken()
    if not auth.get('isAuthenticated')
      transition.abort()
      auth.login()

    @store.find("office")

`export default ApplicationRoute`
