// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:on_budget/src/data/models/home/size_predictor_model.dart';

class SizePredictorStates {}

class SizePredictorInitial extends SizePredictorStates {}

class SizePredictorWaiting extends SizePredictorStates {}

class SizePredictorLoaded extends SizePredictorStates {
  SizePredictorModel sizePredictorModel;
  SizePredictorLoaded({
    required this.sizePredictorModel,
  });
}

class SizePredictorError extends SizePredictorStates {
  final String message;
  SizePredictorError(this.message);
}
