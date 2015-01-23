`import WithSelectableOffices from 't2-projects/mixins/with-selectable-offices'`

ProjectEditController = Ember.ObjectController.extend WithSelectableOffices,

  actions:

    save: ->
      project = @get('model')
      project.save().then(=>
        @transitionToRoute('projects')
      ).catch((error) ->)

    cancel: ->
      @transitionToRoute('projects')

`export default ProjectEditController`
