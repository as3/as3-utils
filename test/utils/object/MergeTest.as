package utils.object
{
	import org.hamcrest.assertThat;

	public class MergeTest
	{		
		[Test]
		public function copiesEnumerablePropertiesAndValuesFromSourceToTarget():void 
		{
			var source:Object = { a: 1, d: 4 };
			var target:Object = { a: 0, b: 2, c: 3 }

			assertThat(merge(target, source), hasAnyProperties({ a: 1, b: 2, c: 3, d: 4 }));
		}
	}
}