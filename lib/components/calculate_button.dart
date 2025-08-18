import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';

class CalculateButton extends StatelessWidget {
  final TextEditingController balance;
  const CalculateButton(this.balance, {super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {
        double value;
        try {
          value = balance.text.trim().isEmpty
              ? 0.0
              : double.parse(balance.text.trim());
        } on FormatException {
          value = 0.0;
        }
        AppBloc.data["balance"] = value;
        context.read<AppBloc>().add(CalculationRequestedEvent());
      },
      label: Text("Calculate", style: TextStyle(fontFamily: "Quicksand")),
      icon: Icon(Icons.calculate),
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 24)),
        fixedSize: WidgetStatePropertyAll(Size(256, 64)),
      ),
    );
  }
}
