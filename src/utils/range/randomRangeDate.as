/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Sep 26, 2010
 * Time: 1:59:33 PM
 */
package utils.range {

    /**
	 * Returns a random date within a given range
	 */

    public function randomRangeDate(date1:Date, date2:Date) : Date {

        if(date1.getTime() == date2.getTime()){

            throw new Error("Dates specified are the same")

        }

        if(date2.getTime() < date1.getTime() ){

            var temp:Date = date1;

            date1 = date2;
            date2 = temp;

        }

        var diff:Number = date2.getTime() - date1.getTime();

        var rand:Number = Math.random() * diff;

        var time:Number = date1.getTime() + rand;

        var d:Date = new Date();
        d.setTime(time)

        return d;

    }

}