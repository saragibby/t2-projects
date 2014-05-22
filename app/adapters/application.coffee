ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'
  host: window.ENV.apiHost

`export default ApplicationAdapter`
