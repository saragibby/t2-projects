SelectableOffice = Ember.Object.extend
  project: null
  office: null

  name: (->
    @get('office.name')
  ).property('office.name')

  selected: ((_, selected) ->
    offices = @get('project.offices')
    office = @get('office')
    if arguments.length > 1
      if selected
        offices.addObject(office)
      else
        offices.removeObject(office)
    else
      offices.contains(office)
  ).property().volatile()


`export default SelectableOffice`
