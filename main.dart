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

  switch (size) {
    case 'small':
      print('Total price for $amount small pizza(s): $totalSmall USD');
      break;
    case 'medium':
      print('Total price for $amount medium pizza(s): $totalMedium USD');
      break;
    case 'large':
      print('Total price for $amount large pizza(s): $totalLarge USD');
      break;
    default:
      print('Invalid pizza size entered.');
  
  }

}