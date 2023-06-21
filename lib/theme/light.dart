import 'package:flutter/material.dart';

import 'app_light_colors.dart';

ThemeData _themeLight = ThemeData.light();

ThemeData themeLight = _themeLight.copyWith(
  // useMaterial3: true,
  colorScheme: _schemeLight(_themeLight.colorScheme),
  // appBarTheme: _appBarLight(_themeLight.appBarTheme),
  bottomNavigationBarTheme:
      _botNavBarLight(_themeLight.bottomNavigationBarTheme),
  elevatedButtonTheme: ElevatedButtonThemeData(style: _buttonLight),
  inputDecorationTheme: _textFieldLight(_themeLight.inputDecorationTheme),
  cardTheme: _cardLight(_themeLight.cardTheme),
  chipTheme: _chipLight(_themeLight.chipTheme),
  dialogTheme: _dialogLight(_themeLight.dialogTheme),
  primaryColorDark: AppLightColors.mainColor,
  textTheme: _textLight(_themeLight.textTheme),
);

ColorScheme _schemeLight(ColorScheme base) {
  return base.copyWith(
    primary: AppLightColors.backColorDark,
    onPrimary: AppLightColors.mainColor,
    primaryContainer: AppLightColors.mainColor,
  );
}

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    headlineMedium: base.headlineMedium!.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppLightColors.backColorMedium,
    ),
  );
}

AppBarTheme _appBarLight(AppBarTheme base) {
  return base.copyWith(
    backgroundColor: AppLightColors.backColorDark,
    centerTitle: false,
    foregroundColor: AppLightColors.mainColor,
  );
}

BottomNavigationBarThemeData _botNavBarLight(
    BottomNavigationBarThemeData base) {
  return base.copyWith(
    backgroundColor: AppLightColors.backColorMedium,
    selectedItemColor: AppLightColors.mainColor,
  );
}

ButtonStyle _buttonLight = ElevatedButton.styleFrom(
    backgroundColor: AppLightColors.mainColor,
    foregroundColor: Colors.black,
    shape: const StadiumBorder());

InputDecorationTheme _textFieldLight(InputDecorationTheme base) {
  return base.copyWith(
    floatingLabelStyle: const TextStyle(color: AppLightColors.mainColor),
    suffixIconColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) => states.contains(MaterialState.focused)
          ? AppLightColors.mainColor
          : AppLightColors.backColorMedium,
    ),
    labelStyle: const TextStyle(color: AppLightColors.backColorMedium),
    focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppLightColors.mainColor)),
  );
}

CardTheme _cardLight(CardTheme base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    clipBehavior: Clip.hardEdge,
    elevation: 8,
    margin: const EdgeInsets.all(12),
    color: AppLightColors.mainColorLight,
  );
}

ChipThemeData _chipLight(ChipThemeData base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    showCheckmark: false,
    padding: const EdgeInsets.all(8),
    backgroundColor: AppLightColors.backColorDark,
    selectedColor: AppLightColors.mainColor,
    disabledColor: AppLightColors.backColorLight,
    brightness: Brightness.dark,
    shadowColor: _themeLight.scaffoldBackgroundColor,
    selectedShadowColor: AppLightColors.backColorDark,
    elevation: 8,
  );
}

DialogTheme _dialogLight(DialogTheme base) {
  return base.copyWith(backgroundColor: Colors.grey);
}
