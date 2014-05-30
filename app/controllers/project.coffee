ProjectController = Ember.ObjectController.extend

  actions:

    toggleArchived: ->
      project = @get('model')
      project.set('archived', !project.get('archived'))
      project.save()

`export default ProjectController`
