import 'package:flutter/material.dart';
import 'package:kottra/l10n/app_localizations.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

class KottraApp extends StatelessWidget {
  const KottraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: appRouter,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}