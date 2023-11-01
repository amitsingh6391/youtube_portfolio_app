import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_portfolio_app/core/theme/colors.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        background: YoutubePortfolioColors.lightBackgroundColor,
      ),
      appBarTheme: AppBarTheme(
        color: YoutubePortfolioColors.lightBackgroundColor,
        centerTitle: false,
        titleTextStyle: GoogleFonts.roboto().copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w400,
          color: YoutubePortfolioColors.blackTextColor,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: YoutubePortfolioColors.blackTextColor,
      ),
      buttonTheme: ButtonThemeData(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        buttonColor: YoutubePortfolioColors.lightBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              YoutubePortfolioColors.lightBackgroundColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal()),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: YoutubePortfolioColors.lightBackgroundColor,
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
            color: YoutubePortfolioColors.blackTextColor,
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 32,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 28,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          titleSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          labelMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          labelSmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: YoutubePortfolioColors.blackTextColor,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: YoutubePortfolioColors.blackTextColor,
          ),
        ),
      ),
    );

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    background: YoutubePortfolioColors.darkBackgroundColor,
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
    color: YoutubePortfolioColors.darkBackgroundColor,
    centerTitle: false,
    titleTextStyle: GoogleFonts.roboto().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: YoutubePortfolioColors.lightBackgroundColor,
    ),
  ),
  buttonTheme: ButtonThemeData(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    buttonColor: YoutubePortfolioColors.darkBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          YoutubePortfolioColors.darkBackgroundColor),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: YoutubePortfolioColors.blackColor),
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
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 28,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: YoutubePortfolioColors.lightBackgroundColor,
      ),
    ),
  ),
);
