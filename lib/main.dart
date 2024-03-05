import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/models/game_info.dart';
import 'package:trabajo_practico_final/providers/theme_provider.dart';
import 'package:trabajo_practico_final/helpers/preferences.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.initShared();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeProvider>(
        create: (_) => ThemeProvider(isDarkMode: Preferences.darkmode))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GamePedia App',
        theme: Provider.of<ThemeProvider>(context, listen: true).temaActual,
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomeScreen(),
          'listadoRegistrosPersonajes': (context) =>
              const ListadoRegistrosPersonajes(),
          'listadoRegistroPersonaje': (context) =>
              const ListadoRegistroPersonaje(),
          'cardPersonaje': (context) => const CardPersonaje(),
          'game_list': (context) => const GameList(),
        });
  }
}

void navigateToGameInfo(BuildContext context, GameInfo game) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => GameInfoScreen(game: game),
    ),
  );
}
