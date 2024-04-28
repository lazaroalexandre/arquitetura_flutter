import 'package:arquitetura_flutter/app/presentation/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SwitchWidget extends StatelessWidget {
  SwitchWidget({super.key});

  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: controller.themeSwitch,
        builder: (context, value, snapshot) {
          return SizedBox(
            height: 28,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Switch(
                thumbIcon: controller.isDark
                    ? const MaterialStatePropertyAll(Icon(
                        Icons.bedtime_rounded,
                      ))
                    : const MaterialStatePropertyAll(Icon(
                        Icons.auto_awesome_rounded,
                      )),
                value: controller.isDark,
                onChanged: (value) {
                  controller.changeThemeViewmodel
                      .changeValue(value);
                },
              ),
            ),
          );
        });
  }
}
