Template.login.events({
    'submit form#login': function (event, template) {
        event.preventDefault();

        var email = template.$('[name=email]').val()
        var password = template.$('[name=password]').val()

        if(email.length > 0 && password.length > 0) {
            if(!email) {
                wAlert.error('Please provide a valid email-adress.')<
                template.$('[name=email]').focus()
                return
            }
            if(!password) {
                wAlert.error('Please fill out password field.')
                template.$('[name=password]').focus()
                return
            }
            Meteor.loginWithPassword(email, password, function (error) {
                if (error) {
                    sAlert.error(error.message);
                    return
                }
                wAlert.success('Successfully logged in');
                Router.go('home');
            })
        } else {
            wAlert.error('Please fill out all necessary fields.')
            template.$('[name=email]').focus()
            return
        }
    }
})