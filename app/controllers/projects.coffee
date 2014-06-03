`import promiseAction from 't2-projects/utils/promise-action'`

ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'office_id', 'archived']
  page: 1
  office_id: null
  archived: false

  searchResults: []
  query: null

  search: promiseAction (searchTerm) ->
    @store.find('projectListItem', {search: searchTerm}).then (results) =>
      @set('searchResults', results)

  selectedFilter: (->
    @get('searchFilters').objectAt(0)
  ).property('searchFilters')

  selectedFilterObserver: (->
    param = @get('selectedFilter.param')
    value  = @get('selectedFilter.value')
    if param == 'archived'
      @transitionToRoute({queryParams: { page: 1, archived: value, office_id: null }})
    else
      @transitionToRoute({queryParams: { page: 1, archived: false, office_id: value }})
  ).observes('selectedFilter')

  searchFilters: (->
    archivedFilters = [
      Em.Object.create(label: 'Active Projects', value: false, param: 'archived')
      Em.Object.create(label: 'Archived Projects', value: true, param: 'archived')
    ]
    officeFilters = @store.all('office').map (office) ->
      Em.Object.create(label: office.get('name'), value: office.get('id'), param: 'office_id')
    archivedFilters.concat(officeFilters)
  ).property('activeFilter')

`export default ProjectsController`
