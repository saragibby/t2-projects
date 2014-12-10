`import DS from "ember-data"`
Office = DS.Model.extend
  name: DS.attr('string')
  slug: DS.attr('string')

`export default Office`

