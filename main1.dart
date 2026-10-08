import 'dart:io';

void main() {
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  bool continueOrdering = true;
  
 
  int grandTotal = 0;

  while (continueOrdering) {
    print('Please enter your pizza size (small, medium, large): ');
    String? sizeInput = stdin.readLineSync();
    String size = sizeInput?.toLowerCase().trim() ?? '';

  
    if (size != 'small' && size != 'medium' && size != 'large') {
      print('Invalid pizza size entered. Please try again.');
      continue; // Restarts the loop from the top
    }

    print('Please enter the amount of pizzas of size $size: ');
  
    int amount = int.parse(stdin.readLineSync() ?? '0');

    if (amount <= 0) {
      print('Invalid amount. Please try again.');
      continue; 
    }

    int currentOrderPrice = 0; // Initialize the current order price for this batch

    //Calculate the price of the current batch
    switch (size) {
      case 'small':
        currentOrderPrice = 5 * amount;
        break;
      case 'medium':
        currentOrderPrice = 7 * amount;
        break;
      case 'large':
        currentOrderPrice = 10 * amount;
        break;
    }

    // Add this batch to the grand total
    grandTotal += currentOrderPrice;
    print('Price for $amount $size pizza(s): $currentOrderPrice USD');
    print('Current Grand Total: $grandTotal USD');

    //Ask if they want to continue at the END of the loop transaction
    print('Do you want to order more pizzas? (yes/no): ');
    String? continueInput = stdin.readLineSync();
    
    if (continueInput?.toLowerCase().trim() == 'no') {
      continueOrdering = false;
    }
  }

}