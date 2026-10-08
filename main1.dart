import 'dart:io';

void main() {

  
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  bool continueOrdering = true;


  while (continueOrdering) {
  print('Please enter your pizza size (small, medium, large): ');
  String? sizeInput = stdin.readLineSync();
  String? size = sizeInput?.toLowerCase();

  print('Please enter the amount of pizzas of size $size: ');
  int? amount = int.parse(stdin.readLineSync()!);

  if (size == 'small' || size == 'medium' || size == 'large') {
    print('Do you want to order more pizzas? (yes/no): ');
    String? continueInput = stdin.readLineSync();
    if (continueInput?.toLowerCase() == 'yes') {
      continueOrdering = true;
    } else if (continueInput?.toLowerCase() == 'no') {
      continueOrdering = false;
    }
     else {
    print('Invalid pizza size entered. Please try again.');
  }

  int totalSmall, totalMedium, totalLarge;


    switch (size) {
      case 'small':
        totalSmall = 5 * amount; 
        print('Total price for $amount small pizza(s): $totalSmall USD');
        break;
      case 'medium':
      totalMedium = 7 * amount;
      print('Total price for $amount medium pizza(s): $totalMedium USD');
      break;
    case 'large':
      totalLarge = 10 * amount;
      print('Total price for $amount large pizza(s): $totalLarge USD');
      break;
    default:
      print('Invalid pizza size entered.');
  
  }

  }

}

}