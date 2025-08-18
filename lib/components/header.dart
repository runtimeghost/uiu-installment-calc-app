import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) =>
            current is ThemeChangedState && previous is! AppInitial,
        builder: (context, state) {
          return Image.asset("assets/images/logo.png", height: 128);
        },
      ),
    );
  }
}
