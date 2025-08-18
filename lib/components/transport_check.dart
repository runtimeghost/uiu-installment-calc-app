import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';

class TransportCheck extends StatelessWidget {
  const TransportCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) => current is TransportToggledState,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add transport fee: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                value: (state is TransportToggledState)
                    ? state.transport
                    : false,
                onChanged: (value) {
                  AppBloc.data["transport"] = value;
                  context.read<AppBloc>().add(TransportToggleEvent(value!));
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
