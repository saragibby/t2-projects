`import DS from "ember-data"`
ProjectListItem = DS.Model.extend
  sellingOffice: DS.belongsTo('office')
  offices: DS.hasMany('office')

  name: DS.attr('string')
  startDate: DS.attr('date')
  endDate: DS.attr('date')
  investmentFridays: DS.attr('boolean')
  provisional: DS.attr('boolean')

`export default ProjectListItem`
