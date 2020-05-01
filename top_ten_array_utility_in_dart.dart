void main()
{
  
  print("No: 1");
  print("Example: forEach()");

  var fruits = ['banana', 'pineapple', 'watermelon'];
  
  fruits.forEach((fruit) => print(fruit)); //output: => banana pineapple watermelon

  print("-----------------");

  print("No: 2");
  print("Example: map()");

  var mappedFruits = fruits.map((fruit) => 'I love $fruit').toList();
  print(mappedFruits); //output: 'I love banana', ‘I love pineapple’, ‘I love watermelon’]

  print("----------------");

  print("No: 3");
  print("Example: contains()");

  var numbers = [1,13,2,4,5];
  print(numbers.contains(2)); //output: return true

  print("----------------");

  print("No: 4");
  print("Example: sort()");

  numbers.sort((num1, num2) => num1 - num2);

  print(numbers); //output: [1, 2, 4, 5, 13]

  print("----------------");

  print("No: 5");
  print("Example: reduce(), fold()");

  var sum = numbers.reduce((curr,next) => curr + next);
  print(sum); //output: 25

  const initialValue = 10;
  var sum2 = numbers.fold(initialValue,(curr,next) => curr + next);
  print(sum2); //output: 35

  print("----------------"); 

  print("No: 6");
  print("Example: every()");

  List<Map<String,dynamic>> users = [
    {"name":"John","age":19},
    {"name":"Jane","age":20},
    {"name":"Mary","age":25},
  ];

  var is18AndOver = users.every((user) => user["age"] >= 18);
  print(is18AndOver); //output: true

  var hasNameWithJ = users.every((user) => user["name"].startsWith('J'));
  print(hasNameWithJ); //output: false

  print("----------------"); 

  print("No: 7");
  print("Example: where(), firstWhere(), singleWhere()");

  var over21s = users.where((user) => user["age"] > 21);
  print(over21s.length); //output: 1

  var nameJ = users.firstWhere((user) => user["name"].startsWith('J'),
  orElse: () => null);

  print(nameJ); //output: {name: John, age: 19}

  var under18s = users.singleWhere((user) => user["age"] < 18, orElse: () => null);
  print(under18s); //output: null

  print("----------------"); 

  print("No: 8");
  print("Example: take(), skip()");

  var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
  print(fiboNumbers.take(3).toList()); //output: [1, 2, 3]
  print(fiboNumbers.skip(5).toList()); //output:[13, 21]
  print(fiboNumbers.take(3).skip(2).take(1).toList()); //output: [3]

  print("----------------"); 

  print("No: 9");
  print("Example: List.form()");
  
  var clonedFiboNumbers = List.from(fiboNumbers);
  print("Cloned list: $clonedFiboNumbers"); //output: [1, 2, 3, 5, 8, 13, 21]

  print("----------------"); 

  print("No: 10");
  print("Example: expand()");

  var pairs = [[1,2],[3,4]];
  var flattend = pairs.expand((pair) => pair).toList();
  print('Flattend result: $flattend'); //output: Flattend result: [1, 2, 3, 4]

  var input = [1,2,3];
  var duplicated = input.expand((i) => [i,i,i]).toList();
  print(duplicated); //output: [1, 1, 1, 2, 2, 2, 3, 3, 3]

  print("----------------"); 

}