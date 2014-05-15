ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'search', 'office_id']
  page: 1
  search: ''
  _searchProxy: ''
  office_id: undefined

  searchObserver: (->
    Ember.run.debounce(=>
      @transitionToRoute({queryParams: {search: @get('searchProxy'), page: 1}})
    , 1000)
  ).observes('searchProxy')

  searchProxy: ((key, value, oldValue) ->
    if arguments.length > 1
      @_searchProxy = value
    else
      @get('search') || @_searchProxy
  ).property('search')

`export default ProjectsController`
