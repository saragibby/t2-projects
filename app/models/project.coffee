`import DS from "ember-data"`
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
  investmentFridays: DS.attr('boolean', {defaultValue: true})

  rates: DS.attr 'roleMap', defaultValue: ->
    RoleMap.create
      content:
        'Developer': 7000
        'Designer': 7000
        'Principal': 14000
        'Product Manager': 7000

  typicalInvoice: (->
    TypicalInvoice.create(project: @)
  ).property('rates')

`export default Project`
