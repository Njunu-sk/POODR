Reducing Cost with Duck Typing
Duck types: these are public interfaces that are not tied to any specific class, duck types are defined more by their behaviour than by their class.
Class is just one way for an object to acquire a public interface, applications may define many public interfae that are not related to one specific class, these interface cut across classes.

Recognizing hidden Ducks
Many times, unacknowledged duck types already exist within exixting code.
Several common coding patterns indicate presence of a hidden duck
  -case statements that switch on class
  -kind_of? and is_a?
  -responds_to?
    ->this can be raplaced with ducks.
