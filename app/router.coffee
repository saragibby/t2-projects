Router = Ember.Router.extend()

Router.map ->
  @route 'sign_out'
  @resource 'projects-new', path: 'projects/new'
  @resource 'projects'
  @resource 'project-edit', path: 'projects/:project_id/edit'
  @resource 'project', path: 'projects/:project_id'


`export default Router`

