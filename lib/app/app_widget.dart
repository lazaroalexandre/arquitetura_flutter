import 'package:arquitetura_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<HomeController>();
    return ValueListenableBuilder(
        valueListenable: controller.themeSwitch,
        builder: (context, value, child) {
          controller.init();
          return MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: controller.isDark ? ThemeData.dark() : ThemeData.light(),
            routerConfig: Modular.routerConfig,
          );
        });
  }
}
