import 'package:equatable/equatable.dart';
import 'package:wallet_app/presentation/home_screen/models/home_model.dart';

class HomeState extends Equatable {
  HomeState({this.homeModel0bj});

  HomeModel? homeModel0bj;

  @override
  List<Object?> get props => [homeModel0bj];
  HomeState copyWith({HomeModel? homeModelobj}) {
    return HomeState(
      homeModel0bj: homeModel0bj ?? this.homeModel0bj,
    );
  }
}
