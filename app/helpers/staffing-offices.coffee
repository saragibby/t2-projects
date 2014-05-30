# TODO: Maybe do this on server? Doing it here because I'm not sure this column will stick around...
#
officeNamesWithoutArchived = (offices = []) ->
  offices.sortBy('name').mapProperty('name').filter((name) -> name isnt 'Archived')

StaffingOffices = Ember.Handlebars.makeBoundHelper (project) ->
  officeNames = officeNamesWithoutArchived(project.get('offices'))
  allOfficeNames = officeNamesWithoutArchived(@store.get('office'))

  if officeNames.length == 0
    new Handlebars.SafeString("None")
  else if officeNames == allOfficeNames
    new Handlebars.SafeString("All")
  else
    new Handlebars.SafeString(officeNames.join('<br/>'))

`export default StaffingOffices`
