class Utils {
  static String getPriceChange(double price) {
    return (price >= 0 ? '+' : '') + (price).toStringAsFixed(1);
  }

  static String getPrice(double price) {
    return '\$${(price).toStringAsFixed(1)}';
  }
}
