import 'main.dart';
import 'package:test/test.dart';

void main(){
  function(){
    return [4,8,12];
  }
  test("Test case for flattened list", (){
    expect(flattenList([1, "2", [3,  function, [ "five" ], "six", true, { 'prop': "val" }]]), [1, "2", 3, 4,8,12, "five", "six", true, { 'prop': "val" }]);
  });
}