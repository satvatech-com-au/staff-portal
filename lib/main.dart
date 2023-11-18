
import 'features/authentication/presentation/bloc_provider.dart';
import 'features/authentication/presentation/pages/onboarding/onboarding_screen2.dart';
import 'features/authentication/presentation/widgets/exports/exports.dart';

void main() {
  runApp(
MyApp(),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
          designSize: const Size(460, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white))
                ),
                darkTheme: ThemeData.dark(),
                home:
                   OnboardingScreen2()
                );
          }),
    );
  }
}
