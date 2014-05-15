/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');
var fileMover = require('broccoli-file-mover');

var vendorTree = fileMover('vendor', {
  files: {
    'ember/index.js': 'ember/ember.js',
    'ember-prod/index.js': 'ember/ember.prod.js',
  }
});

var app = new EmberApp({
  name: require('./package.json').name,
  trees: {
    vendor: vendorTree
  },
  getEnvJSON: require('./config/environment')
});

// Use this to add additional libraries to the generated output files.
//
// JS
app.import('vendor/ember-data/ember-data.js');
app.import('vendor/moment/moment.js');
app.import('vendor/pikaday/pikaday.js');

// CSS
app.import('vendor/pikaday/css/pikaday.css');

// If the library that you are including contains AMD or ES6 modules that
// you would like to import into your application please specify an
// object with the list of modules as keys along with the exports of each
// module as its value.
app.import('vendor/ic-ajax/dist/named-amd/main.js', {
  'ic-ajax': [
    'default',
    'defineFixture',
    'lookupFixture',
    'raw',
    'request',
  ]
});


module.exports = app.toTree();
