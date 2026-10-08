import 'dart:io';

void main() {
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  print('Please enter your pizza size (small, medium, large): ');
  String? sizeInput = stdin.readLineSync();
  String? size = sizeInput?.toLowerCase();

  print('Please enter the amount of pizzas of size $size: ');
  int? amount = int.parse(stdin.readLineSync()!);

  int totalSmall, totalMedium, totalLarge;
  totalSmall = 5 * amount;
  totalMedium = 7 * amount;
  totalLarge = 10 * amount;

  if (size == 'small') {
    print('Total cost for $amount $size pizzas: $totalSmall USD');
  } else if (size == 'medium') {
    print('Total cost for $amount $size pizzas: $totalMedium USD');
  } else if (size == 'large') {
    print('Total cost for $amount $size pizzas: $totalLarge USD');
  } else {
    print('Invalid pizza size entered.');
  }
}