import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';
import 'package:uiu_ic/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) =>
            current is ThemeChangedState || current is AppInitial,
        builder: (context, state) {
          return MaterialApp(
            title: 'UIU Installment Calculator',
            theme: (state is ThemeChangedState)
                ? state.theme
                : AppBloc.lightTheme,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
