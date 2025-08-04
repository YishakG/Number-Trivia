import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_numbers_trivia.dart';

import '../../../../helper/test_helper.mocks.dart';

void main (){
  late MockNumbersTriviaRepository mockNumbersTriviaRepository;
  late GetConcreteNumbersTrivia getConcreteNumbersTrivia;

  setUp((){
    mockNumbersTriviaRepository = MockNumbersTriviaRepository();
    getConcreteNumbersTrivia = GetConcreteNumbersTrivia(mockNumbersTriviaRepository);
  });
  const testNumber = 1;
  const testNumberEntity = NumberTriviaEntity(text: "first number", number: testNumber);

  test('should get trivia for the number from the repository',

    () async {
  
      // arrange
      when(mockNumbersTriviaRepository.getConcreteNumberTrivia(testNumber)).thenAnswer((_) async => Right(testNumberEntity));
  
      // act
      final result = await mockNumbersTriviaRepository.getConcreteNumberTrivia(testNumber);
  
      // assert
      expect(result, Right(testNumberEntity));
      verify(mockNumbersTriviaRepository.getConcreteNumberTrivia(testNumber)).called(1);
      verifyNoMoreInteractions(mockNumbersTriviaRepository);
  
    }
  );
}