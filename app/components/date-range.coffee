DateRange = Ember.Component.extend

  tagName: 'span'

  startDate: null
  endDate: null

  format: "YYYY/MM/DD"

  formattedStartDate: (->
    moment(@get('startDate')).format(@get('format')) if @get('startDate')
  ).property('startDate')

  formattedEndDate: (->
    moment(@get('endDate')).format(@get('format')) if @get('endDate')
  ).property('endDate')

`export default DateRange`
