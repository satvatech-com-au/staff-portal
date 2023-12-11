
import 'package:device_preview/device_preview.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/dashboard.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/navigation_bar.dart';
import 'features/authentication/presentation/bloc_provider.dart';
import 'features/authentication/presentation/widgets/exports/exports.dart';


Future< void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(
    //   DevicePreview(
    // enabled: !kReleaseMode,
    //  builder: (context) =>   MyApp(showHome: showHome),
    //   ),
    MyApp(),
   );
   
 
}

class MyApp extends StatelessWidget {
  final bool? showHome;

 const MyApp({
    Key? key,
    this.showHome,
  }) : super(key: key);

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
                // ProfilePage()
                // showHome! ? const AdminLoginScreen() : const OnboardingScreen2(),
                // MyHomePage()
              //  Attendance()
                // Home() 
                // Dashboard()
            BottomNavBar()
            // ProfilePage()
              // Pending()
              // More()
              // Payroll()
              // RequestedLeave()
              // Leaves()
              
              // BottomNav()
              // Alert()
                  //  CreateApplicaton()
                  //  OnboardingScreen2()
                );
          }),
    );
  }
}
