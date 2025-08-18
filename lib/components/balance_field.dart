import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';

class BalanceField extends StatelessWidget {
  final TextEditingController controller;
  const BalanceField(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Enter your current Ucam balance: ",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        prefixIcon: Icon(Icons.monetization_on),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      onFieldSubmitted: (value) {
        AppBloc.data["balance"] = value.trim().isEmpty
            ? 0.0
            : double.parse(value.trim());
        context.read<AppBloc>().add(CalculationRequestedEvent());
      },
    );
  }
}
