`import SelectableOffice from 't2-projects/utils/selectable-office'`

ProjectEditController = Ember.ObjectController.extend

  selectedOffices: (->
    selectedOfficeIds = @get('model.offices').mapProperty('id')
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

`export default ProjectEditController`
