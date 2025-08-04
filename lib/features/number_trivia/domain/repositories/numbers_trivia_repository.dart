import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/errors/failures.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';

abstract class NumbersTriviaRepository {
  Future<Either<Failure,NumberTriviaEntity>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTriviaEntity>> getRandomNumberTrivia();
}