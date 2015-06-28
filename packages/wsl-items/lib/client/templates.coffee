Template.itemsList.helpers
  items: ->
    tItems = Items.find()
    if(tItems.count() == 0)
      false
    else
      tItems

Template.item.helpers
  selectedEditItem: ->
    Session.get('selectedEditItem') == this._id

Template.itemsList.events
  'click .editItem': (e, t)->
    Session.set('selectedEditItem', this._id)
  'click .deleteItem': (e, t)->
    Meteor.call('deleteItem', this, (error, result)->
      if(error)
        console.log('Error: ' + error)
      true
    )

Template.editItem.events
  'click #cancelUpdate': (e, t)->
    Session.set('selectedEditItem', '')

Template.editItem.helpers
  doc: ->
    this