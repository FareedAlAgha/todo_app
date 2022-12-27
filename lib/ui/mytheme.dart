import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFF5D9CEc);
  static const Color colorGrey = Color(0xFFC8C9CB);

  static const Color lightScaffoldBackground = Color(0xFFDFECDB);
  static final lightTheme = ThemeData(
      primaryColor: lightPrimary,
      appBarTheme: AppBarTheme(color: lightPrimary),
      scaffoldBackgroundColor: lightScaffoldBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
         elevation: 0 ,
        selectedIconTheme: IconThemeData(
          color: lightPrimary,
          size: 36,
        ),
        unselectedIconTheme: IconThemeData(
          color: colorGrey,
          size: 36,
        ),
      ),
        bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18) ,
              topRight:Radius.circular(18),
            )
          )
        ),
          textTheme: const TextTheme(
            headline5: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black

            ),
             headline6: TextStyle(
               fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: Colors.black


             )
          )
  );
}
