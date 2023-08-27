import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/gen/assets.gen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      theme: theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Consumer(
              builder: (_, ref, __) {
                final isDark = ref.watch(themeSwitchProvider);
                return Switch(
                  onChanged: (value) =>
                      ref.read(themeSwitchProvider.notifier).state = value,
                  value: isDark,
                );
              },
            )
          ],
        ),
        body: Column(
          children: [
            Assets.images.uptodoLogo.svg(),
            Assets.icons.like.svg(),
          ],
        ));
  }
}

