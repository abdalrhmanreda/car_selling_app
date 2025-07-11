import 'package:bloc/bloc.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:sayaraty/config/routes/router.dart';
import 'package:sayaraty/config/routes/routes_path.dart';
import 'package:sayaraty/core/cache/shared_pref.dart';
import 'package:sayaraty/core/di/dependancy_injection.dart';
import 'package:sayaraty/core/observer/bloc_observer.dart';
import 'package:sayaraty/sayaraty_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة Firebase مرة واحدة فقط
  // if (Firebase.apps.isEmpty) {
  //   await Firebase.initializeApp();
  // }

  await SharedPrefService().init();
  Bloc.observer = MyBlocObserver();

  bool isFirstTime = SharedPrefService().getBool('isFirstTime') ?? true;
  String userId = SharedPrefService().getString('userId') ?? '';

  // تعيين قيمة افتراضية لـ initRoute
  String initRoute = RoutePath.getStarted;

  if (isFirstTime && userId.isNotEmpty) {
    initRoute = RoutePath.login;
  } else if (isFirstTime && userId.isEmpty) {
    initRoute = RoutePath.getStarted;
  } else if (!isFirstTime && userId.isNotEmpty) {
    initRoute = RoutePath.friendList;
  } else {
    // لو الحالات مش مطابقة، نعتبر أول مرة ونخزن القيمة
    await SharedPrefService().setBool('isFirstTime', true);
  }

  await setupGetIt();

  runApp(SayaratyApp(initRoute: initRoute, appRouter: AppRouter()));
}
