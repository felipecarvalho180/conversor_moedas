import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homeController = HomeController(fromText: fromText, toText: toText);

  test('teste de numero digitado com virgula', () {
    fromText.text = '2,0';
    homeController.convert();
    expect(toText.text, '0.36');
  });

  test('teste de conversão de real para dolar', () {
    fromText.text = '2';
    homeController.convert();
    expect(toText.text, '0.36');
  });

  test('teste de conversão de real para euro', () {
    fromText.text = '2';
    homeController.toCurrency = CurrencyModel(
        name: 'Euro', real: 6.54, dolar: 1.18, euro: 1.0, bitcoin: 0.000022);
    homeController.convert();
    expect(toText.text, '0.30');
  });

  test('teste de conversão de real para bitcoin', () {
    fromText.text = '2';
    homeController.toCurrency = CurrencyModel(
        name: 'Bitcoin',
        real: 300484.92,
        dolar: 54419.90,
        euro: 45935.02,
        bitcoin: 1.0);
    homeController.convert();
    expect(toText.text, '0.0000066');
  });
}
