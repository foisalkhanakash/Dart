enum Status {
  none,
  running,
  stopped,
  paused
}

void main() {

  print("Enumeration is: ${Status.values}");

  //print enumeration via foreach loop
  Status.values.forEach((v) => print('value: $v, index: ${v.index}'));

  //print specific data
  print('running: ${Status.running},${Status.running.index}');
  print('running index: ${Status.values[1]}');

}