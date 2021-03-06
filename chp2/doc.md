SOLID is an acronym for the first five OOD principles
S - Single-responsibility Principle ( There should never be more than one reason for a class to change)
O - Open-closed Principle ( A module should be open for extension but closed for modification)
L - Liskov Substitution Principle ( Subclasses should be substituble for their base classes)
I - Interface Segregation Principle ( Many client specific interfaces are better than one general purpose intreface)
D - Dependency Inversion Principle ( Depend upon abstractions, do not depend upon concretions)

Design is more the art of preserving changeability than it is the act of acheving perfection.
TRUE code ensures that each class has a single, well defined responsibility.
Code that is Transparent, Reasonable, Usable and Exemplary not only meets today needs but can also be changed to meet the needs of the future.

Designing Classes With a Single Responsibility
  -Class should do the smallest possible useful thing ie, it should have a single responsibility.
  -Application that are easy to change consist of classes that are easy to reuse.
  -OO designers use the word cohesion to describe SRP, when everything in a class is related to its central purpose, the class is said to be highly cohesive.
  -SRP requires that a class be cohesive, everything a class does be highly related to its purpose.

  Methods that have a single responsibility confer to the following benefits
    -Expose previously hidden qualities
    -Avoid the need for comments
    -Encourage reuse
    -Are easy to move to another class
Classes that do one thing  isolate that thing from the rest of your application, the isolation allows change without consequences and reuse without duplicate.