---
layout: post
title:  "Live Style Guides and Why They Rule"
date:   2014-12-18 23:21:44
categories: design
short: A live styleguide is designed and built in the browser.
---

A live styleguide is designed and built in the browser. Coded with the big three – HTML, CSS and JS – it hosts _all of the things_, from buttons to forms to calls-to-action. Checkout one [I made for Go Code Colorado](http://gocode.colorado.gov/styleguide/) to get an idea of how one looks. A live styelguide offers more than just looking freakin’ spiffy, so let’s review some of the other benefits that come with it.

## Don’t Repeat Yourself

Have you ever designed a button on the homepage and later code an almost identical button on the contact form? Starting your design process with a styleguide forces us to anticipate repeating patterns and solve for them all at once. Having all buttons in the same place helps us recognize these patterns early and stay consistent in our presentation.

## Reusability and Independence

<img class="image-left" src="http://www.commercekitchen.com/wp-content/uploads/2014/02/freedom-300x200.jpg">

When every element on your site must coexist on the same page, it forces us to think through how we chose to write code. At first I was surprised to discover how much of my CSS depended on inherited styles in the cascade. Hey, that testimonial section looks great on the homepage, but oh, rats, look… Now it needs to be in the sidebar and, oh, that broke it. Building elements in a standardized environment helps us write reusable and decoupled code.

## The Promise of Java

With a styleguide, we can build each component once and call on it when needed throughout the site. Implementing this will vary depending on the framework you use, but we haven’t had much trouble making it work for us. Here’s a screeny of a recent WordPress homepage that uses a styleguide.

![page-home](http://www.commercekitchen.com/wp-content/uploads/2014/02/page-home.png)

(╯°□°）╯︵ ┻━┻ That’s 7 lines of code! If we need to change the markup for featured posts, we only change them in our styleguide and that change happens site-wide, as every instance of every component references itself in the styleguide. It kinda feels like class inheritance in OOP, doesn’t it?

## Measure twice, cut once

A live styleguide provides a central repository for everything. We always test individual pages, but it’s really nice to have one place to review how components are rendering on different screens and devices. When other developers come a long, they can quickly review how everything is styled and marked up, perform minor surgery, confirm everything looks well and be on their way.

## Save Time or Get Rich Quick

![profit!!](http://www.commercekitchen.com/wp-content/uploads/2014/02/profit.jpg)

The typical web development workflow demands sketches, wireframes, mockups, and code and in that order. Mockups can take up around one third of a project’s time and budget only to be passed on to developers, referenced for a few weeks, then archived forever. Instead of wasting resources, our project workflow favors using the right tool for the task at hand. Sometimes it’s easier to articulate a feature on the marker board, while other times it’s appropriate to prototype an animation in CSS, but we always try to get into the code and onto the browser as soon as possible. Then we design and developed where the components will live forever: online.

## Subject to Scrutiny

We’ve experienced some success with this part of our process, but we will certainly iterate on it and other aspects of our workflow in the months to come. Have you ever used a live styleguide? What makes your workflow unique?
