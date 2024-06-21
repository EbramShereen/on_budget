class SizePredictorModel {
  final String? predictedSize;

  SizePredictorModel({required this.predictedSize});

  factory SizePredictorModel.fromJson(Map<String, dynamic> json) {
    return SizePredictorModel(
      predictedSize: json['predicted_size'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'predicted_size': predictedSize,
    };
  }
}
