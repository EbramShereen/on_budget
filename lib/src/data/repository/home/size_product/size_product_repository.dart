import 'package:on_budget/src/data/models/home/size_predictor_model.dart';
import 'package:on_budget/src/data/service/home/size_predictor/size_predictor_service.dart';

class SizePredictorRepository {
  final SizePredictorService sizePredictorService;

  SizePredictorRepository({required this.sizePredictorService});

  Future<SizePredictorModel> getSizeRepository({
    required double weight,
    required double height,
    required double age,
    required String url,
  }) async {
    final result = await sizePredictorService.getSizePredict(
      body: {
        'weight': weight,
        'age': age,
        'height': height,
      },
      url: url,
    );
    print(result);
    return SizePredictorModel.fromJson(result);
  }
}
