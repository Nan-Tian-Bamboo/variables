import 'dart:html';
import 'package:test/test.dart';

//import 'package:lib1/lib1.dart';
//import 'package:lib2/lib2.dart' as lib2;
//import 'package:lib1/lib1.dart' show foo;// Import only foo.
//import 'package:lib2/lib2.dart' hide foo;// Import all names EXCEPT foo.
//import 'package:greetings/hello.dart' deferred as hello;
void main() {
  /* Element element1 = Element();// Uses Element from lib1.


lib2.Element element2 = lib2.Element();// Uses Element from lib2.
*/
}
Future<void> greet() async {
  var hello;
  await hello.loadLibrary();
  hello.printGreeting();
}
/*
@TestOn('browser')
library;*/ 