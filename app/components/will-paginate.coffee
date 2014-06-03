WillPaginate = Ember.Component.extend
  tagName: 'nav'
  classNames: 'will-paginate'
  data: null
  route: null

  page: Ember.computed.alias('data.meta.page')
  total: Ember.computed.alias('data.meta.total')

  displayMeta: (->
    @get('total') > 1
  ).property('total')

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
