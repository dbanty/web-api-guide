# Introduction

This guide is intended to serve as an opinionated, complete, end-to-end guide to creating an API on the web.

## Why?

There are a million or more guides on the internet for creating a web application. As far as I've seen, they're all focused around a specific technology choice rather than the principles of good design. They also tend to focus on getting started as quickly as possible while leaving out important details along the way, encouraging readers to skip the bits in later chapters which include things like "authentication", "testing", and "documentation". I believe the prevalence of such guides and tutorials has, in no small way, contributed to some of the problems that exist on websites today, such as:

1. Undocumented, unversioned APIs leading to slow, stifled, error-ridden development.
2. Fuzzy boundaries between server and client, making cross site scripting and sluggish I/O harder to prevent.
3. Authorization, validation, and testing are afterthoughts and therefore often woefully inadequate.
4. Proper database management is left as an exercise for the reader, leading to slow, unstable web applications.

## Guiding Principles

These statements are what drives the entire rest of the guide. If something doesn't adhere to all of these statements,
it doesn't belong here.

1. The right way should also be the easy way.
2. Explicit is better than implicit.
3. Automatic is better than manual.

## Goals

These are the things we're setting out to achieve with this guide:

1. Provide general purpose, technology-agnostic guidance for building web APIs. Meaning the knowledge in this guide
   should stay relevant even if the specific technologies recommended go out of fashion.
2. Recommend at least one, specific, end-to-end solution with complete tutorial.
3. If more than one option is recommended for any piece of the stack, provide clear guidance on when to select each one.

## Non Goals

Things that this guide is not trying to achieve.

1. A solution for every stack. If you've come to this guide having already made a decision about a programming language, cloud platform, or transport technology, you'll likely find this resource lacking. Any information here is intended to be derived from first principles without any preconceptions about or biases toward specific technology.
2. Solving the UI problem. Any recommendations we make for creating a great API must necessarily be easy to use from a UI, but we will not be recommending specific UI solutions here. There should probably be a guide like this one for web UIs, mobile apps, etc. but this isn't it.
3. Optimizing for anything other than developer experience and correctness. All other things being equal, we may recommend a solution which is faster, more flexible, cheaper, etc. but those things will be afterthoughts. If your goal is the fastest solution possible at the expense of everything else, you'll want to look elsewhere.
4. Creating a universal solution. The easier it is to do any one thing, the harder it will be to achieve corner cases. Because we're optimizing for developer experience and correctness in the most common scenarios, there will likely be specific use cases which are difficult to achieve. Again, we _may_ include solutions for more specific problems (e.g. streaming video) but never at the expense of the more common ones.

## What's Next?

[The next section](the_right_way/index.md) is the high level guide, exploring the abstract but opinionated concepts that make an API great.
