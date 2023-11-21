import 'package:flutter/material.dart';
import 'package:task/features/home/drawer_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const DrawerView(),
      body: const Center(
        child: Text('home'),
      ),
    );
  }
}
