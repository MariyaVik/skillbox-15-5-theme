import 'package:flutter/material.dart';

const Color backColorDark = Colors.black54;
const Color backColorLight = Colors.black26;
const Color backColorMedium = Colors.black45;
Color mainColor = Colors.deepOrange[200]!;
Color mainColorLight = Colors.deepOrange[100]!;

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
  primaryColorDark: mainColor,
  textTheme: _textLight(_themeLight.textTheme),
);

ColorScheme _schemeLight(ColorScheme base) {
  return base.copyWith(
    primary: backColorDark,
    onPrimary: mainColor,
    primaryContainer: mainColor,
  );
}

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    headline4: base.headline4!.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: backColorMedium,
    ),
  );
}

AppBarTheme _appBarLight(AppBarTheme base) {
  return base.copyWith(
    backgroundColor: backColorDark,
    centerTitle: false,
    foregroundColor: mainColor,
  );
}

BottomNavigationBarThemeData _botNavBarLight(
    BottomNavigationBarThemeData base) {
  return base.copyWith(
    backgroundColor: backColorMedium,
    selectedItemColor: mainColor,
  );
}

ButtonStyle _buttonLight = ElevatedButton.styleFrom(
    backgroundColor: mainColor,
    foregroundColor: Colors.black,
    shape: const StadiumBorder());

InputDecorationTheme _textFieldLight(InputDecorationTheme base) {
  return base.copyWith(
    floatingLabelStyle: TextStyle(color: mainColor),
    suffixIconColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) =>
          states.contains(MaterialState.focused) ? mainColor : backColorMedium,
    ),
    labelStyle: const TextStyle(color: backColorMedium),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: mainColor)),
  );
}

CardTheme _cardLight(CardTheme base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    clipBehavior: Clip.hardEdge,
    elevation: 8,
    margin: const EdgeInsets.all(12),
    color: mainColorLight,
  );
}

ChipThemeData _chipLight(ChipThemeData base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    showCheckmark: false,
    padding: const EdgeInsets.all(8),
    backgroundColor: backColorDark,
    selectedColor: mainColor,
    disabledColor: backColorLight,
    brightness: Brightness.dark,
    shadowColor: _themeLight.scaffoldBackgroundColor,
    selectedShadowColor: backColorDark,
    elevation: 8,
  );
}

DialogTheme _dialogLight(DialogTheme base) {
  return base.copyWith(backgroundColor: Colors.grey);
}
