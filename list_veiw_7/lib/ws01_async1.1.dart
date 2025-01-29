double getExchangeRate() {
  double usdRate = 35.1;
  return usdRate;
}

void main() {
  print('1. start fetching data..');

  final exchangeRage = getExchangeRate();
  print('2. exchange rate = $exchangeRage');

  double usd_to_thb = 100 * exchangeRage;
  print('3. 100 USD = $usd_to_thb');
} 
