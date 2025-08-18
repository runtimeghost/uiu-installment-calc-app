import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';
import 'package:uiu_ic/components/balance_field.dart';
import 'package:uiu_ic/components/calculate_button.dart';
import 'package:uiu_ic/components/header.dart';
import 'package:uiu_ic/components/result_dialog.dart';
import 'package:uiu_ic/components/transport_check.dart';
import 'package:uiu_ic/components/waiver_field.dart';

class HomePage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listenWhen: (previous, current) => current is CalculationFinishedState,
      listener: (context, state) {
        if (state is CalculationFinishedState) {
          showDialog(
            context: context,
            builder: (context) => ResultDialog(state.result),
          );
        }
      },
      buildWhen: (previous, current) =>
          current is ThemeChangedState || current is AppInitial,
      builder: (context, state) {
        ThemeData currentTheme;
        IconData iconData;
        if (state is ThemeChangedState && state.theme == AppBloc.darkTheme) {
          currentTheme = state.theme;
          iconData = Icons.dark_mode;
        } else {
          currentTheme = AppBloc.lightTheme;
          iconData = Icons.light_mode;
        }
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              "UIU Installment Calculator",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () =>
                    context.read<AppBloc>().add(ThemeChangeEvent(currentTheme)),
                icon: Icon(iconData),
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 32,
                children: [
                  HeaderImage(),
                  WaiverField(),
                  TransportCheck(),
                  BalanceField(controller),
                  Expanded(child: Center(child: CalculateButton(controller))),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
