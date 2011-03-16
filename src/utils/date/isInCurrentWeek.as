package utils.date
{
    public function isInCurrentWeek(date:Date):Boolean
    {
        var today:Date = new Date();
        var startOfWeek:Date = getStartOfWeek(today);

        var millisecondsDifference:Number = getTimeBetween(startOfWeek, date);

        var b:Boolean;
        b = millisecondsDifference < TimeRelationships.WEEK_IN_MILLISECONDS;
        b &&= millisecondsDifference >= 0;
        return b;
    }
}