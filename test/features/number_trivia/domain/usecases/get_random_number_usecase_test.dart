import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

import '../../../../helper/test_helper.mocks.dart';

void main(){
  late MockNumbersTriviaRepository mockNumbersTriviaRepository;
  GetRandomNumberTrivia getRandomNumberTrivia;

  setUp((){
    mockNumbersTriviaRepository = MockNumbersTriviaRepository();
    getRandomNumberTrivia = GetRandomNumberTrivia(mockNumbersTriviaRepository);
  });

  final testNumberEntity = NumberTriviaEntity(text: "first number", number: 1);
  test('should get trivia for the number from the repository',

    () async {
  
      // arrange
      when(mockNumbersTriviaRepository.getRandomNumberTrivia()).thenAnswer((_) async => Right(testNumberEntity));
  
      // act
      final result = await mockNumbersTriviaRepository.getRandomNumberTrivia();
  
      // assert
      expect(result, Right(testNumberEntity));
  
    }
  );
}