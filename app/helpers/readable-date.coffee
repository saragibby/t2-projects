ReadableDate = Ember.Handlebars.makeBoundHelper (date) ->
  moment(date).format('MMM Do YYYY') if date

`export default ReadableDate`

