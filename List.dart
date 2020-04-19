void main() {

  print("List View");

  var list = [1,2,3,4,5];

  print("List is: ${list}");

  // add element to the list
  list.add(20);

  print("Added List is: ${list}");

  // add multiple element on list
  list.addAll([21,22,23]);

  print("Multiple Added list is: ${list}");

  //insert item on specific position to the list
  list.insert(0,0);

  print("Specific position list is: ${list}");

  //insert multiple item on specific position to the list

  list.insertAll(1,[40,41]);  

  print("Insert multiple item list is: ${list}");

  // list reversed
  list.reversed;

  print("Reversed List is: ${list}");

}