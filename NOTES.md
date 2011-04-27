# as3-utils

# ISSUES

- parameter names are not descriptive
- variable names are not descriptive
- nomenclature is inconsistent
--	use functional-programming names?
--	use designer friendly names?
--	provide aliases for common functions with multiple common names?
- ASDocs 
-- missing tags
-- incorrect descriptions
-- incorrect tags

# Refactoring Guidelines

- predicate methods should be prefixed with is*

# AUDIT

The below is the results of a quick audit of the functions available in as3-utils, and their specific issues.

# ALIGN

alignLeft
alignToRectangleLeft
    duplicates

alignRight
alignToRectangleRight
    duplicates

align to edges
distribute by edges
grid alignment

hAlign(targets:Array, hSpacing:int = 0, alignment:Alignment = Alignment.LEFT):Array
vAlign(targets:Array, vSpacing:int = 0, alignment:Alignment = Alignment.TOP):Array
gAlign(targets:Array, columns:int, rows:int, hSpacing:int = 0, vSpacing:int = 0, alignment:Alignment = Alignment.TOP_LEFT):Array
gAlign = gridAlign

    /**
     * Aligns all the target DisplayObjects by their left edge to the left-most target. 
     *
     * Similar to the Flash IDE Alignment panel. 
     */
    alignLeft(targets:Vector.<DisplayObject>):Vector.<DisplayObject>
    
    /**
     * Aligns all the target DisplayObjects by their right edge to the right-most target.
     *
     * Similar to the Flash IDE Alignment panel. 
     */
    alignRight(targets:Vector.<DisplayObject>):Vector.<DisplayObject>

    /**
     * Aligns all the target DisplayObjects by their top edges to the top-most target.
     *
     * Similar to the Flash IDE Alignment panel. 
     */
    alignTop(targets:Vector.<DisplayObject>):Vector.<DisplayObject>
    
    /**
     * Aligns all the target DisplayObjects by their bottom edges to the bottom-most target.
     *
     * Similar to the Flash IDE Alignment panel. 
     */
    alignBottom(targets:Vector.<DisplayObject>):Vector.<DisplayObject>

    /**
     * Aligns all the target DisplayObjects by their horizontal center edges to the horizontal center of the all the targets.
     *
     * Similar to the Flash IDE Alignment panel. 
     */
    alignHorizontalCenter(targets:Vector.<DisplayObject>):Vector.<DisplayObject>

    /**
     * Aligns all the target DisplayObjects by their vertical center edges to the vertical center of the all the targets.
     *
     * Similar to the Flash IDE Alignment panel. 
     */
    alignVerticalCenter(targets:Vector.<DisplayObject>):Vector.<DisplayObject>

alignToLeftEdge(of:DisplayObject, ...targets)

alignLeftEdges(...targets):Array
alignRightEdges(...targets):Array
alignTopEdges(...targets):Array
alignBottomEdges(...targets):Array
alignCenters(...targets):Array

distributeByLeftEdge(...targets):Array
distributeByRightEdge(...targets):Array
distributeByTopEdge(...targets):Array
distributeByBottomEdge(...targets):Array
distributeByHorizontalCenter(...targets):Array
distributeByVerticalCenter(...targets):Array

# ARRAY

utils.array.contains():int
    badly named, should be something like numReferencesInArray, arrayRefCount
    
utils.array.copyArray()
    remove, pointless, use array.slice() instead. 
    
utils.array.createUniqueCopy
utils.array.removeDuplicates
    duplicates asx.array.unique
    
utils.array.arraysAreEqual
utils.array.equals
    duplicates
    
utils.array.getHighestValue
utils.array.getLowestValue
    use the Array constants, not magic numbers

utils.array.randomize
    too much code for what it does
    could be faster

utils.array.removeItem
utils.array.removeValueFromArray
    duplicates
    
utils.array.retainItems
    duplicates asx.array.union
    
utils.array.sum
    duplicates asx.array.sum

#  ASSERT

utils.assert.*
    suggestion: use the assertions provided by hamcrest-as3 or flexunit
    should throw an AssertionError instead of Error
    
utils.capabilities.getPlayerInfo
    dubious value
   
#   CAPABILITIES
    
utils.capabilities.isMac
utils.capabilities.isPC
    change isMac to be !isPC
    DRY

#   COLOR

utils.color.randomColor
    implementation is whack, why convert to a Number to a String to a Number?

utils.color.toGrayscale
    which reference was used for the mix ratios?

#   COOKIE

utils.cookie.setCookie
    potential global javascript namespace pollution
    
#   DATE

utils.date.toRFC822
    missing result examples, and appears to reference the wrong RFC number

utils.date.toW3CDTF
    missing result examples
    
#   DISPLAY

utils.display.addTargetToParent
    dubious value
    uses a switch for two values
    uses magic numbers
    
utils.display.Alignment
    values should be same as key
    move to utils.align.Alignment
    eg BOTTOM_LEFT:String = "BOTTOM_LEFT"
    
utils.display.sumProps
    remove
    replace with utils.number.sum, asx.object.pluck

#   ERROR

utils.error.getStackTrace
    no try-catch required
    return new Error().getStackTrace();
    dubious value

#   EVENT

utils.event.addTargetEventListener
utils.event.removeTargetEventListener
    dubious value
    
#   FRAME

utils.frame.addFrameScript
utils.frame.removeFrameScript
    needs an appropriate error message
    can multiple framescripts exist on a single frame?

#   GEOM

utils.geom.Point3D
    move static methods to instance method, both deal with Point3D as arguments, and there are already instance methods for add, subtract, offset

#   NUMBER

utils.number.clamp
utils.number.confine
utils.number.constrain
utils.range.resolve
    duplicates asx.number.bound
    replace with clamp

utils.number.insertCommas
    there is easier way to do this, using reverse, split and join
    
utils.number.isBetween
    duplicates asx.number.between
    
#   RANGE
 
utils.range.resolve
    duplicates utils.number.clamp etc
    
#   STRING

utils.string.addSlashes
    bad name, escapeChars is more accurate
    
utils.string.slashUnsafeChars
    bad name, escapeRegExpChars is more accurate
    
utils.string.constants
    bad name, separate to package level or rename
    
utils.string.firstToUpper
    bad name, rename to capitalize

utils.string.replace
    dubious value
    
utils.string.stripSlashes
    bad name, unescapeChars
     
