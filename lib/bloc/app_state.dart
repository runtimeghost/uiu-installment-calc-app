part of 'app_bloc.dart';

sealed class AppState {}

final class AppInitial extends AppState {}

final class TransportToggledState extends AppState {
  final bool transport;

  TransportToggledState(this.transport);
}

final class ThemeChangedState extends AppState {
  final ThemeData theme;
  ThemeChangedState(this.theme);
}

final class CalculationFinishedState extends AppState {
  final Map<String, dynamic> result;
  CalculationFinishedState(this.result);
}

final class WaiverChangedState extends AppState {
  final double val;
  WaiverChangedState(this.val);
}
