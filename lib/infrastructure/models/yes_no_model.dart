import 'package:escuadron_suicida/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Message toMessageEntity() => Message(
      text: answer == 'yes'
          ? 'Sí'
          : answer == 'no'
              ? 'No'
              : 'Quizás',
      fromWho: FromWho.hers,
      imageUrl: image,
      // imageUrl: 'https://yesno.wtf/assets/' + image,
              );
}
