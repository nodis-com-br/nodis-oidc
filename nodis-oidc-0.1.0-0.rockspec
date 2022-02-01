package = "nodis-oidc"
version = "0.1.0-0"
source = {
    url = "git://github.com/nodis-com-br/nodis-oidc",
    dir = "nodis-oidc"
}
description = {
    summary = "A Kong plugin for implementing the OpenID Connect Relying Party (RP) functionality",
    detailed = [[
        Nodis-oidc is a Kong plugin for implementing the OpenID Connect Relying Party.

        When used as an OpenID Connect Relying Party it authenticates users against an OpenID Connect Provider using OpenID Connect Discovery and the Basic Client Profile (i.e. the Authorization Code flow).

        It maintains sessions for authenticated users by leveraging lua-resty-session thus offering a configurable choice between storing the session state in a client-side browser cookie or use in of the server-side storage mechanisms shared-memory|memcache|redis.

        It supports server-wide caching of resolved Discovery documents and validated Access Tokens.

        It can be used as a reverse proxy terminating OAuth/OpenID Connect in front of an origin server so that the origin server/services can be protected with the relevant standards without implementing those on the server itself.
    ]],
    homepage = "https://github.com/nodis-com-br/nodis-oidc",
    license = "Apache 2.0"
}
dependencies = {
    "lua-resty-openidc ~> 1.6.1-1"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.nodis-oidc.filter"] = "kong/plugins/nodis-oidc/filter.lua",
        ["kong.plugins.nodis-oidc.handler"] = "kong/plugins/nodis-oidc/handler.lua",
        ["kong.plugins.nodis-oidc.schema"] = "kong/plugins/nodis-oidc/schema.lua",
        ["kong.plugins.nodis-oidc.session"] = "kong/plugins/nodis-oidc/session.lua",
        ["kong.plugins.nodis-oidc.utils"] = "kong/plugins/nodis-oidc/utils.lua"
    }
}
