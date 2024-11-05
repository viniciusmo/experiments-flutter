import 'package:design_system/app.dart';
import 'package:design_system/app_text.dart';
import 'package:design_system/button.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Design System Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> profile = [
    {'title': 'Name', 'value': 'Alexandru'},
    {'title': 'Username', 'value': 'nank1ro'},
  ];

  void _showEditProfileDialog(BuildContext context) {
    showShadDialog(
      context: context,
      builder: (context) {
        return ShadDialog(
          title: const Text('Edit Profile'),
          description: const Text(
              "Make changes to your profile here. Click save when you're done"),
          child: Container(
            width: 375,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: profile
                  .map(
                    (p) => Row(
                  children: [
                    Expanded(
                      child: Text(
                        p['title']!,
                        textAlign: TextAlign.end,
                        style: ShadTheme.of(context).textTheme.small,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 3,
                      child: ShadInput(
                        initialValue: p['value'],

                      ),
                    ),
                  ],
                ),
              )
                  .toList(),
            ),
          ),
          actions: [
            ShadButton(
              child: const Text('Save changes'),
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Changes saved!')),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button.outline(
              text: const Text('Edit Profile'),
              onPressed: () => _showEditProfileDialog(context),
            ),
            const SizedBox(height: 20),
            const AppText.h1Large('Design System Components'),
          ],
        ),
      ),
    );
  }
}
