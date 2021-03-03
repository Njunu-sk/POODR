Acquiring Behaviour through Inheritance
Inheritance is a mechanism for automatic message delegation, it defines a forwarding path for not-understood message.
It creates relationships such that if one object cannot respond to a received message, it delegates that message to another.
Ruby has single inheritance, a superclass may have many subclassese but each class is permitted only one superclass.

Sending super in any method passes the message up the superclass chain.

Finding the Abstraction
Subclasses are specializations of their superclasses.
There are two rules of inheritance. For inheritance to work two things must always be true. First, the objects that you are modeling must truly have a generalization-specialization relationship. Second, you must use the correct coding techniques.

Many of the difficulties of inheritance are caused by a failure to rigorously separate the concrete from the abstract
The general rule for refactoring into a new inheritance hierachy is to arrange code so that you can arrange abstraction rather than demote concretions.

Using the Template Method Pattern
Technique of defining a basic structure in the superclass and sending message to acquire subclass-specific contributions is known as the template method pattern.
This is good practice in general, the default message serve a dual purpose.

Managing Coupling between Superclasses and Subclasses
Tightly coupled classes stick together and ay be impossible to change independently.
Knowing things about other classes, creates dependecies and dependencies couple objects together, the dependencies are also booby traps.

Decoupling Subclasses Using Hook Messages
Instead of allowing subclasses to know the algorithm and requiring that they send super, superclasses can instead send hook messages, ones that exist solely to provide subclases a place to contribute information by implementing matching methods.
This strategy removes knowledge of the algorithm from the subclass and returns control of the superclass.

Inheritance allows you to isolate shared code and implement common algorithms in an abstract class, while also providing a structure that permits subclasses to contribute specialization.
Well designed inheritance hierachies are easy to extend with new subclasses even for programmers who know very little about the application.