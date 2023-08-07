void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');

  print('Reverse: ${numbers.reversed}');

  final reversdedNumbers = numbers.reversed;
  print('Iterable: $reversdedNumbers');
  print('List: ${reversdedNumbers.toList()}');
  print('Set: ${reversdedNumbers.toSet()}');

  final numbersGreatherThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('>5 Iterable: $numbersGreatherThan5');
  print('>5 Set: ${numbersGreatherThan5.toSet()}');
}
