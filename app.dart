import 'package:flutter/material.dart';
import 'core/app_state.dart';
import 'features/home/home_screen.dart';

class FocusCompanionApp extends StatefulWidget {
  const FocusCompanionApp({super.key});
  @override State<FocusCompanionApp> createState() => _FocusCompanionAppState();
}
class _FocusCompanionAppState extends State<FocusCompanionApp> {
  final state = AppState();
  @override void initState() { super.initState(); state.load(); }
  @override void dispose() { state.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => AnimatedBuilder(
    animation: state,
    builder: (_, __) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Focus Companion 2.0',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: HomeScreen(state: state),
    ),
  );
}
