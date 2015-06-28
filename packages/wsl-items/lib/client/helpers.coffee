Meteor.subscribe('items')

AutoForm.hooks insertItemForm:
  before:
    method: (doc)->
      console.log('Method calling')
      Schemas.Items.clean(doc);
      Meteor.call('newItem', doc, (error)->
        console.log('Method calling')
        if(error)
          console.log("Method-Error: " + error)
      )
      @done()
      false
  onError: (insert, error, template) ->
    console.log error

  onSuccess: (insert, doc)->
    console.log("Form submitted onSuccess " + doc)



