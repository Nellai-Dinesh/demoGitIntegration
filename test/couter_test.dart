import 'package:codemagic_sample/couter.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('check value',(){
    final couter = Couter();
     expect(couter.value, 0); // Fails initially
  });

  test('Counter value should be incremented', () {
    final couter = Couter();
    couter.increment();
    expect(couter.value, 1); // Fails initially
  });
}