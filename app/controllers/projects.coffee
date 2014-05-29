ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'search', 'office_id', 'show_archived']
  page: 1
  search: ''
  office_id: undefined
  show_archived: false
  _searchProxy: ''
  _officeProxy: undefined
  _archivedProxy: false

  officeObserver: (->
    @transitionToRoute({queryParams: {office_id: @get('officeProxy'), page: 1}})
  ).observes('officeProxy')

  archivedObserver: (->
    @transitionToRoute({queryParams: {page: 1, show_archived: @get('archivedProxy')}})
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
      @get('show_archived') || @_archivedProxy
  ).property('show_archived')

  actions:

    search: ->
      @transitionToRoute({queryParams: {search: @get('searchProxy'), page: 1}})

`export default ProjectsController`
