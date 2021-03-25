import 'package:flutter/material.dart';

import '../models/colors_model.dart';
import '../models/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                iconEnabledColor: DefaultColors().primary,
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: DefaultColors().primary,
                ),
                value: selectedItem,
                onChanged: onChanged,
                items: items
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 56,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: DefaultColors().primary,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: DefaultColors().primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
