`import RoleMap from 't2-projects/utils/role-map'`
`import TypicalInvoice from 't2-projects/utils/typical-invoice'`

Project = DS.Model.extend
  offices: DS.hasMany('office')
  people: DS.hasMany('person')
  sellingOffice: DS.belongsTo('office')

  startDate: DS.attr('date')
  endDate: DS.attr('date')
  name: DS.attr('string')
  vacation: DS.attr('boolean')
  billable: DS.attr('boolean', {defaultValue: true})
  provisional: DS.attr('boolean', {defaultValue: false})
  archived: DS.attr('boolean', {defaultValue: false})
  investmentFridays: DS.attr('boolean', {defaultValue: true})
  numWeeksPerInvoice: DS.attr('number', {defaultValue: 2})

  rates: DS.attr 'roleMap', defaultValue: ->
    RoleMap.create
      content:
        'Developer': 7000
        'Designer': 7000
        'Principal': 14000
        'Product Manager': 7000

  typicalCounts: DS.attr 'roleMap', defaultValue: ->
    RoleMap.create
      content:
        'Developer': 2
        'Designer': 1
        'Principal': 1
        'Product Manager': 0

  typicalAllocationPercentages: DS.attr 'roleMap', defaultValue: ->
    RoleMap.create
      content:
        'Developer': 100
        'Designer': 100
        'Principal': 50
        'Product Manager': 100

  typicalInvoice: (->
    TypicalInvoice.create(project: @)
  ).property('rates', 'typicalCounts', 'typicalAllocationPercentages')

`export default Project`

