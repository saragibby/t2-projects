EditDateComponent = Ember.TextField.extend
  classNames: ["datepicker"]
  readonly: true

  didInsertElement: ->
    currentYear = (new Date()).getFullYear()
    value = @get('value') # picker will eat it
    picker = new Pikaday
      field: @$()[0]
      format: 'YYYY-MM-DD'
      yearRange: [currentYear-3, currentYear+3]
    picker.setMoment(value)

`export default EditDateComponent`
