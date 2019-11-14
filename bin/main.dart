// Challenge
// Flatten a list
// Create a function that takes a list. This list can have all kinds of items, even other lists. The function should return a single, flat, one-dimensional, list with all elements. Here are the conditions:
//
// - If the item is a list, include each item in it and the following still apply:
// - If the item is a Function, include the function's output, not the function itself.
// - If the item is a plain Object or a Primitive, include it as is.

// Example
// flattenList([1, "2", [3, function () { return 4; }, [ "five" ], "six", true, { prop: "val" }]])
//  ➞ [1, "2", 3, 4, "five", "six", true, { prop: "val" }]

List flattenList(List initialList){
  List finalList = [];
  for (int i = 0; i < initialList.length; i++) {
    if (initialList[i] is List) {
      finalList.addAll(flattenList(initialList[i]));
    }
    else if (initialList[i] is Function) {

      finalList.add(initialList[i]());
    }
    else {
      finalList.add(initialList[i]);
    }
  }
  return finalList;
}
main() {

  print(flattenList([[1], 2, [[3,4], 5], [[[]]], [[[6]]], 7, 8, []]));
}

