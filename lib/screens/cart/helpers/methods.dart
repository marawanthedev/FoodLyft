double updateSubTotal(itemPrice, itemQuantity, subTotal) {
  return subTotal += (itemPrice * itemQuantity);
}

double getPickUpCharge(subTotal) {
  return (subTotal * 0.05).roundToDouble();
}

double getTax(subTotal) {
  return (subTotal * 0.02).roundToDouble();
}

double resetSubTotal() {
  return 0.0;
}

double getTotal(subTotal) {
  return getTax(subTotal) + subTotal + getPickUpCharge(subTotal);
}
