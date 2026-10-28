import 'package:flutter/material.dart';
import 'package:kottra/l10n/app_localizations.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.appName)),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.homeGreeting('Deth'), style: AppTextStyles.headline),
            const SizedBox(height: AppSpacing.md),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Income: 250',
                      style: AppTextStyles.title.copyWith(
                        color: AppColors.income,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      'Expense: 80',
                      style: AppTextStyles.title.copyWith(
                        color: AppColors.expense,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            ElevatedButton(onPressed: () {}, child: const Text('Add Task')),
          ],
        ),
      ),
    );
  }
}