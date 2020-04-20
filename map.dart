void main() {

  var map = new Map();
  map['username'] = 'admin';
  map['password'] = 'admin@123';
  map['uid'] = 'id1';

  // map length
  print("Map length: ${map}");

  // map keys
  print("Map keys: ${map.keys}");

  // map values
  print("Map values: ${map.values}");

  // remove item from map
  dynamic ress = map.remove('uid');
  print("Value poped from map: ${ress}");

  print("After poped new map is: ${map}");

  // print map via foreach loop
  map.forEach((k,v) => print("${k}:${v}"));

}