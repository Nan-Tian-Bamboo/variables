import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

void main() {
  var a = 0, b = 2, c = false, res;
  print('a=$a');
  print('b=$b');
  print('c=$c');
  a++;
  print('a=$a');
  res = a + b;
  print('a+b=$res');
  a = b;
  print('a=$a');
  if (a == b) {
    print('a=b');
  } else {
    print('a!=b');
  }
  res = c ? a : b;
  print(res);
  if (a is T) {
    print('a is T');
  } else {
    print('a is not T');
  }
  var n = 99, i = 3, d = 6;
  if ((n % i == 0) && (d % i == 0)) {
    print('yes');
  }
  if (n % i == 0 && d % i == 0) {
    print('yesyes');
  }
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5);
  assert(5 ~/ 2 == 2);
  assert(5 % 2 == 1);
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
  example();
  example1();
  example2();
  example4();
  example5();
  example6();
  example7();
  example8();
  String playerName(String? name) => name ?? 'Guest';
  print(playerName(null));
  String playerName1(String? name) => name != null ? name : 'Guest';
  print(playerName1('Bob'));
  print(playerName1(null));
  String name = playerName2('Amy');
  print(name);
  example9();
  example10();
  example11();
  example12();
  example13();
}

void example() {
  int a;
  int b;

  a = 0;
  b = ++a;
  assert(a == b); // 应为1=1，应该是true

  a = 0;
  b = a++;
  assert(a != b); // a=1 b= 0

  a = 0;
  b = --a;
  assert(a == b);

  a = 0;
  b = a--;
  assert(a != b);
}

void example1() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
}

void example2() {
  var employee = Person('Amy');
  (employee as Person).firstName = 'Bob';
  print(employee.firstName);
  if (employee is Person) {
    employee.firstName = 'Bob';
    print(employee.firstName);
  }
}

void example4() {
  var a, value = 3;
  int? b;
  a = value;
  b ??= value;
  print(value);
  print(a);
  print(b);
}

void example5() {
  var a = 2;
  a *= 3;
  assert(a == 6);
}

void example6() {
  bool done = false;
  var col = 0;
  if (!done && (col == 0 || col == 3)) {
    print("hello world");
  }
}

void example7() {
  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02);
  assert((value & ~bitmask) == 0x20);
  assert((value | bitmask) == 0x2f);
  assert((value ^ bitmask) == 0x2d);

  assert((value << 4) == 0x220);
  assert((value >> 4) == 0x02);

  assert((-value >> 4) != -0x03);

  assert((value >>> 4) == 0x02);
  assert((-value >>> 4) > 0);
}

void example8() {
  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);
}

String playerName2(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}

void example9() {
  var paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
}

void example10() {
  //example9和10应该是同一个功能
  var paint = Paint();
  paint.color = Colors.black;
  paint.strokeCap = StrokeCap.round;
  paint.strokeWidth = 5.0;
}

void example11() {
  querySelector('#confirm')
    ?..text = 'Confirm'
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'))
    ..scrollIntoView();
}

void example12() {
  var button = querySelector('#confirm');
  button?.text = 'Confirm';
  button?.classes.add('important');
  button?.onClick.listen((e) => window.alert('Confirmed!'));
  button?.scrollIntoView();
}

void example13() {
  final addressBook = (AddressBookBuilder()
        ..name = 'jenny'
        ..email = 'jenny@example.com'
        ..phone = (PhoneNumberBuilder()
              ..number = '415-555-0100'
              ..label = 'home')
            .build())
      .build();
}

// Error: method 'write' isn't defined for 'void'.
/*void example14(){
  var sb = StringBuffer();
  sb.write('foo')
  ..write('bar'); 
  
}*/
void example15() {
  var a, b;
  [...a + b];
}

class PhoneNumberBuilder {
  set label(String label) {}

  set number(String number) {}

  build() {}
}

class AddressBookBuilder {
  set phone(phone) {}

  set name(String name) {}

  set email(String email) {}

  build() {}
}

class Person {
  var firstName;
  Person(this.firstName);
}

class T {}
