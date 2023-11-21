import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/app/di.dart';
import 'package:task/features/home/managers/me_cubit/me_cubit.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MeCubit(
        di(),
      )..getProfileData(), 
      child: Drawer(
        child: BlocBuilder<MeCubit, MeState>(
          builder: (context, state) {
            if (state is MeLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            if (state is MeFailure) {
              return Center(
                child: Text(state.message),
              );
            }
            if (state is MeLoaded) {
              return Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        Text(
                          state.meModel.data?.name ?? '',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                            Text(
                              '+${state.meModel.data?.dialCode.toString() ?? ''}' , 
                            ), 
                            const SizedBox(width: 5), 
                            Text( 
                              state.meModel.data?.phone.toString() ?? '' , 
                            ), 
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
