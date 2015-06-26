Package.describe({
    summary: "WSL Items-Package",
    version: "0.0.1",
    git: ""
});

both = ['client','server']

Package.on_use(function (api) {
    api.versionsFrom("METEOR@1.0.1");

    api.use(
        [
            'email',
            'templating',
            'iron:router',
            'aldeed:simple-schema',
            'aldeed:collection2',
            'aldeed:autoform',
            'yogiben:user-helpers',
            'dburles:mongo-collection-instances'
        ],
        both)

    api.addFiles(
        [
            'lib/both/schemas.coffee',
            'lib/both/collections.coffee',
            'lib/both/router.coffee'
        ],
        both)

    api.addFiles(
        [
            'lib/client/helpers.coffee',
            'lib/client/templates.html',
            'lib/client/templates.coffee'
        ],
        'client')

    api.addFiles(
        [
            'lib/server/allow.coffee',
            'lib/server/methods.coffee',
            'lib/server/publish.coffee',
            'lib/server/utils.coffee'
        ],
        'server')

    api.imply('aldeed:simple-schema')
    api.imply('aldeed:collection2')
})
