import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musify/core/res/material_colours.g.dart';
import 'package:musify/core/res/text_styles.dart';
import 'package:musify/core/services/injection_container.dart';
import 'package:musify/core/services/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.lato(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
          bodyLarge: GoogleFonts.lato(
                fontSize: 24,
              ),
          labelLarge: GoogleFonts.lato(
                fontSize: 18,
              ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextStyles.textTheme,
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
