import 'package:arquitetura_flutter/app/modules/home/models/user_model.dart';
import 'package:arquitetura_flutter/app/modules/home/components/list_tile_widget.dart';
import 'package:arquitetura_flutter/app/modules/home/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListUserWidget extends StatefulWidget {
  const ListUserWidget({super.key});

  @override
  State<ListUserWidget> createState() => _ListUserWidgetState();
}

class _ListUserWidgetState extends State<ListUserWidget> {
  final userController = Modular.get<UserController>();

  @override
  void initState() {
    super.initState();
    userController.getUsers();
  }

  @override
  void dispose() {
    userController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: userController.users,
      builder: (_, value, __) {
        if (userController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (userController.error.value.isNotEmpty) {
          return Center(
            child: Text(userController.error.value),
          );
        }
        if (userController.users.value.isEmpty) {
          return const Center(
            child: Text("Não existem contatos registrados!"),
          );
        }
        return ListView.builder(
          itemCount: userController.users.value.length,
          itemBuilder: (_, index) {
            final UserModel model = userController.users.value[index];
            return ListTileWidget(model: model);
          },
        );
      },
    );
  }
}