import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';

class NumberTriviaModel extends NumberTriviaEntity{
  NumberTriviaModel({required super.number,
  required super.text});
  
  factory NumberTriviaModel.fromJson(Map<String,dynamic> json) => NumberTriviaModel(number: json['number'], text: json['text']);

  Map<String, dynamic> toJson () => {
    'number':number,
    'text':text,
    'found':true,
    'type':'trivia'
  };
}