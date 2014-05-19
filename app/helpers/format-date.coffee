FormatDate = Ember.Handlebars.makeBoundHelper (date) ->
  moment(date).format('YYYY/MM/DD') if date

`export default FormatDate`

