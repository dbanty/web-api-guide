# Authorization

Authorization may be the single most neglected piece of web API tutorials. Where [authentication](authentication.md) is the act of verifying who an actor is, authorization is the act of verifying that the actor is allowed to access the thing they're accessing.

There are many different patterns for authorization, but all of them answer a simple question: "Is this actor allowed to do the thing they are trying to?" Any web API solution should provide a clear and simple way to answer that question at the atomic level. That is, whatever the most granular resource is that can be targeted by an API consumer, the solution must provide a way to authorize the consumer for that resource.

It's also important that developers not be allowed to accidentally forget to secure an individual endpoint. As such the default behavior should be to assume that an actor is not authorized to use an endpoint unless authorization has been asserted.

Ideally, a performant mechanism for verifying authorization will be recommended. This method must have a way for authorization to be revoked. If there will be any delay in that revocation taking effect, it must clearly be indicated.
