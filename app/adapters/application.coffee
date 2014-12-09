`import DS from "ember-data";`
`import ENV from "t2-projects/config/environment";`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'
  host: ENV.apiHost

`export default ApplicationAdapter;`
