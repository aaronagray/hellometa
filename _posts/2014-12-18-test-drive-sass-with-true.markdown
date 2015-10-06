---
layout: post
title:  "Test Driving Sass with True"
date:   2014-12-18 23:21:44
categories: code
short: When we discuss writing tested code, many assume the methodology begins and ends with programming languages like Ruby, but the importance of testing code is rightfully adopted into nearly every aspect of software development.
---

When we discuss writing tested code, many assume the methodology begins and ends with programming languages like Ruby, but the importance of testing code is rightfully adopted into nearly every aspect of software development. I use True, the [Sass Testing Framework](https://github.com/ericam/true/) by [ Eric M. Suzanne](https://twitter.com/ericmsuzanne), to write logical unit tests for the functions used in the responsive grid framework, [Susy](http://susy.oddbird.net/).

### Return Full Width of a Grid from Custom Grid Settings

{% highlight javascript %}
@function columns-width(
  $columns  : $total-columns
  ) {
    @return ($columns * $column-width) + (if($columns &gt;= 1, ceil($columns - 1), 0) * $gutter-width);
}
{% endhighlight %}

This is a function from the Susy One codebase that’s slightly simplified for demonstration purposes. For those less familiar with functions in Sass, check out Mason Wendell’s [ wonderful guide on writing Sass functions](http://thesassway.com/advanced/pure-sass-functions).

This `columns-width()` excepts one parameter, `$columns`, which defaults to `$total-columns` if nothing is passed in. `$total-colums` is part of Susy One’s customizable grid settings. When a developer starts a project with Susy, `$total-columns` is set to `12`, but she can specify any number of columns needed for the responsive grid. This function also references `$column-width` &amp; `$gutter-width` which default to 4em and 1em respectively.

Given only defaults, we can read the return statement like this.

{% highlight javascript %}
    return (12 * 4em) + ( if(12 >= 1), 0), ceil(12 -1),  0) * 1em );
{% endhighlight %}

This is one way Sass can read `if statements` and it returns 59em. Let’s take a look at how one could use True to write tests for this function. You start by wrapping all tests in the `test-module` where we can define a test suite with True’s `test()` function.

### True Test Example

{% highlight javascript %}
  @include test-module("susyone functions") {
    // Your tests suites go here.
  }
  @include report;
{% endhighlight %}

The `@include report;` is what sends test results to the console and outputs them in a unique stylesheet for reference.

{% highlight javascript %}
  @include test("columns-width") {
    ...
  }
{% endhighlight %}

Inside the test module, you pass `test()` the name of the function in question so we know which tests fails if and when things go wrong.

{% highlight javascript %}
  @include test("columns-width") {
    $test: columns-width();
    $expect: 59em;
    ...
  }
{% endhighlight %}

This assigns the return value of `columns-width()` to `$test` and assigns what we expect it to return to `$expect`. With those values set, we can use `assert-equals()` to determine if they match. It excepts three parameters: the value in question, the expected result, and a message for output when things break.

{% highlight javascript %}
  @include test("columns-width") {
    $test: columns-width();
    $expect: 59em;

    @include assert-equal($test, $expect,
      "Returns the full width of a grid based on grid settings."
    );
  }
{% endhighlight %}

There are several other functions we can use to test output, including `assert-unequal(...)`, `assert-true(...)`, and `assert-false(...)`.

### True Test Results

While the tests are running and you edit your functions, True reports back with your test results. Here’s what Susy’s Susy One module currently reports in the terminal.

![Nine tests passed and zero failed.](http://www.commercekitchen.com/wp-content/uploads/2014/03/susy-test-results-from-true.png)

Some critics argue that testing CSS is overkill. While there are obvious reasons to run image diffs on CSS output for large applications, True offers more than just testing CSS output. It tests the functions and API designed in production software like Susy and Compass.
