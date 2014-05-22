`import WithSelectableOffices from 't2-projects/mixins/with-selectable-offices'`

ProjectsNewController = Ember.ObjectController.extend WithSelectableOffices,

  actions:

    save: ->
      project = @get('model')
      project.save().then(=>
        @transitionToRoute('project', project)
      ).catch((error) ->)


    cancel: ->
      @transitionToRoute('projects')

`export default ProjectsNewController`
