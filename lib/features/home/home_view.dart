import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/app/di.dart';
import 'package:task/features/home/drawer_view.dart';
import 'package:task/features/home/widgets/products_list_view.dart';

import 'managers/products_cubit/products_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        di(),
      )..getProducts(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
        ),
        drawer: const DrawerView(),
        body: const ProductsListView(),
      ),
    );
  }
}
