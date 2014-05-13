ProjectsRoute = Ember.Route.extend
  queryParams:
    search:
      refreshModel: true
    page:
      refreshModel: true

  model: (params) ->
    @store.find('projectListItem', params)

`export default ProjectsRoute`
