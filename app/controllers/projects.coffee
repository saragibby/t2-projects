`import promiseAction from 't2-projects/utils/promise-action'`
`import ENV from "t2-projects/config/environment";`

ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'office_id', 'archived']
  page: 1
  office_id: null
  archived: false

  searchResults: []
  query: null

  apiHost: (->
    ENV.apiHost
  ).property()

  # Search
  #
  search: promiseAction (searchTerm) ->
    @store.find('projectListItem', {search: searchTerm}).then (results) =>
      @set('searchResults', results)

  # Filter selection
  #
  selectedFilter: (->
    @get('searchFilters').objectAt(0)
  ).property('searchFilters')

  searchFilters: (->
    @get('archivedFilters').concat(@get('officeFilters'))
  ).property('archivedFilters', 'officeFilters')

  filterSelectedObserver: (->
    @transitionToRoute(queryParams: @get('selectedFilter.queryParams'))
  ).observes('selectedFilter')


  # Filters
  #
  officeFilters: (->
    @store.all('office').map (office) ->
      Em.Object.create
        label: office.get('name')
        value: office.get('id')
        queryParams: { page: 1, archived: false, office_id: office.get('id') }
  ).property()

  archivedFilters: (->
    active = Em.Object.create
      label: 'Active Projects'
      value: false
      queryParams: { page: 1, archived: false, office_id: null }
    archived = Em.Object.create
      label: 'Archived Projects'
      value: true
      queryParams: { page: 1, archived: true, office_id: null }

    [active, archived]
  ).property()


`export default ProjectsController`
