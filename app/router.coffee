`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'sign_out'
  @resource 'projects-new', path: 'projects/new'
  @resource 'projects'
  @resource 'project-edit', path: 'projects/:project_id/edit'
  @resource 'project', path: 'projects/:project_id'

`export default Router`
