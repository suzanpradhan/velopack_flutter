import 'package:flutter/material.dart';
import 'package:velopack_flutter/velopack_flutter.dart';

Future<void> main(List<String> args) async {
  await VelopackRustLib.init();
  runApp(const MyApp());
}

class Updater extends StatefulWidget {
  const Updater({super.key});

  @override
  State<Updater> createState() => _UpdaterState();
}

class _UpdaterState extends State<Updater> {
  String logs = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () async {
              try {
                await updateAndRestart(url: 'https://suzanpradhan.com.np/releases');
              } catch (e) {
                setState(() {
                  logs = e.toString();
                });
              }
            },
            icon: const Icon(Icons.update))
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: currentVersion(), builder: (context, snap) => Text(snap.data.toString())),
            FutureBuilder(
              future: isUpdateAvailable(url: 'https://suzanpradhan.com.np/releases'),
              builder: (context, snap) =>
                  Text('New Update is available: ${snap.data} ${snap.error}'),
            ),
            const Updater()
          ],
        ),
      ),
    );
  }
}
