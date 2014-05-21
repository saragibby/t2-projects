InvoiceLine = Ember.Object.extend
  project: null

  key: ''
  allocationPercent: 100
  count: 1

  investmentFridays: Ember.computed.alias('project.investmentFridays')

  rate: ((_, value) ->
    property = "project.rates.#{@get('key')}"
    if arguments.length > 1
      @set(property, value)
    @get(property)
  ).property('project.rates', 'key')

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

  biweeklyInvoice: (->
    value = 2.0*@get('rate')*@get('count')*@get('allocationPercent') / 100.0
    value || 0.0
  ).property('rate', 'count', 'allocationPercent')


`export default InvoiceLine`
