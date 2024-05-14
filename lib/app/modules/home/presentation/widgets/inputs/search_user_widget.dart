import 'package:arquitetura_flutter/app/modules/home/presentation/controllers/user_controller.dart';
import 'package:arquitetura_flutter/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchUserWidget extends StatelessWidget {
  SearchUserWidget({super.key});
  final userController = Modular.get<UserController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Scale.md, vertical: Scale.xs),
      child: SearchInput(
        onChanged: userController.filterUsers,
      ),
    );
  }
}
