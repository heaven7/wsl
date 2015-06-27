@Schemas = {}
Schemas.Items = new SimpleSchema
  doc:
    type: String
    regEx: SimpleSchema.RegEx.Id

  docType:
    type: String

  owner:
    type: String
    regEx: SimpleSchema.RegEx.Id
    autoform:
      options: ->
        _.map Meteor.users.find().fetch(), (user)->
          label: user.emails[0].address
          value: user._id

  createdAt:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date()

  title:
    type: String

  description:
    type: String

  need:
    type: Boolean

  category:
    type: String
    regEx: SimpleSchema.RegEx.Id

@Items.attachSchema(Schemas.Items)