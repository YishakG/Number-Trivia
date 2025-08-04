import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/platform/network_info.dart';
import 'package:number_trivia/features/number_trivia/data/dataSources/numbers_trivia_local_data_sources.dart';
import 'package:number_trivia/features/number_trivia/data/dataSources/numbers_trivia_remote_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/repositories/numbers_trivia_repository_impl.dart';

class MockRemoteDataSource extends Mock implements NumbersTriviaRemoteDataSource{

}

class MockLocalDataSource extends Mock implements NumbersTriviaLocalDataSource{

}

class MockNetworkInfo extends Mock implements NetworkInfo{

}

void main(){
  NumbersTriviaRepositoryImpl numbersTriviaRepositoryImpl;

  MockLocalDataSource mockLocalDataSource;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp((){
    mockNetworkInfo = MockNetworkInfo();
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    numbersTriviaRepositoryImpl = NumbersTriviaRepositoryImpl(
      numbersTriviaRemoteDataSource: mockRemoteDataSource,
      numbersTriviaLocalDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo, 
    );
  });
}