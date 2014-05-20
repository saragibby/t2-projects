`import SelectableOffice from 't2-projects/utils/selectable-office'`

WithSelectableOffices = Ember.Mixin.create

  selectedOffices: (->
    @store.all('office').map (office) =>
      SelectableOffice.create
        project: @get('model')
        office: office
  ).property('model')

`export default WithSelectableOffices`
