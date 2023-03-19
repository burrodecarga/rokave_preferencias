import 'package:flutter/material.dart';
import 'package:rokave_pref_flutter/share_preferences/preferences.dart';
import 'package:rokave_pref_flutter/widgets/widgets.dart';
class HomeScreen extends StatelessWidget {

  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Dark Mode :${Preferences.isDark}'),
          const Divider(),
           Text('Género : ${Preferences.gender}'),
          const Divider(),
           Text('Nombre de Usuario : ${Preferences.name}'),
          const Divider(),
           const Text('Correo'),
          const Divider(),
        ]
      )
    );
  }
}
