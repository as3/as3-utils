package utils.string
{
    import org.hamcrest.assertThat;
    import org.hamcrest.object.isFalse;
    import org.hamcrest.object.isTrue;

    public class stringHasValueTest
    {
        [Test]
        public function stringHasValue_is_true_for_a_string_with_a_value():void
        {
            var stringDoesHaveValue:Boolean;

            stringDoesHaveValue = stringHasValue("someString");

            assertThat(
                    "The string has a value.",
                    stringDoesHaveValue,
                    isTrue()
                    );
        }

        [Test]
        public function stringHasValue_is_false_for_a_string_with_no_value():void
        {
            var noCharStringHasValue:Boolean;

            noCharStringHasValue = stringHasValue("");

            assertThat(
                    "The string has no value.",
                    noCharStringHasValue,
                    isFalse()
                    );
        }

        [Test]
        public function stringHasValue_is_false_for_null():void
        {
            var nullHasValueAsString:Boolean;

            nullHasValueAsString = stringHasValue(null);

            assertThat(
                    "Null has no value.",
                    nullHasValueAsString,
                    isFalse()
                    );
        }
    }
}