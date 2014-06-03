ProjectsRoute = Ember.Route.extend
  queryParams:
    page:
      refreshModel: true
    office_id:
      refreshModel: true
    archived:
      refreshModel: true

  model: (params) ->
    # TODO: Remove when fixed. (PR #4571)
    newParams = {}
    newParams[key] = value for key, value of params when value != "null" && value != "undefined"
    @store.find('projectListItem', newParams)

`export default ProjectsRoute`
