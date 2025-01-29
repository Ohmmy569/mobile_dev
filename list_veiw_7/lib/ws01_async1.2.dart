Future<double> loadDataFromNet() async {
  await Future.delayed(Duration(seconds: 3)); // fetch data from a web
  return 35.1;
}

void main() {
  print('1. start fetching data..');

  final exchangeRage = loadDataFromNet();
  print('2. exchange rate = $exchangeRage');

  // double usd_to_thb = 100 * exchangeRage;
  print('3. 100 USD = ');
} 