import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'user_list_view.dart';
import 'user_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewModel()..fetchUsers(),
      child: MaterialApp(
        home: UserListView(),
      ),
    );
  }
}
