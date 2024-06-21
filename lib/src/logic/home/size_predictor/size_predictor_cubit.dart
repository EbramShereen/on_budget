import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/data/models/home/size_predictor_model.dart';
import 'package:on_budget/src/data/repository/home/size_product/size_product_repository.dart';
import 'package:on_budget/src/logic/home/size_predictor/size_predictor_states.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class SizePredictorCubit extends Cubit<SizePredictorStates> {
  final SizePredictorRepository sizePredictorRepository;

  SizePredictorCubit({required this.sizePredictorRepository})
      : super(SizePredictorInitial());

  Future<void> getSizePredictor(
      double height, double weight, double age) async {
    emit(SizePredictorWaiting());
    try {
      final result = await sizePredictorRepository.getSizeRepository(
        height: height,
        weight: weight,
        age: age,
        url: Product().sizePrediction,
      );
      print(state);
      print(result);
      emit(SizePredictorLoaded(sizePredictorModel: result));
    } catch (e) {
      emit(SizePredictorError('There was an error: $e'));
    }
  }
}
