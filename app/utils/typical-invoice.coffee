`import InvoiceLine from 't2-projects/utils/invoice-line'`

invoiceKeys = [ 'developer.biweeklyInvoice', 'designer.biweeklyInvoice', 'principal.biweeklyInvoice', 'productManager.biweeklyInvoice']

TypicalInvoice = Ember.Object.extend
  project: null

  developer: (->
    InvoiceLine.create(project: @get('project'), key: 'developer')
  ).property('project')

  designer: (->
    InvoiceLine.create(project: @get('project'), key: 'designer')
  ).property('project')

  principal: (->
    InvoiceLine.create(project: @get('project'), key: 'principal')
  ).property('project')

  productManager: (->
    InvoiceLine.create(project: @get('project'), key: 'productManager')
  ).property('project')

  total: (->
    amounts = @getProperties(invoiceKeys...)
    total = 0.0
    for key in invoiceKeys
      total += amounts[key]
    total
  ).property(invoiceKeys...)

`export default TypicalInvoice`
