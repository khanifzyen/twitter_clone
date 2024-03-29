import 'package:flutter/material.dart';
import 'package:twitter_clone/features/auth/controller/auth_controller.dart';
// import 'features/auth/view/login_view.dart';
import 'common/common.dart';
import 'features/home/view/home_view.dart';
import 'features/auth/view/signup_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: ref.watch(currentUserAccountProvider).when(
            data: (user) {
              if (user != null) {
                return const HomeView();
              }
              return const SignUpView();
            },
            error: (error, stackTrace) => ErrorPage(
              error: error.toString(),
            ),
            loading: () => const LoadingPage(),
          ),
    );
  }
}
