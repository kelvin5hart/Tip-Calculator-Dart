import 'dart:io'; 
import 'dart:convert';

void main() {
  print("Welcome to the tip calculator");
  print("What was the total bill? ");
  String? bill = stdin.readLineSync(); 
  print("What percentage tip would you like to give? 10, 12, or 15? ");
  String? tip = stdin.readLineSync(); 
  print("How many people to split the bill? ");
  String? people = stdin.readLineSync(); 
  double tipPercent = 1 + int.parse(tip.toString()) / 100;
  double eachBill = (double.parse(bill.toString()) / int.parse(people.toString())) * tipPercent;
  print("Each person should pay: $eachBill");
}
