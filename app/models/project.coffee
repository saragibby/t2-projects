`import Rates from 't2-projects/utils/rates'`

Project = DS.Model.extend
  name: DS.attr('string')
  vacation: DS.attr('boolean')
  billable: DS.attr('boolean', {defaultValue: true})
  provisional: DS.attr('boolean')
  investmentFridays: DS.attr('boolean')

  startDate: DS.attr('date')
  endDate: DS.attr('date')
  offices: DS.hasMany('office')
  people: DS.hasMany('person')

  rates: DS.attr('rates', defaultValue: (-> Rates.create(content:{})))

`export default Project`

