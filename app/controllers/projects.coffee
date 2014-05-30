`import SearchFilter from 't2-projects/utils/search-filter'`

ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'search', 'office_id', 'archived']

  page: 1
  search: ''
  office_id: undefined
  archived: false

  _searchProxy: ''
  _officeProxy: undefined
  _archivedProxy: false

  officeObserver: (->
    @transitionToRoute({queryParams: {office_id: @get('officeProxy'), page: 1}})
  ).observes('officeProxy')

  archivedObserver: (->
    @transitionToRoute({queryParams: {page: 1, archived: @get('archivedProxy')}})
  ).observes('archivedProxy')

  searchProxy: ((key, value, oldValue) ->
    if arguments.length > 1
      @_searchProxy = value
    else
      @get('search') || @_searchProxy
  ).property('search')

  officeProxy: ((key, value, oldValue) ->
    if arguments.length > 1
      @_officeProxy = value
    else
      @get('office_id') || @_officeProxy
  ).property('office_id')

  archivedProxy: ((key, value, oldValue) ->
    if arguments.length > 1
      @_archivedProxy = value
    else
      @get('archived') || @_archivedProxy
  ).property('archived')

  searchFilters: (->
    archivedFilters = [
      SearchFilter.create(label: 'Active Projects', value: false, param: 'archivedProxy'),
      SearchFilter.create(label: 'Archived Projects', value: true, param: 'archivedProxy')
    ]
    officeFilters = @store.all('office').map (office) ->
      SearchFilter.create(label: office.get('name'), value: office.get('id'), param: 'officeProxy')
    archivedFilters.concat(officeFilters)
  ).property()

  actions:

    search: ->
      @transitionToRoute({queryParams: {search: @get('searchProxy'), page: 1}})

    updateFilter: (selection) ->
      console.log(selection)


`export default ProjectsController`
