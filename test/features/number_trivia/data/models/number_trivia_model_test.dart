import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';

import '../../../../helper/readJson.dart';

void main() {
  final testNumberTriviaModel = NumberTriviaModel(
    number: 1,
    text: "1 is the first number",
  );
  test('should be a subclass of Number Trivia Entity', () async {
    // assert
    expect(testNumberTriviaModel, isA<NumberTriviaEntity>());
  });

  test('should return a valid model from a json', () async {
    // arrange
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helper/dummy_data/dummy_numbers_trivia.json'),
    );

    // act
    final result = await NumberTriviaModel.fromJson(jsonMap);

    // assert
    expect(result, equals(testNumberTriviaModel));
  });

  test('should return a json map from a Number Trivia Model',
    () async {
  
      // arrange
  
      // act
      final result = await testNumberTriviaModel.toJson();
  
      // assert
      final expectedJson = {
        'number':1,
        'text':'1 is the first number',
        'found':true,
        'type':'trivia'
      };

      expect(result, equals(expectedJson));
  
    }
  );
}
