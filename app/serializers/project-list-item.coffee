`import ApplicationSerializer from 't2-projects/serializers/application'`

ProjectListItemSerializer = ApplicationSerializer.extend
  extractArray: (store, primaryType, payload, id, requestType) ->
    payload.projectListItems = payload.projects
    delete payload.projects
    @_super(store, primaryType, payload, id, requestType)

`export default ProjectListItemSerializer`
