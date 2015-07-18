Template.login.events({
    'submit form#login': function (event, template) {
        event.preventDefault();

        var email = template.$('[name=email]').val()
        var password = template.$('[name=password]').val()

        if(email.length > 0 && password.length > 0) {
            if(!email) {
                sAlert.error('Please provide a valid email-adress.')<
                template.$('[name=email]').focus()
                return
            }
            if(!password) {
                sAlert.error('Please fill out password field.')
                template.$('[name=password]').focus()
                return
            }
            Meteor.loginWithPassword(email, password, function (error) {
                if (error) {
                    sAlert.error(error.message);
                    return
                }
                sAlert.success('Successfully logged in');
                Router.go('home');
            })
        } else {
            sAlert.error('Please fill out all necessary fields.')
            template.$('[name=email]').focus()
            return
        }
    }
})