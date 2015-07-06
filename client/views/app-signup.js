Template.signup.helpers({
    users: function () {
        return Meteor.users;
    },
    userSchema: function () {
        return Schema.User;
    }
});