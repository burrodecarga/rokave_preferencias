import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rokave_pref_flutter/provider/theme_provider.dart';
import 'package:rokave_pref_flutter/screens/screens.dart';
import 'package:rokave_pref_flutter/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
     
    providers: [ChangeNotifierProvider(create: ( _ )=>ThemeProvider(isDark: Preferences.isDark))],
    child: const MyApp() ,)
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: ({
        HomeScreen.routeName: (_) => HomeScreen(),
        SettingsScreen.routeName: (_) => SettingsScreen(),
      }),
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
