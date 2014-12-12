`import SelectableOffice from 't2-projects/utils/selectable-office'`

WithSelectableOffices = Ember.Mixin.create

  selectedOffices: (->
    allOffices = @store.all('office')
    offices = allOffices.filter (office) ->
      return !office.get('deleted')

    offices.map (office) =>
      SelectableOffice.create
        project: @get('model')
        office: office
  ).property('model')

`export default WithSelectableOffices`
