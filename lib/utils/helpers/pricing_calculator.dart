class TPricingCalculator{
  static double calculateTotalPrice(double productPrice , String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
  static String calculatorShippingCost(double productPrice , String location){
    double ShippingCost = getShippingCost(location);
    return ShippingCost.toStringAsFixed(2);
  }
  static String calculatorTax(double productPrice , String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }
  static double getTaxRateForLocation(String location){
    return 8.10;
  }
  static double getShippingCost(String location){
    return 8.10;
  }

}