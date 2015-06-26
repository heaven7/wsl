Router.map ->
  @route "items",
    path: "/items"
    waitOn: ->
      [
        Meteor.subscribe 'items'
      ]
