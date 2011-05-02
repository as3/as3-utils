package utils.object
{
	import org.hamcrest.assertThat;
import org.hamcrest.object.hasProperties;

public class MergeTest
	{		
		[Test]
		public function copiesEnumerablePropertiesAndValuesFromSourceToTarget():void 
		{
			var source:Object = { a: 1, d: 4 };
			var target:Object = { a: 0, b: 2, c: 3 }

			assertThat(merge(target, source), hasProperties({ a: 1, b: 2, c: 3, d: 4 }));
		}
	}
}