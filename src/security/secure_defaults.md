# Secure Defaults

News story after news story has made it abundantly clear that offering security features is not enough, they _must_ be enabled by default. Unfortunately security has taken a back seat to most other aspects of web development pretty consistently throughout the history of the internet. Typically, developers will only go out of their way to improve the security of their application when forced to by some external entity. This is why it is crucial that the developers of any internet-connected software ensure the _default_ option for their users is **the most secure one**. When making the default secure is not plausible, efforts must be taken to lower the barrier to security for developers and encourage them to take necessary steps themselves.

It's impossible to cover all potential security features that need to have good defaults, but let's take a quick look at the [STRIDE](https://en.wikipedia.org/wiki/STRIDE_%28security%29) mnemonic to get an idea of some examples. Each letter in "STRIDE" stands for a security threat to an application.

## S - Spoofing

Spoofing is the threat of impersonation. In most applications, it matters who or what is trying to perform a given action. As a result, any given API solution should default to having an **enforced** authentication mechanism in place that developers must specifically opt out of if they do not care about this threat. More about authentication can be found in [the authentication section](authentication.md).

## T - Tampering

Tampering is the threat of an unauthorized entity somehow modifying otherwise legitimate data. One example of this might be a "monster in the middle" attack where an attacker places themself in between a legitimate client of an API and the API service itself. The attacker can then modify the requests of the client before passing them along to the service to change the outcome. This problem, at the time of writing at least, doesn't have many great solutions. However, even an imperfect solution (such as [a header that protects users only _after_ their first interaction][hsts]) should be enabled by default.

If such a solution becomes prohibitively difficult for development, the documentation for the solution should provide consumers with a way of _temporarily_ disabling this protection which will only impact the development environment.

## R - Repudiation

Repudiation is the threat of lack of information. If a data breach or attack happens, it should be detectable and, as much as possible, traceable. To help prevent repudiation, any API solution must include sensible defaults for logging interactions with clear documentation for configuring verbosity (see [the logging section] for more detail).

## I - Information Disclosure

Information disclosure is one of the broader threats to web applications, as it covers any situation in which information is leaked which could be harmful. This could be logging sensitive information to an insecure location (see [the logging section] for more detail). It could also be providing too much information in an error response (see [error handling]). [Authorization] may be inadequate allowing users access to data they shouldn't be able to see.

A solution must make every effort to implement patterns and technologies that reduce the chance of information disclosure while also pointing out the potential risks to users. I suggest that creators of solutions go a step further and provide [a threat model] both to show the attack surface and threats to the solution in general and so that performing such a model on an application is **easier for the developer**. Furthermore, it's extremely important that a clear method of communication with consumers is established and that they are encouraged to follow it for security updates (see [maintenance]).

## D - Denial of Service

Denial of service is the security perspective of stability. Common features that solutions require to mitigate this threat are scaling gracefully under load (see [infrastructure]) and preventing bugs from crippling the system (see [error handling] and [correctness]).

## E - Elevation of Privilege

Elevation of privilege is specifically attempting to bypass any [authorization] system which is in place. Solutions must provide an authorization system which is explicit to reduce the chance of under-securing and on by default to reduce the chance of failing to secure altogether. Additionally, solutions should use tools that prevent bypassing the authorization system altogether (see [correctness] and [maintenance]).

## Conclusion

The abstract examples above just barely scratch the surface of what is necessary to properly secure a web application. Security is a complex and difficult topic that teams of professionals can spend years working on and _still_ miss things. This is why it's so critically important for security concepts to be enforced as far down the stack as possible and hardened by default. Only when something _cannot_ be handled automatically should the developer be required to implement it themself, and the implementation should be as easy as possible, introduced early, and reinforced often. Finally, because the security landscape changes quickly and because it's so common to make mistakes, there **must be clear, transparent, and accessible** communication to consumers of any solution.

[hsts]: https://en.wikipedia.org/wiki/HTTP_Strict_Transport_Security
[the logging section]: ../drafts/logging.md
[error handling]: ../drafts/error_handling.md
[authorization]: authorization.md
[a threat model]: threat_model.md
[maintenance]: ../drafts/maintenance.md
[infrastructure]: ../drafts/infrastructure.md
[correctness]: ../drafts/correctness.md
