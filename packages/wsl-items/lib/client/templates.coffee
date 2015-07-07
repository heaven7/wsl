Template.itemsList.helpers
  items: ->
    tItems = Items.find()
    if(tItems.count() == 0)
      false
    else
      tItems

Template.itemsList.events
  'click .editItem': (e, t)->
    Session.set('selectedItem', this._id)
  'click .deleteItem': (e, t)->
    Meteor.call('deleteItem', this, (error, result)->
      if(error)
        console.log('Error: ' + error)
      true
    )

Template.insertItemForm.helpers
  id: ->
    Meteor.userId()
  docType: ->
    'User'
  currentUser: ->
    Meteor.users.find({_id: Meteor.userId()})

Template.editItemForm.helpers
  doc: ->
    this
  id: ->
    Meteor.userId()
  docType: ->
    'User'
  itemUsers:
    Meteor.users.find().fetch()

Template.editItemForm.events
  'click #cancelUpdate': (e, t)->
    Session.set('selectedItem', '')
  'doc': ->
    this

Template.item.helpers
  selectedItem: ->
    Session.get('selectedItem') == this._id