/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Sep 30, 2010
 * Time: 11:50:50 AM
 */
package utils.geom
{
import flash.geom.Point;

import org.flexunit.asserts.assertEquals;
import org.flexunit.asserts.assertTrue;

import utils.geom.cartesianToPolarCoordinates;
import utils.geom.polarToCartesianCoordinates;

public class PolarToCartesianCoordinatesTest
    {

		[Before]
		public function setup():void
		{

		}

		[Test]
		public function PolarToCartesianCoordinatesReturnsProperCoords():void
		{

           var cartesianPoint:Point = polarToCartesianCoordinates(5, 53.13010235415598);

           assertEquals(3, cartesianPoint.x); 
		   assertEquals(4, cartesianPoint.y);

        }

	}
}