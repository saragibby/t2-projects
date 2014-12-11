OfficeSelect = Ember.Select.extend

  content: (->
    @get('parentView.controller.store').all('office').filter (office) ->
      return !office.get('deleted')
  ).property()

  optionLabelPath: "content.name"
  optionValuePath: "content.id"

`export default OfficeSelect`
