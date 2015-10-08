---
layout: post
title:  "Performance and Non-Blocking UI"
date:   2015-10-07 23:21:44
categories: design
short: Now that we optimize for the critical rendering path, let's talk about something else.
---

# Performance and Non-Blocking UI

With the advent of increasingly large web clients, we've had many important conversations about best practices regarding page loading times. There are [several  studies](http://www.google.com/think/multiscreen/success.html) that demonstrate increased conversion rates from decreasing the amount of time it takes the browser to reach its first paint.

The TL;DR is that by optimizing the [critical rendering path](https://developers.google.com/web/fundamentals/performance/critical-rendering-path/analyzing-crp?hl=en) and reducing the time it takes to render something (anything!), users tend to stick around longer and convert. As an industry we're mostly on the same page about this and I think there's another metric we should start to explore.

## Time to Operate

Optimizing the critical rendering path is important, but I think it's equally important what we choose to render. Getting a spinner to show up may be simple and efficient, but the spinner itself doesn't provide much information; it's blocking the user from seeing ahead.

![Loading Spinner...](/public/images/loading.gif)

The loading spinner can be described as blocking because it prevents the user from deciding what is next for them. There's no indication of how long it will take to stop spinning and no matter what you load after this, it's going to be a jolting experience when lots of new content bursts to the screen.

The metric I want to explore is the time to operate: the time it takes for users to determine what they will do next according to their own agenda. Callum Hart points out that Facebook does this really well with [non-blocking ui previews](http://www.callumhart.com/blog/non-blocking-uis-with-interface-previews).

![Facebook non-blocking ui preview](/public/images/facebook.png)

Instead of a spinner for areas that are loading data, Facebook renders a temporary, visual representation of what is to come. These UI previews provide context and cues that inform the user of what is to come. It renders almost immediately and resembles the actual interface.

A user on [Little Big Details]( http://littlebigdetails.com/post/56782380031/pinterest-before-image-is-loaded-the-background) pointed out that Pinterest does something similar by painting the background of each card with the main color of  photo that’s about to be displayed.

![Pinterest](/public/images/pinterest.png)

## Nothing New Here

This technique isn't new. The iOS Human Interface Guidelines recommend an [identical technique](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/LaunchImages.html) for application launch screens and loading states, suggesting that a loading template's number one goal is "intended to enhance the user’s perception of your app as quick to launch and immediately ready for use," and stressing that it's not an opportunity for flashy animations, showing off your brand, or shoving a spinner in everyone's face.

There aren't any studies on this as far as I know, but I'm sure the tech giants behind the idea have their reasons. I'm personally a big fan and hope to see more numbers on the topic soon.
