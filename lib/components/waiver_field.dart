import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/bloc/app_bloc.dart';

class WaiverField extends StatelessWidget {
  const WaiverField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Waiver selector
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Waiver/scholarship: ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        BlocBuilder<AppBloc, AppState>(
          buildWhen: (previous, current) => current is WaiverChangedState,
          builder: (context, state) {
            double value = 0.0;
            if (state is WaiverChangedState) {
              value = state.val;
            }
            return DropdownButton(
              value: value,
              items: [
                DropdownMenuItem(
                  value: 0.0,
                  child: Text("No Waiver/Scholarship"),
                ),
                DropdownMenuItem(value: 0.25, child: Text("25%")),
                DropdownMenuItem(value: 0.5, child: Text("50%")),
                DropdownMenuItem(value: 1.0, child: Text("100%")),
              ],
              onChanged: (value) {
                context.read<AppBloc>().add(WaiverChangeEvent(value as double));
                AppBloc.data["waiver"] = value;
              },
            );
          },
        ),
      ],
    );
  }
}
