import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radio_abia/core/presentation/routes/app_router.dart';
import 'package:radio_abia/core/theme/theme_mode.dart';
import 'package:radio_abia/firebase_options.dart';
import 'package:radio_abia/services/page_manager.dart';
import 'package:radio_abia/services/service_locator.dart';

Future<void> main() async {
  // Ensure that the Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await setupServiceLocator();

  
  //  Run application and set preferred orientation to portrait
  runApp(const ProviderScope(child: MyApp()));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    getIt<PageManager>().init();
  }
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      debugShowCheckedModeBanner: false,
      title: 'Abia Radio',
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      
    );
        });

    
  }
}
