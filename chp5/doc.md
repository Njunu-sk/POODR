## Reducing Cost with Duck Typing
- Duck types: these are public interfaces that are not tied to any specific class, duck types are defined more by their behaviour than by their class.

- Class is just one way for an object to acquire a public interface, applications may define many public interface that are not related to one specific class, these interface cut across classes.

### Recognizing hidden Ducks
- Many times, unacknowledged duck types already exist within exixting code.
- Several common coding patterns indicate presence of a hidden duck
   - case statements that switch on class
   - kind_of? and is_a?
   - responds_to?
  
 - This can be raplaced with ducks.

### Polymorphism
- In OOP polymorphism refers to the ability of many different object to respond to the same message, senders of the message need not to care about the class of the receiver.

- Receiver supply their own specific version of the behaviour, a single message thus has many forms.
- Any object implementing a polymorphic method can be substituted for any other, the sender of the message need not to care about this substitution.

- Using duck typing relies on ability to recognise the places where your application would benefit from across-class interfaces.
- Implementing a duck type is relatively easy, the design challenge is to notice that `you need one` and to `abstract its interface`.

- Message are the center of OOP application, and they pass among objects along public interfaces. 
- Duck typing detaches these public interfaces from specific classes, creating virtual types that are defined by what they do instead of by who they are.

- Duck typing reveals `underlying abstractions that might be invinsible`, depending on abstractions `reduces risk` and `increase flexibility` making your application `cheaper to maintain and easier to change`.


