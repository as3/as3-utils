#Contribution Guidelines

As developers, many of us have created our own working set of classes and functions for handling the common programming tasks we come across every day. But why reinvent the wheel? **AS3-Utils** is an attempt to gather together code from all of these disparate libraries into one place in hopes of creating a reusable, well-tested, well-documented, and freely-available unified collection. 

If you have code in a personal library / pile of snippets that you'd like to add, please refer to these guidelines.

##What to contribute

###Flash Player Versions

AS3-utils targets Flash Player 10.0+. That said, most of the snippets will work for FP 9. If there is ever a significant need for a FP9 (or 11+) version of the library, we would encourage branching or forking the project to accommodate this. 

Please include the minimum Flash Player version in your ASDocs if it requires FP10 or later to compile. (See Documentation below)

Nothing should rely on the Flex framework (or any external libraries). 

###Functions vs. Classes

We've been leaning towards a *functions only* approach. This means:

1. You can type `utils.foo.bar` to explore what's available in any IDE.

1. You only have to import the single function you need instead of a class.

1. Fewer dependencies on other pieces of the library. Less reading documents in order to use the functionality you want.

If you have a utility class that you'd like to add to the library, try breaking it into smaller functions before adding it. In other words, don't add `com.you.ArrayUtil`, instead add the functions within as standalone .as files. 

As a general guideline, contributors should always favor "snippets" over more complex object-oriented functionality. Basically, you should be able to copy/paste the function into your own class and have it "just work". Anything more complex than that would need to have an argument as to why it belongs in a utils library rather than its own library. 

An exception could be made for support classes that are included as internal classes but aren't accessed on their own.

####Constants

Constants that can be used in a general way can be added. If there is a single constant, Pi for example, you can add it as its own standalone .as file.

	// PI.as
	package utils.number {
		public const PI:Number = 3.141;
	}

If the constant value is part of an enumeration of values, you may include it in an enumeration class.

	// CommonColors.as
	package utils.color {
		public class CommonColors {
			public const RED:uint = 0xFF0000;
			public const GREEN:uint = 0x00FF00;
			public const BLUE:uint = 0x0000FF;
		}
	}

###Integrating Libraries

There's a list of libraries to integrate into AS3-utils. If you'd like to pull in the utility functions from them, please do so with respect to the licenses and authors of the original code. Again, this is a snippet library rather than a collection of classes so break down the code into atomic functions with as few dependencies as possible. 

###Naming

- Please use self-explanatory names for your functions and avoid using abbreviations. Strive for clarity over brevity. E.g. `truncateMultilineText()`, NOT `truncMLText()`

- Function names should all begin with some kind of _descriptive_ verb. E.g. 

	- `displayDialog()` NOT `dialog()` or `doDialog()`
	
	- `getName()` or `get name()` NOT `name()`

- Predicate functions, functions that return a boolean must start with `is` (as if answering a question). E.g. `isEmptyString(value:String):Boolean` NOT `empty(value:String):Boolean`

- Parameter names must be descriptive. E.g. `alignLeft(objectsToAlign:Array):void` instead of `alignLeft(a:Array):void`

- Variable names must be descriptive. E.g. `var targetWidth:int = target.width` instead of `var tw:int = target.width`

- Please use US English for all terms. E.g. `getColor()` not `getColour()`

- Remember that in common practice the package name will not be included in people's code. Therefore, to make code more readable, avoid ambiguous names for functions and classes. Rather than relying on the package name to imply what the function does, include include it in the name of the function. E.g. 

	* `convertHexStringToUint(hexString:String):uint`, NOT `convertToUint(s:String):uint`
	
	* `XMLConstants` or better yet, `XMLNodeType`, NOT `Constants`
	
	* `utils.foo.getFooAsString()`, NOT `utils.foo.toString()`
	
- When in doubt, use naming conventions from ActionScript and the FlashPlayer API.

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

	* If your code and their code do virtually the same thing the same way, suck it up and **keep the existing code**.
	
	* Only edit or replace existing code if there are tests. If there are not tests, write tests against the existing code then replace with your version. Ensure the tests still pass before committing.
	
	* Writing a note explaining why you made the change is encouraged.
	
* If you find checked-in code that is a duplicate of another piece of code, keep the one that is clearer and more robust and remove the other.

* You may make changes to names of functions if they are unclear or don't meet the naming requirements but in general, try not to change things around based only on your personal style.

##Unit Tests

Needless to say, code should not cause any compile errors or warnings.

New code snippets must be covered by tests. Tests should demonstrate correct usage, with as many unique scenarios as the code is expected to handle. Fringe cases that may throw errors should be demonstrated if possible, e.g. passing `null` to a function that expects a parameter of type `Array`.

Tests should be written using FlexUnit 4.0+.

If you come across code that needs a unit test written for it, you are encouraged to write one. You will earn much karma.

More on FlexUnit and Testing on [Elad Elrom's Blog](http://elromdesign.com/blog/2010/03/10/test-driven-development-tdd-with-flexunit-4-complete-tutorial/).

##Documentation

Please add [ASDoc](http://help.adobe.com/en_US/flex/using/WSd0ded3821e0d52fe1e63e3d11c2f44bb7b-7fe7.html)-style documentation to everything. Your code should have at least these tags in every function or class.
	
* `@author Your Name`
	
* `@param paramName Description.` if there are any params

* `@return Type Description.` if not `void`

* `@throws package.ErrorType Description.` if it throws an error
	
* `@example <listing version="3.0">code</listing>` for example code. (A good habit is write the example first, then the docs, then the tests, then the code.)
	
* `@playerversion Flash 10.1` If your code will only work on a player later than 9.0
	
Example code is optional for simple functions but please include a description of what the code is designed to achieve and/or why you might want to use it. Include any licensing that applies to your functions.

Feel free to add docs to other people's code if there are none. 

##Merge Strategy

Submitters should follow these steps when contributing code to the project.

__SUBMITTERS:__

1. Create a fork of the project.

1. Make your changes, test, and commit them.

1. When you're ready to integrate the changes into the main branch, create a pull request.

1. Don't merge your own pull request even if you're an admin. Instead, ask for assistance from someone else to review your pull request and merge it into the master. 

1. If you're an admin and are anxious with waiting for your pull request to be handled, review and pull someone else's code while you wait.

__ADMINS:__

1. Review the commits by checking them out to a local repository.

1. Ask questions of the submitter or other admins!

1. Write tests & improve docs or request that the submitter do so.

1. Remember to run the test suite before merging code into master.

1. You can reformat the incoming code using the `res/flex-formatter.properties` file. (Optional)

1. Big changes can/should first be merged into a separate integration branch at your discretion.


###Why not merge your own code?

This is a collection made for everyone made up of several people's personal code library. The chances of adding duplicate or idiosyncratic code is very high. Using the pull-request scheme is a great way for us to make sure all the code is being reviewed by *someone* other than the author. The more people who review code the less chance of checking in a duplicate or buggy piece of code. 

Furthermore, gitHub is set up to handle a distributed repository workflow very elegantly. If at any point you want to break out and work on your own personal code library, that's easy to do in your own fork. 