Router = Ember.Router.extend()

Router.map ->
  @route 'sign_out'
  @resource 'projects'
  @resource 'project', path: 'projects/:project_id'
  @resource 'project-edit', path: 'projects/:project_id/edit'


`export default Router`

