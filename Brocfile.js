/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

// Use this to add additional libraries to the generated output files.
//
// JS
app.import('bower_components/moment/moment.js');
app.import('bower_components/pikaday/pikaday.js');
app.import('bower_components/spin.js/spin.js');


// CSS
app.import('bower_components/pikaday/css/pikaday.css');

// If the library that you are including contains AMD or ES6 modules that
// you would like to import into your application please specify an
// object with the list of modules as keys along with the exports of each
// module as its value.
app.import('bower_components/ic-ajax/dist/named-amd/main.js', {
  'ic-ajax': [
    'default',
    'defineFixture',
    'lookupFixture',
    'raw',
    'request',
  ]
});


module.exports = app.toTree();
