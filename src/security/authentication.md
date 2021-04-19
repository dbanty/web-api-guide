# Authentication

Authentication is a critical part of most APIs, but is somehow also one of the most neglected. Authentication—and [authorization]—are often left as exercises for the reader. At best, developers are given a half-baked solution and expected to find the rest of the information on their own. They might be directed toward some sort of token scheme but then not told how best to transport, store, or validate that token. Or told to use passwords without any information on the multitude of best practices one must follow to implement a secure password system.

As with everything in this guide, defaults and ease of use are key. Proper authentication is a problem that is very easy to get wrong and yet I have _never_ seen a clear, end-to-end, simple guide to implementing it. Resources seem to go from the one extreme of ignore authentication altogether to the other—diving deep into the pros and cons of every available technology.

The average developer is not interested in spending days learning every possible variant of some authentication technique, they just need to secure their application. It's the job of the solution to provide **a clear, concise, easy, and secure** method of authentication. If more than one solution _can_ be provided, then it should be, but the bare minimum is an opinionated, well-designed mechanism that requires minimal effort to implement.

The provided authentication mechanism(s) should be included in [the threat model] so the value that it is providing (along with any weaknesses) is clear.

[authorization]: authorization.md
[the threat model]: threat_model.md
