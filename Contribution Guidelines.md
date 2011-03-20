#Contribution Guidelines

As developers, many of us have created our own working set of classes and functions for handling the common programming tasks we come across every day. But why reinvent the wheel? **AS3-Utils** is an attempt to gather together code from all of these disparate libraries into one place in hopes of creating a reusable, well-tested, well-documented, and freely-available unified collection. 

If you have code in a personal library / pile of snippets that you'd like to add, please refer to these guidelines.

##What to contribute

###Functions vs. Classes

We've been leaning towards a *functions only* approach. This means:

1. You can type "utils.foo.bar" to explore what's available in any IDE.

2. You only have to import the single function you need instead of a class.

3. Fewer dependencies on other pieces of the library. Less reading documents in order to use the functionality you want.

If you have a utility class that you'd like to add to the library, try breaking it into smaller functions before adding it. In other words, don't add `com.you.ArrayUtil`, instead add the functions within as standalone .as files. 

_Are there cases where classes are okay? It seems like more generic classes that act as datatypes could be okay especially if their set of functions was separated out of the class. A good example might be 2d or 3d Vectors or commonly used interfaces like IDisplayObject._

####Constants

Constants that can be used in a general way can be added. If there is a single constant, Pi for example, you can add it as its own standalone .as file.

	// PI.as
	package utils.number {
		public const PI:Number = 3.141; //etc.
	}

If the constant value is part of an enumeration of values, you may include it in an enumeration class.

	// CommonColors.as
	package utils.color {
		public class CommonColors {
			public const R:uint = 0xFF0000;
			public const G:uint = 0x00FF00;
			public const B:uint = 0x0000FF;
		}
	}

###Contributing Libraries

_I'm not sure what our policy should be for adding complete code libraries or SWCs. I could see things like the [AS3 Data Structures](http://code.google.com/p/polygonal/wiki/DataStructures) or the [AS3 Core Lib](https://github.com/mikechambers/as3corelib) being useful but maybe it's better to keep them separate. We could create a text list of recommended libraries and put it in the docs?_

_Perhaps we could create a branch that includes other complete libraries as is so they can be updated as needed._

_It would be good to create a "libraries to integrate" list as well._

###Naming

Please use self-explanatory names for your functions and avoid using abbreviations. Strive for clarity over brevity.

Remember that in common practice the package name will not be included in people's code. Therefore, to make code more readable, avoid ambiguous names for functions and classes. Rather than relying on the package name to imply what the function does, include include it in the name of the function. 

Examples:

* `truncateMultilineText()`, NOT `truncMLText()`

* `convertHexStringToUint(hexString:String):uint`, NOT `convertToUint(s:String):uint`

* `XMLConstants` or better yet, `XMLNodeType`, NOT `Constants`

* `utils.foo.getFooAsString()`, NOT `utils.foo.toString()`

###Packages

Here are general guidelines for how to pick a package.

* Check to see what packages already exist before creating a new one. If possible, use one of the existing packages. **Do not** use your own package names (e.g. `com.mimswright`)

* If a utility function operates mainly on a particular class from the Flash Player API, use the same package name as that class. E.g. if your function deals mostly with `Sprites`, use the `utils.display` package.

* If your function is related to a root-level class in the Flash API, such as `Array`, use `utils.array`. 

* If you have a significant set of functions that relates to a specific class within a package, you may create a new package just for that class. For example, if you have several functions that all deal with `Point`, could go in `utils.geom.point`.

* If you're Peter Piper, pick a peck of pickled packages. 

##Deprecating and Replacing Existing Code

What do you do if you want to contribute a piece of code that is very similar to one that already exists? 

* **First, always check for code that could function similarly to your code.** 

* If you find similar code to something you want to commit, think carefully.

	* If your code and their code do virtually the same thing, suck it up and **keep their code**.
	
	* If your code and their code have the same method signature (same arguments and return type) but yours is more robust or powerful, **update their code** with your improvements keeping the original function name and signature.
	
	* If your code is clearly better and more complete than their code and updating or renaming it just wouldn't cut it, **move their code** into the `deprecated` package and replace it with your code. Add a note to their code explaining why it was deprecated. You can also add [deprecated metadata tags](http://danielmclaren.net/node/135). The `deprecated` package should be cleared out for each major version release.
	
* If you find code that is a duplicate of another piece of code, keep the one that is clearer and more robust and deprecate the other.

##Unit Tests

_Someone with more experience with testing should probably write this._ 

Needless to say, code should not cause any compile errors or warnings.

##Merge Strategy

Committers should follow these steps when submitting code to the project.

1. Create a fork of the project.

1. Make your changes, test, and commit them.

1. When you're ready to integrate the changes into the main branch, create a pull request.

1. Don't merge your own pull request even if you're an admin. Instead, ask for assistance from someone else to review your pull request and merge it into the master. 

1. If you are anxious with waiting for your pull request to be handled, review and pull someone else's code while you wait.

###Why not merge your own code?

This is a collection made for everyone made up of several people's personal code library. The chances of adding duplicate or idiosyncratic code is very high. Using the pull-request scheme is a great way for us to make sure all the code is being reviewed by *someone* other than the author. The more people who review code the less chance of checking in a duplicate or buggy piece of code. 

Furthermore, gitHub is set up to handle a distributed repository workflow very elegantly. If at any point you want to break out and work on your own personal code library, that's easy to do in your own fork. 

##Documentation

Please add [ASDoc](http://help.adobe.com/en_US/flex/using/WSd0ded3821e0d52fe1e63e3d11c2f44bb7b-7fe7.html)-style documentation whenever your code's purpose isn't completely obvious. Feel free to add docs to other people's code if there is none. Most importantly, please add `@author` tags to your work and to others' (if you know who wrote something). 