import 'package:arquitetura_flutter/app/modules/home/presentation/controllers/home_controller.dart';
import 'package:arquitetura_flutter/l10n/l10n.dart';
import 'package:arquitetura_flutter/uikit/visual_identity/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<HomeController>();
    controller.init();
    return ValueListenableBuilder<bool>(
        valueListenable: controller.themeSwitch,
        builder: (context, isDark, child) {
          return MaterialApp.router(
            title: 'Contatos do Homolazarus',
            debugShowCheckedModeBanner: false,
            theme: isDark ? darkTheme : ligthTheme,
            routerConfig: Modular.routerConfig,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: L10n.all,
          );
        });
  }
}
