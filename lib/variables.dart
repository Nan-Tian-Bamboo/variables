void main() {
  varexample();
  Objectexample();
  stringexample();
  String? name = null;
  print(name);
  String name1 = 'Jack';
  print(name1);
  int? lineCount2;
  assert(lineCount2 == null);
  int lineCount1 = 0;
  int lineCount;
  var weLikeToCount = true;
  if (weLikeToCount) {
    lineCount = countLines();
  } else {
    lineCount = 0;
  }

  print(lineCount);
  late();
  late String temperature = readThermometer();
  print(temperature);
  finalexample();
  constexample();
  example();
  const Object i = 3;
  const list = [i as int];
  const map = {if (i is int) i: 'int'};
  const set = {if (list is List<int>) ...list};
  print(i);
  print(list);
  print(map);
  print(set);
}

String readThermometer() {
  return '37';
}

int countLines() {
  return 1;
}

void varexample() {
  var name = 'Bob';
  print('var name:$name');
}

void Objectexample() {
  Object name = 'Bob';
  print('Object name: $name');
}

void stringexample() {
  String name = 'Bob';
  print('String name:$name');
}

void late() {
  late String description;

  description = 'Feijoada!';
  print(description);
}

void finalexample() {
  final name = 'Bob';
  final String nickname = 'Bobby';
  print(name);
  print(nickname);
}

void constexample() {
  const bar = 1000000;
  const double atm = 1.01325 * bar;
  print(bar);
  print(atm);
}

void example() {
  var foo = const [];
  final bar = const [];
  const baz = [];
  foo = [1, 2, 3];
  print(foo);
  print(bar);
  print(baz);
}
