/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Sep 30, 2010
 * Time: 1:00:51 PM
 */
package utils.geom {
import flash.geom.Point;

    /**
    * Converts polar coordinates to cartesian coordinates.
    * @param r The r value of the polar coordinate.
    * @param q The q value of the polar coordinate in degrees.
    */

    public function polarToCartesianCoordinates(r:Number, q:Number) : Point {

        var asRadian:Number = q * Math.PI/180

        var x:Number = r * Math.cos(asRadian);
        var y:Number = r * Math.sin(asRadian);

        return new Point(x,y)
    }

}