import 'package:flutter/cupertino.dart';

import '../models/currency_model.dart';

class HomeController {
  List<CurrencyModel> currencies;
  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;
  final TextEditingController fromText;
  final TextEditingController toText;

  HomeController({this.fromText, this.toText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    double value = double.tryParse(fromText.text.replaceAll(',', '.')) ?? 1;
    double result = 0;

    if (toCurrency.name == 'Real') {
      result = value * fromCurrency.real;
    } else if (toCurrency.name == 'Dolar') {
      result = value * fromCurrency.dolar;
    } else if (toCurrency.name == 'Euro') {
      result = value * fromCurrency.euro;
    } else if (toCurrency.name == 'Bitcoin') {
      result = value * fromCurrency.bitcoin;
    }

    if (toCurrency.name != 'Bitcoin') {
      toText.text = result.toStringAsFixed(2);
    } else {
      toText.text = result.toString();
    }
  }
}
