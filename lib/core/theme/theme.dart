import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_app/core/theme/colors.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        background: YoutubePortfolio.lightBackgroundColor,
      ),
      appBarTheme: AppBarTheme(
        color: YoutubePortfolio.lightBackgroundColor,
        centerTitle: false,
        titleTextStyle: GoogleFonts.roboto().copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w400,
          color: YoutubePortfolio.blackTextColor,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: YoutubePortfolio.blackTextColor,
      ),
      buttonTheme: ButtonThemeData(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        buttonColor: YoutubePortfolio.lightBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              YoutubePortfolio.lightBackgroundColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal()),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: YoutubePortfolio.lightBackgroundColor,
          ),
        ),
        labelStyle: TextStyle(
          color: Color(0xff253157),
        ),
        hintStyle: TextStyle(
          color: Color(0xff253157),
        ),
      ),
      textTheme: GoogleFonts.robotoTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 57,
            color: YoutubePortfolio.blackTextColor,
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 32,
            color: YoutubePortfolio.blackTextColor,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 28,
            color: YoutubePortfolio.blackTextColor,
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24,
            color: YoutubePortfolio.blackTextColor,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: YoutubePortfolio.blackTextColor,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: YoutubePortfolio.blackTextColor,
          ),
          titleSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: YoutubePortfolio.blackTextColor,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: YoutubePortfolio.blackTextColor,
          ),
          labelMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: YoutubePortfolio.blackTextColor,
          ),
          labelSmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: YoutubePortfolio.blackTextColor,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: YoutubePortfolio.blackTextColor,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: YoutubePortfolio.blackTextColor,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: YoutubePortfolio.blackTextColor,
          ),
        ),
      ),
    );

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    background: YoutubePortfolio.darkBackgroundColor,
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
    ),
  ),
  chipTheme: const ChipThemeData(
    shape: StadiumBorder(),
    padding: EdgeInsets.all(8),
  ),
  appBarTheme: AppBarTheme(
    color: YoutubePortfolio.darkBackgroundColor,
    centerTitle: false,
    titleTextStyle: GoogleFonts.roboto().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: YoutubePortfolio.lightBackgroundColor,
    ),
  ),
  buttonTheme: ButtonThemeData(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    buttonColor: YoutubePortfolio.darkBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          YoutubePortfolio.darkBackgroundColor),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: YoutubePortfolio.blackColor),
    ),
    labelStyle: TextStyle(
      color: Color(0xff253157),
    ),
    hintStyle: TextStyle(
      color: Color(0xff253157),
    ),
  ),
  textTheme: GoogleFonts.robotoTextTheme(
    const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 57,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 28,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: YoutubePortfolio.lightBackgroundColor,
      ),
    ),
  ),
);
