# Design Implications of the Realtime Web

Often developers peek into the browser ecosystem to discover infinite change and complexity. The JavaScript community is often criticized by outsiders as being fragile, as though its constant innovation makes it weak.

JavaScript got off to a bad start. It was known as the language written in 11 days, as the language endured by backend engineers, as the prototypal paradigm one could hack to look classical, as the only interface to the notoriously difficult DOM.

While the language and related APIs have flaws, conditions are improving. ES6 (ES2015) shipped. It's rapidly becoming the standard as frameworks like Meteor and Ember make it the default.

The reality is, we didn't choose JavaScript. Our users choose the browser and as a consequence, an extreme diversity of opinions, paradigms, and solutions are borrowed from the array of backgrounds JavaScript developers have from their previous language of choice.

### Reactive

Reactivity can be summarized as a templates ability to automatically update when underlying data changes. This definition made the most sense to me when I considered a spreadsheet as being reactive. You explicitly tell cell `A` that is should be the computed value of cell `B` plus cell `C`. Anytime cell `B` or `C` are changed, cell `A` is recomputed and rerendered in the view.

### Reactive Latency Compensation

This is otherwise known as Optimistic UI, where your application assumes the user provides valid data, which enables your system to reactively render the appropriate view without waiting on the network.
