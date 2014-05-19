ProjectEditRoute = Ember.Route.extend

  actions:
    willTransition: (transition) ->
      model = @get('currentModel')
      if model && model.get('isDirty')
        if confirm("You have unsaved changes. Click OK to stay on the current page. Click cancel to discard these changes and move to the requested page.")
          transition.abort()
        else
          model.rollback()

`export default ProjectEditRoute`
