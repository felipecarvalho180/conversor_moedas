import 'package:currency_converter/app/components/currency_box.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/colors_model.dart';
import 'package:flutter/material.dart';

import '../models/colors_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            children: [
              Image.asset(
                'assets/images/currency-logo.png',
                width: 200,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  items: homeController.currencies,
                  controller: fromText,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  items: homeController.currencies,
                  controller: toText,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.convert();
                },
                child: Text('Converter'),
                style: ElevatedButton.styleFrom(
                  primary: DefaultColors().secondary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
