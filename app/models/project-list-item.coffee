ProjectListItem = DS.Model.extend
  name: DS.attr('string')
  startDate: DS.attr('date')
  endDate: DS.attr('date')
  sellingOffice: DS.belongsTo('office')

`export default ProjectListItem`
