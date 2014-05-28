InvoiceLine = Ember.Object.extend
  project: null
  key: ''

  investmentFridays: Ember.computed.alias('project.investmentFridays')
  numWeeksPerInvoice: Ember.computed.alias('project.numWeeksPerInvoice')

  rate: ((_, value) ->
    property = "project.rates.#{@get('key')}"
    if arguments.length > 1
      @set(property, value)
    @get(property)
  ).property('project.rates', 'key')

  allocationPercent: ((_, value) ->
    property = "project.typicalAllocationPercentages.#{@get('key')}"
    if arguments.length > 1
      @set(property, value)
    @get(property)
  ).property('project.typicalAllocationPercentages', 'key')

  count: ((_, value) ->
    property = "project.typicalCounts.#{@get('key')}"
    if arguments.length > 1
      @set(property, value)
    @get(property)
  ).property('project.typicalCounts', 'key')

  equivalentDayRate: (->
    rate = @get('rate')
    return 0.0 unless rate
    if @get('investmentFridays')
      rate / 4.0
    else
      rate / 5.0
  ).property('rate', 'investmentFridays')

  equivalentHourlyRate: (->
    (@get('equivalentDayRate') / 8.0) || 0.0
  ).property('equivalentDayRate')

  perInvoice: (->
    value = @get('numWeeksPerInvoice')*@get('rate')*@get('count')*@get('allocationPercent') / 100.0
    value || 0.0
  ).property('rate', 'count', 'allocationPercent', 'numWeeksPerInvoice')


`export default InvoiceLine`
