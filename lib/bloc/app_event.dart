part of 'app_bloc.dart';

sealed class AppEvent {}

final class TransportToggleEvent extends AppEvent {
  final bool transport;

  TransportToggleEvent(this.transport);
}

final class ThemeChangeEvent extends AppEvent {
  final ThemeData currentTheme;
  ThemeChangeEvent(this.currentTheme);
}

final class CalculationRequestedEvent extends AppEvent {}

final class WaiverChangeEvent extends AppEvent {
  final double val;
  WaiverChangeEvent(this.val);
}
