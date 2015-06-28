@Schemas = {}
Schemas.Items = new SimpleSchema
  doc:
    type: String
    regEx: SimpleSchema.RegEx.Id
    optional: true

  docType:
    type: String
    optional: true

  owner:
    type: String
    regEx: SimpleSchema.RegEx.Id
    optional: true
    autoform:
      options: ->
        _.map Meteor.users.find().fetch(), (user)->
          label: user.emails[0].address
          value: user._id

  createdAt:
    type: Date
    optional: true
    autoValue: ->
      if this.isInsert
        new Date()

  modified:
    type: Date
    optional: true
    autoValue: ->
      if this.isInsert
        this.unset()
      else
        new Date()

  title:
    type: String

  description:
    type: String

  need:
    type: Boolean
    optional: true

  category:
    type: String
    optional: true
    regEx: SimpleSchema.RegEx.Id

@Items.attachSchema(Schemas.Items)