import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/errors/failures.dart';
import 'package:number_trivia/core/platform/network_info.dart';
import 'package:number_trivia/features/number_trivia/data/dataSources/numbers_trivia_local_data_sources.dart';
import 'package:number_trivia/features/number_trivia/data/dataSources/numbers_trivia_remote_data_source.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/numbers_trivia_repository.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class NumbersTriviaRepositoryImpl implements NumbersTriviaRepository{
  final NumbersTriviaRemoteDataSource numbersTriviaRemoteDataSource;
  final NumbersTriviaLocalDataSource numbersTriviaLocalDataSource;
  final NetworkInfo networkInfo;

  NumbersTriviaRepositoryImpl({
    required this.networkInfo,
    required this.numbersTriviaLocalDataSource,
    required this.numbersTriviaRemoteDataSource,
  });
  @override
  Future<Either<Failure, NumberTriviaEntity>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTriviaEntity>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
    // Same method as the Repository but returns exception instead of failures
}