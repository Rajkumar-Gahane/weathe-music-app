import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/data/data.dart';
import 'package:weather_app/device/device.dart';
import 'package:weather_app/domain/domain.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initServices();
  runApp(const MyApp());
}

/// Initialize the services before the app starts.
Future<void> initServices() async {
  Get.put(
    AuthUseCase(
      Get.put(
        Repository(
          Get.put(
            DeviceRepository(),
            permanent: true,
          ),
          Get.put(
            DataRepository(
              Get.put(
                ConnectHelper(),
                permanent: true,
              ),
            ),
            permanent: true,
          ),
        ),
        permanent: true,
      ),
    ),
    permanent: true,
  );
  await Get.putAsync(() => DbService().init());
}

/// Initialize the Database service before the material app is initialized
class DbService extends GetxService {
  Future<DbService> init() async {
    await Get.find<DeviceRepository>().init();
    return this;
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    builder: (_, __) => GetMaterialApp(
      locale: const Locale('en'),
      // title: StringConstants.appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      getPages: AppPages.pages,
      theme: ThemeData(fontFamily: 'Merriweather Sans'),
      // theme: themeData(context),
      // darkTheme: darkThemeData(context),
      translations: TranslationsFile(),
      initialRoute: AppPages.initial,
      enableLog: true,
    ),
  );
}