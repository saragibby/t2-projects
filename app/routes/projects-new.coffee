ProjectsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('project')

  actions:

    willTransition: (transition) ->
      model = @get('currentModel')
      if model && model.get('isDirty')
        if confirm("You have unsaved changes. Click OK to stay on the current page. Click cancel to discard these changes and move to the requested page.")
          transition.abort()
        else
          @store.unloadRecord(model)

`export default ProjectsNewRoute`
