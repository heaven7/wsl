Template.signup.helpers({
    users: function () {
        return Meteor.users;
    },
    userSchema: function () {
        return Schema.User;
    }
});
Template.signup.events({
    'submit form#signup': function (event, template) {
        event.preventDefault();
        user = new Object
        user.username = template.$('[name=username]').val();
        user.email = template.$('[name=email]').val();
        user.password = template.$('[name=password]').val();
        Meteor.call('createWSLUser', user, function (error) {
            if(error)
                console.log('Error: ' + error.message)

            Router.go('home');
        })
    }
})