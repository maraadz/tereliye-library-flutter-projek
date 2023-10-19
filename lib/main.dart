import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFF54B64, {
          50: Color(0xFFF78361),
          100: Color(0xFFF78361),
          200: Color(0xFFF78361),
          300: Color(0xFFF78361),
          400: Color(0xFFF78361),
          500: Color(0xFFF78361),
          600: Color(0xFFF78361),
          700: Color(0xFFF78361),
          800: Color(0xFFF78361),
          900: Color(0xFFF78361),
        }),
        scaffoldBackgroundColor: Color(0xFF4E586E), // Warna latar belakang
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(0xFFF54B64, {
            50: Color(0xFFF78361),
            100: Color(0xFFF78361),
            200: Color(0xFFF78361),
            300: Color(0xFFF78361),
            400: Color(0xFFF78361),
            500: Color(0xFFF78361),
            600: Color(0xFFF78361),
            700: Color(0xFFF78361),
            800: Color(0xFFF78361),
            900: Color(0xFFF78361),
          }),
          backgroundColor: Color(0xFF4E586E), // Warna latar belakang scaffold
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white, // Warna teks utama
            fontFamily: 'Roboto',
          ),
          bodyText2: TextStyle(
            color: Colors.white, // Warna teks utama lainnya
            fontFamily: 'Roboto',
          ),
          headline6: TextStyle(
            color: Colors.white, // Warna judul
            fontFamily: 'Roboto',
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFF54B64), // Warna tombol
            onPrimary: Colors.white, // Warna teks di atas tombol
            textStyle: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
    );
  }
}
