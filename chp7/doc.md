## Sharing Role Behaviour with Modules
- Many object oriented languages provide a way to define a named group of methods that are idependent of class and can be mixed in to any object.

- These mixins in ruby are called modules. Methods are defined in module and then module can be added to any object.
- When an object includes a module, the methods defined therein become available by automatic delegation.

### Understanding Roles
- Some problems share behaviour among otherwise unrelated objects, this common behaviour in othorgonal to class, its a role an object plays.
- Using a role creates dependencies among the objects involved and these dependencies introduce risks that you must take into account when deciding among other design options.

### Finding Roles
- When roles require not only specific message signature(duck type) but also a specific behaviour. Ideally this code would be defined in a module and mixed in objects.
- Once you place code in modules and add modules in objects, you expand the set of message to which an object can respond and enter a new realm of design complexity.

### Looking up Methods
- In `classical inheritance`, the search for methods begins in the class of the receiving object.
- If the class does not implement the method, the search proceeds up the superclass chain looking for one superclass after another until it reaches the top of the hierachy.
- In `module definition`, the search begins in the class and if the method is not found it proceeds to the module.
- When a class includes several modules, the modules are placed in method lookup in reverse order of module inclusion.

### Writing Inheritable code
- To write well crafted modules, we first have to write proper inheritable code.
- Sharing role behaviour requires very specific coding techniques.

 1. Recognize the Antipatterns 
  - There are two antipatterns
   1. Object that uses a variable name like type to determine what message to send to `self`.
    
   - This code can be re-arranged to to use classical inheritance, place common code in abstract super class and create sub class for different types.

   2. When a sending object checks the class of the receiving object to determine what message to send(duck types).
  - Duck type and interface may share behaviour and when they do it is right to place the shared code in a module and include in each class/object.
 
 2. Insist on Abstraction
  - All code in the superclass must be applied to all it's subclass, this is also true for modules. The code in modules must be applied to all who use it.
 
 3. Honor the contract
  - Subclass are expeted to conform to their supeclass interface.
  - Liskov Substitution principle(lsp)
   - let q(x) be a property provable about objects x of type T, Then q(y) should be true for objects y of type S where S is a subtype of T.
 
 4. Use the template method pattern 
  - This pattern alows you to separate the abstract from the concrete.
 
 5. Preemptively Decouple Classes 
  - Avoid wrting code that require inheritors to send `super`, use hooks methods instead.
 
 6. Create Shallow Hierarchies.
