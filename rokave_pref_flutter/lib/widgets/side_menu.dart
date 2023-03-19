import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rokave_pref_flutter/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeaderCustom(),
          ListTile(leading: const Icon(Icons.pages_outlined),
          title: const Text('Home'),
          onTap: () =>{
          Navigator.pushReplacementNamed(context, HomeScreen.routeName)
          },),
          ListTile(leading: const Icon(Icons.people_outline),
          title: const Text('People'),
          onTap: () =>{

          },),
          ListTile(leading: const Icon(Icons.settings_applications_outlined),
          title: const Text('Setting'),
          onTap: () =>{
           Navigator.pushReplacementNamed(context, SettingsScreen.routeName)
          },)



        ],
      ),
    );
  }
}

class _DrawerHeaderCustom extends StatelessWidget {
  const _DrawerHeaderCustom();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/menu-img.jpg'),fit: BoxFit.cover)),
              
          
    );
  }
}
