
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/attendance.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/leaves/leaves.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/leaves/requested_leaves.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/payrol.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/tab_control_pages/pending.dart';


import 'features/authentication/presentation/bloc_provider.dart';
import 'features/authentication/presentation/pages/onboarding/onboarding_screen2.dart';
import 'features/authentication/presentation/pages/screens/buttom_navigation.dart';
import 'features/authentication/presentation/pages/screens/create_application.dart';
import 'features/authentication/presentation/widgets/exports/exports.dart';

void main() {
  runApp(
    //   DevicePreview(
    // enabled: !kReleaseMode,
    //  builder: (context) =>   MyApp(),
    //   ),
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
                 useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                home:
                // MyHomePage()
              //  Attendance()
                // Home()
            
              // Pending()
              // More()
              // Payroll()
              // RequestedLeave()
              // Leaves()
              BottomNav( )
                  //  CreateApplicaton()
                  //  OnboardingScreen2()
                );
          }),
    );
  }
}
