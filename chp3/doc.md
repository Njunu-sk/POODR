## Managing Dependency

An object depends on another object if, when one changes the other might be forced to change in turn.

An object has dependency when it knows:

- the name of another class
- the name of a message that it intends to send to someone other than self
- the arguments that a message requires
- the order of those arguments.

The design challenge is to manage dependencies so that each class has the fewest possible, a class should just know enough to do its job and not one thing more.

Other types of dependencies

- method chaining
- test of code

Writing loosely coupled code

One can write loosely coupled code using the above coding techniques

- inject dependencies
- isolate dependencies
- remove argument-order dependencies
  *use of keyword arguments is a simple way to avoid depending on positional arguments.
  *keyword arguments offer several advantages, args can be passed in any order and one can set defaults.
- isolate multiparameter initialization
  \*here we come across a new term, factory -> this is an object whose sole purpose is to create other objects.

Dependency management is core to creating future-proof applications.

The road to happiness in programming is to create classes that depend on things that change less often than they do.
