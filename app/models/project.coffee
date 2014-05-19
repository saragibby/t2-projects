Project = DS.Model.extend
  name: DS.attr('string')
  vacation: DS.attr('boolean')
  billable: DS.attr('boolean', {defaultValue: true})
  provisional: DS.attr('boolean')

  startDate: DS.attr('date')
  endDate: DS.attr('date')
  offices: DS.hasMany('office')
  people: DS.hasMany('person')

  rates: DS.attr('rates')

`export default Project`

