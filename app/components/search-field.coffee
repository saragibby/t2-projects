SearchField = Ember.Component.extend

  classNames: "search-field"

  # Required
  #
  query: null
  results: []

  # Override defaults
  #
  placeholder: 'Search'
  isSearching: false
  debounce: 1000
  requiredLength: 2

  blankQuery: Ember.computed.empty('query')

  validQuery: (->
    @get('query.length') >= @get('requiredLength')
  ).property('query', 'requiredLength')

  queryObserver: (->
    if @get('blankQuery')
      @set('results', [])
    else
      if @get('validQuery')
        @set('isSearching', true)
        searchFunc = (=>
          @search(@get('query')).finally => @set('isSearching', false)
        )
        Ember.run.debounce(@, searchFunc, @get('debounce'))
  ).observes('query', 'blankQuery', 'validQuery', 'debounce')

`export default SearchField`
