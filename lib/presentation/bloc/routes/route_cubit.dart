import 'package:derana_multipart/domain/usecases/routes/first_time_checker_usecase.dart';
import 'package:derana_multipart/domain/usecases/routes/first_time_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteCubit extends Cubit<bool> {
  final FirstTimeUsecase firstTimeUsecase;
  final FirstTimeCheckerUsecase firstTimeCheckerUsecase;

  RouteCubit(
      {required this.firstTimeUsecase, required this.firstTimeCheckerUsecase})
      : super(false);

  Future<void> firstTimeDone() async {
    firstTimeUsecase.execute();
  }

  Future<bool> isFirstTime() async {
    return await firstTimeCheckerUsecase.execute();
  }
}
