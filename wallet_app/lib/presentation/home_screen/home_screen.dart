import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/presentation/home_screen/bloc/home_bloc.dart';
import 'package:wallet_app/core/app_export.dart';
import 'package:wallet_app/presentation/home_screen/bloc/home_bloc.dart';
import 'package:wallet_app/presentation/home_screen/bloc/home_event.dart';
import 'package:wallet_app/presentation/home_screen/bloc/home_state.dart';
import 'package:wallet_app/presentation/home_screen/models/home_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModel0bj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: SizeUtils.height,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
