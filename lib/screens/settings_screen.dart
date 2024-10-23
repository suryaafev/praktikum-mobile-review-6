import 'package:flutter/material.dart';
import 'package:pertemuan7b1/dark_mode.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Provider.of<ThemeModeData>(context).isDarkModeActive
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            title: const Text("Title"),
            trailing: Switch(
              value: Provider.of<ThemeModeData>(context).isDarkModeActive,
              onChanged: (bool value) {
                Provider.of<ThemeModeData>(context, listen: false).changeTheme(
                  value ? ThemeMode.dark : ThemeMode.light,
                );
              },
            ),
            onTap: () {
              Provider.of<ThemeModeData>(context, listen: false).changeTheme(
                Provider.of<ThemeModeData>(context, listen: false)
                        .isDarkModeActive
                    ? ThemeMode.light
                    : ThemeMode.dark,
              );
            },
          )
        ],
      ),
    );
  }
}
