import 'main.dart';
import 'package:test/test.dart';

void main(){
  test("Test case for flattened list", (){
    expect(flattenList([1, "2", [3,  () { return 4; }, [ "five" ], "six", true, { 'prop': "val" }]]), [1, "2", 3, 4, "five", "six", true, { 'prop': "val" }]);
  });
}