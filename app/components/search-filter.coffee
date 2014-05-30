SearchFilter = Ember.Select.extend

  content: []
  optionLabelPath: 'content.label'
  optionValuePath: 'content.value'

  boosh: (->
    console.log(@get('selection'))
    debugger
    @sendAction()
  ).observes('selection')

`export default SearchFilter`
