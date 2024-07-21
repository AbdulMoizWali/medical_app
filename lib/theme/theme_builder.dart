    import 'package:flutter/material.dart';
    import 'package:medical_app/theme/theme_colors.dart';
    import 'package:google_fonts/google_fonts.dart';

    class ThemeBuilder {
      static ThemeData buildTheme(BuildContext context, Brightness brightness) {
        ThemeColors themeColors = LightThemeColors();
        if (brightness == Brightness.dark) {
          themeColors = DarkThemeColors();
        }

        return ThemeData(
          useMaterial3: true,
          splashColor: themeColors.primaryColor,
          colorScheme: ColorScheme.fromSeed(
            seedColor: themeColors.primaryColor,
            brightness: brightness,
          ),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: themeColors.textColor,
            displayColor: themeColors.textColor,
          ),
          iconTheme: IconThemeData(
            color: themeColors.primaryVariantColor,
            size: 30,
          ),
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
              foregroundColor: themeColors.primaryColor,
              backgroundColor: themeColors.primaryVariantColor,
              fixedSize: const Size.square(60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: themeColors.primaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: themeColors.primaryColor,
              foregroundColor: themeColors.primaryVariantColor,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              backgroundColor: themeColors.primaryColor,
              foregroundColor: themeColors.primaryVariantColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        );
      }
    }
    