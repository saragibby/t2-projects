import Resolver from 'ember/resolver';
import loadInitializers from 'ember/load-initializers';

Ember.MODEL_FACTORY_INJECTIONS = true;

var App = Ember.Application.extend({
  modulePrefix: 't2-projects', // TODO: loaded via config
  Resolver: Resolver
});

loadInitializers(App, 't2-projects');

export default App;
