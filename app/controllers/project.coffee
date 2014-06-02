ProjectController = Ember.ObjectController.extend

  actions:

    archive: ->
      project = @get('model')
      project.set('endDate', moment.utc())
      project.save()

    unarchive: ->
      project = @get('model')
      project.set('endDate', null)
      project.save()


`export default ProjectController`
