ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'search', 'office_id']
  page: 1
  search: ''
  office_id: undefined
  _searchProxy: ''
  _officeProxy: undefined

  searchObserver: (->
    Ember.run.debounce(=>
      @transitionToRoute({queryParams: {search: @get('searchProxy'), page: 1}})
    , 1000)
  ).observes('searchProxy')

  officeObserver: (->
    @transitionToRoute({queryParams: {office_id: @get('officeProxy'), page: 1}})
  ).observes('officeProxy')

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

`export default ProjectsController`
