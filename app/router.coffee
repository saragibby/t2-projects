Router = Ember.Router.extend()

Router.map ->
  @route('sign_out')
  @resource 'projects-new', path: 'projects/new'
  @resource 'projects'
  @resource 'project-edit', path: 'projects/:project_id/edit'
  @resource 'project', path: 'projects/:project_id'

IndexRoute = Ember.Route.extend
  afterModel: (model, transition) ->
    office_slug = @controllerFor('authentication').get('currentUser').office_slug
    @transitionTo('projects', moment().format("YYYY-MM-DD"), office_slug)


`export default Router`

