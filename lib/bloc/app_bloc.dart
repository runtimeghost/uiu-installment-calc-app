import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uiu_ic/themes/theme.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  static final ThemeData darkTheme = MaterialTheme().dark();
  static final ThemeData lightTheme = MaterialTheme().light();

  static Map<String, dynamic> data = {
    "balance": 0.0,
    "waiver": 0.0,
    "transport": false,
  };

  AppBloc() : super(AppInitial()) {
    on<TransportToggleEvent>(
      (event, emit) => emit(TransportToggledState(event.transport)),
    );

    on<ThemeChangeEvent>((event, emit) {
      emit(
        ThemeChangedState(
          (event.currentTheme == lightTheme) ? darkTheme : lightTheme,
        ),
      );
    });

    on<CalculationRequestedEvent>((event, emit) {
      double balance = data["balance"];

      if (balance <= 0) {
        return;
      }

      balance = balance - ((balance - 6500) * data["waiver"]);

      int first = (balance * 0.4).ceil();
      balance -= first;

      int second = (balance * 0.5).ceil();
      balance -= second;

      if (data["transport"]) {
        first += 4000;
      }

      emit(
        CalculationFinishedState({
          "first": first,
          "second": second,
          "third": balance.ceil(),
        }),
      );
    });

    on<WaiverChangeEvent>((event, emit) => emit(WaiverChangedState(event.val)));
  }
}
