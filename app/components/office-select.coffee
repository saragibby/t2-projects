OfficeSelect = Ember.Select.extend

  content: (->
    @get('parentView.controller.store').all('office')
  ).property()

  optionLabelPath: "content.name"
  optionValuePath: "content.id"

`export default OfficeSelect`
