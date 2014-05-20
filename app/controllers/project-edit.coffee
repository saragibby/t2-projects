`import SelectableOffice from 't2-projects/utils/selectable-office'`

ProjectEditController = Ember.ObjectController.extend

  selectedOffices: (->
    @store.all('office').map (office) =>
      SelectableOffice.create
        project: @get('model')
        office: office
  ).property('model')

  actions:

    save: ->
      project = @get('model')
      project.save().then =>
        @transitionToRoute('project', project)

    cancel: ->
      @transitionToRoute('projects')

`export default ProjectEditController`
