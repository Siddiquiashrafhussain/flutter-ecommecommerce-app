

class TPricingCalculator{

  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice  * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location){
     double taxRate = getTaxRateForLocation(location);
     double taxAmount = productPrice  * taxRate;
     return taxAmount.toStringAsFixed(2);

  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the give location from o tax database or ApI.
    // Return the appropriate tax rat.
    return 0.10; // Example tax rate of 10%
  }
  static double getShippingCost (String location){
    //Lookup the shipping cost for the given location using a shipping rat API.
    // Calculate the shipping cost based on various factors like distance. weight,etc.
    return 5.00; // Example shipping cost of $5
  }
  /// - sum all cart values and return total amount
  // static double calculateCartTotal(carModel cart) {
  // return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice +(currentPrice ?? 0));
 // }





}