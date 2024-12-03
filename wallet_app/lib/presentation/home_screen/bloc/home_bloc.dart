import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/utils/navigator_service.dart';
import 'package:wallet_app/presentation/home_screen/bloc/home_state.dart';
import 'package:wallet_app/presentation/home_screen/models/home_model.dart';
import 'package:wallet_app/routes/app_routes.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }
  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.statisticScreen,
      );
    });
  }
}
