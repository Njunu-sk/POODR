Sharing Role Behaviour with Modules
Many object oriented languages provide a way to define a named group of methods that are idependent of class and can be mixed in to any object.
These mixins in ruby are called modules. Methods are defined in module and then module can be added to any object.
When an object includes a module, the methods defined therein become available by automatic delegation.

Understanding Roles
Some problems share behaviour among otherwise unrelated objects, this common behaviour in othorgonal to class, its a role an object plays.
Using a role creates dependencies among the objects involved and these dependencies introduce risks that you must take into account when deciding among otherd design options.

Liskov Substitution principle(lsp)
 ley q(x) be a property provable about objects x of type T, Then q(y) should be true for objects y of type S where S is a subtype of T.