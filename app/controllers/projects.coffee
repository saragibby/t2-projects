ProjectsController = Ember.ArrayController.extend
  queryParams: ['page', 'search']
  page: 1
  search: ''
  _searchProxy: ''

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
