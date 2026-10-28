import 'package:flutter/material.dart';
import 'package:kottra/l10n/app_localizations.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navTasks)),
      body: Center(child: Text(l10n.navTasks)),
    );
  }
}