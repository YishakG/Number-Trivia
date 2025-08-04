import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/errors/failures.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/numbers_trivia_repository.dart';

class GetRandomNumberTrivia {
  final NumbersTriviaRepository numbersTriviaRepository;
  GetRandomNumberTrivia(this.numbersTriviaRepository);

  Future<Either<Failure,NumberTriviaEntity>> execute(){
    return numbersTriviaRepository.getRandomNumberTrivia();
  }
}