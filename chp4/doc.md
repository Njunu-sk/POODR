Creating Flexible Interfaces
Design is concerned with messages that pass between objects, it not only deals with what objects they know(responsibilities) and who they know(their dependencies) but also with how they talk to one another.
The conversation between objects takes place using their interfaces.
Interface refer to a number of different concepts, here interface is within a class. Classes implement methods, some of the methods are intended to be used by others and these methods make up its public interface.

When starting out a new project, one identifies domain objects. These are nouns in the application that represent both data and behaviour, these are important because they represent the database.
Domain objects are easy to find but they are not the design center of your application. Design experts notice domain objects without concentrating on them, they focus not on these objects but on the message that pass between them.
Before you start coding you should form an intention about the objects and the message needed to satisfy this use case.

These can be achieved by use of sequence diagrams, they offer a simple way to experiment with different object arrangements and message passing schemes.
The transition from class based design to message-based design is a turning point in your design career.

The law of Demeter
This is a set of coding rules that results in loosely coupled objects.
Demeter restricts the set of objects to which a method may send messages, it prohibits routing a message to a third party object via a second object of a different type.
This is paraphrased as "only talk to your immediate neighbours" or "use one dot".

OO applications are defined by the message that pass between objects, these message passing takes place along "public" interfaces, well defined public interfaces consist of stable methods that expose responsibilities of their underlying classes and provide maximal benefit at minimal cost.
