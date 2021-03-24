import 'package:currency_converter/app/models/colors_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/images/currency-logo.png'),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  DropdownButton(items: []),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Converter'),
              style: ElevatedButton.styleFrom(
                primary: DefaultColors().secondary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
