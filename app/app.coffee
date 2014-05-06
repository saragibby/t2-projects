`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`

Ember.MODEL_FACTORY_INJECTIONS = true

App = Ember.Application.extend
  modulePrefix : 't2-projects'
  Resolver     : Resolver

loadInitializers(App, 't2-projects')

`export default App`
