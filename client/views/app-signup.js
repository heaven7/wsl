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
        user.password_confirmation = template.$('[name=password_confirmation]').val();

        if(!user.username) {
            sAlert.error('Please fill out username field.')
            template.$('[name=username]').focus()
            return
        }
        if(!user.email) {
            sAlert.error('Please provide a valid email-adress.')
            template.$('[name=email]').focus()
            return
        }
        if(!user.password) {
            sAlert.error('Please fill out password field.')
            template.$('[name=password]').focus()
            return
        }
        if(!user.password_confirmation) {
            sAlert.error('Please confirm your password.')
            template.$('[name=password_confirmation]').focus()
            return
        }

        if(user.password != user.password_confirmation) {
            sAlert.error('Your password does not match.')
            template.$('[name=password]').focus()
            return
        }

        Meteor.call('createWSLUser', user, function (error) {
            if(error)
                sAlert.error(error.message)

            Router.go('home');
        })
    }
})