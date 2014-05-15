ProjectEditController = Ember.ObjectController.extend

  offices: ->
    @store.all('office')


`export default ProjectEditController`
