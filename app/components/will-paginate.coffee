WillPaginate = Ember.Component.extend
  data: null
  route: null

  page: Ember.computed.alias('data.meta.page')
  total: Ember.computed.alias('data.meta.total')

  showPrevious: (->
    @get('page') > 1
  ).property('page')

  showNext: (->
    @get('page') < @get('total')
  ).property('page')

  nextPage: (->
    @get('page') + 1
  ).property('page')

  previousPage: (->
    @get('page') - 1
  ).property('page')

`export default WillPaginate`
