import "package:flutter/material.dart";

class MaterialTheme {
  const MaterialTheme();

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffa53c00),
      surfaceTint: Color(0xffa53c00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff56721),
      onPrimaryContainer: Color(0xff521a00),
      secondary: Color(0xff934a2a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffa17b),
      onSecondaryContainer: Color(0xff783618),
      tertiary: Color(0xff6d5e00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc2ab25),
      onTertiaryContainer: Color(0xff4a3f00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff261813),
      onSurfaceVariant: Color(0xff594138),
      outline: Color(0xff8d7166),
      outlineVariant: Color(0xffe1bfb3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d27),
      inversePrimary: Color(0xffffb598),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff370e00),
      primaryFixedDim: Color(0xffffb598),
      onPrimaryFixedVariant: Color(0xff7e2c00),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff370e00),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff753315),
      tertiaryFixed: Color(0xfffde35a),
      onTertiaryFixed: Color(0xff211b00),
      tertiaryFixedDim: Color(0xffdfc741),
      onTertiaryFixedVariant: Color(0xff524700),
      surfaceDim: Color(0xffeed5cc),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xffffe9e2),
      surfaceContainerHigh: Color(0xfffde3da),
      surfaceContainerHighest: Color(0xfff7ddd4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff632100),
      surfaceTint: Color(0xffa53c00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbe4600),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5f2306),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa55837),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3f3600),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7d6d00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff1a0e09),
      onSurfaceVariant: Color(0xff473128),
      outline: Color(0xff664d43),
      outlineVariant: Color(0xff82675d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d27),
      inversePrimary: Color(0xffffb598),
      primaryFixed: Color(0xffbe4600),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff953500),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa55837),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff874122),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7d6d00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff625500),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdac1b9),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfffde3da),
      surfaceContainerHigh: Color(0xfff1d8cf),
      surfaceContainerHighest: Color(0xffe5ccc4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff521a00),
      surfaceTint: Color(0xffa53c00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff822e00),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff521a00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff783618),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff342c00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff554900),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff3c271f),
      outlineVariant: Color(0xff5c443a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3c2d27),
      inversePrimary: Color(0xffffb598),
      primaryFixed: Color(0xff822e00),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5d1e00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff783618),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5b2004),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff554900),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3b3200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcbb4ab),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffede7),
      surfaceContainer: Color(0xfff7ddd4),
      surfaceContainerHigh: Color(0xffe8cfc6),
      surfaceContainerHighest: Color(0xffdac1b9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb598),
      surfaceTint: Color(0xffffb598),
      onPrimary: Color(0xff591d00),
      primaryContainer: Color(0xfff56721),
      onPrimaryContainer: Color(0xff521a00),
      secondary: Color(0xffffb598),
      onSecondary: Color(0xff581e02),
      secondaryContainer: Color(0xff753315),
      onSecondaryContainer: Color(0xfffb9e78),
      tertiary: Color(0xffdfc741),
      onTertiary: Color(0xff393000),
      tertiaryContainer: Color(0xffc2ab25),
      onTertiaryContainer: Color(0xff4a3f00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1d100b),
      onSurface: Color(0xfff7ddd4),
      onSurfaceVariant: Color(0xffe1bfb3),
      outline: Color(0xffa88a7f),
      outlineVariant: Color(0xff594138),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff7ddd4),
      inversePrimary: Color(0xffa53c00),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff370e00),
      primaryFixedDim: Color(0xffffb598),
      onPrimaryFixedVariant: Color(0xff7e2c00),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff370e00),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff753315),
      tertiaryFixed: Color(0xfffde35a),
      onTertiaryFixed: Color(0xff211b00),
      tertiaryFixedDim: Color(0xffdfc741),
      onTertiaryFixedVariant: Color(0xff524700),
      surfaceDim: Color(0xff1d100b),
      surfaceBright: Color(0xff463630),
      surfaceContainerLowest: Color(0xff170b07),
      surfaceContainerLow: Color(0xff261813),
      surfaceContainer: Color(0xff2a1c17),
      surfaceContainerHigh: Color(0xff352721),
      surfaceContainerHighest: Color(0xff41312b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd3c2),
      surfaceTint: Color(0xffffb598),
      onPrimary: Color(0xff471500),
      primaryContainer: Color(0xfff56721),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd3c2),
      onSecondary: Color(0xff471500),
      secondaryContainer: Color(0xffd07b57),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff6dc55),
      onTertiary: Color(0xff2c2500),
      tertiaryContainer: Color(0xffc2ab25),
      onTertiaryContainer: Color(0xff262000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1d100b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff8d5c8),
      outline: Color(0xffcbab9f),
      outlineVariant: Color(0xffa88a7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff7ddd4),
      inversePrimary: Color(0xff802d00),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff250700),
      primaryFixedDim: Color(0xffffb598),
      onPrimaryFixedVariant: Color(0xff632100),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff250700),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff5f2306),
      tertiaryFixed: Color(0xfffde35a),
      onTertiaryFixed: Color(0xff151100),
      tertiaryFixedDim: Color(0xffdfc741),
      onTertiaryFixedVariant: Color(0xff3f3600),
      surfaceDim: Color(0xff1d100b),
      surfaceBright: Color(0xff52413a),
      surfaceContainerLowest: Color(0xff0f0503),
      surfaceContainerLow: Color(0xff281a15),
      surfaceContainer: Color(0xff33251f),
      surfaceContainerHigh: Color(0xff3e2f29),
      surfaceContainerHighest: Color(0xff4a3a34),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece6),
      surfaceTint: Color(0xffffb598),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb090),
      onPrimaryContainer: Color(0xff1c0500),
      secondary: Color(0xffffece6),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffb090),
      onSecondaryContainer: Color(0xff1c0500),
      tertiary: Color(0xfffff0b2),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdbc33d),
      onTertiaryContainer: Color(0xff0e0b00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1d100b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece6),
      outlineVariant: Color(0xffddbbaf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff7ddd4),
      inversePrimary: Color(0xff802d00),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb598),
      onPrimaryFixedVariant: Color(0xff250700),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb598),
      onSecondaryFixedVariant: Color(0xff250700),
      tertiaryFixed: Color(0xfffde35a),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffdfc741),
      onTertiaryFixedVariant: Color(0xff151100),
      surfaceDim: Color(0xff1d100b),
      surfaceBright: Color(0xff5e4c46),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff2a1c17),
      surfaceContainer: Color(0xff3c2d27),
      surfaceContainerHigh: Color(0xff483832),
      surfaceContainerHighest: Color(0xff54433d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    fontFamily: "Quicksand",
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
