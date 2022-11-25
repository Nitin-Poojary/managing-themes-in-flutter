import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'themes/bloc/theme_manager_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        actions: [
          BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
              builder: (context, state) {
            if (state is CurrentTheme) {
              bool switchValue =
                  state.themeMode == ThemeMode.light ? false : true;
              return Switch(
                value: switchValue,
                onChanged: (newValue) {
                  BlocProvider.of<ThemeManagerBloc>(context).add(
                    ToggleTheme(
                      isDark: switchValue,
                    ),
                  );
                },
              );
            }
            return Switch(
              value: false,
              onChanged: (newValue) {
                BlocProvider.of<ThemeManagerBloc>(context).add(
                  const ToggleTheme(
                    isDark: true,
                  ),
                );
              },
            );
          })
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Some Text",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
