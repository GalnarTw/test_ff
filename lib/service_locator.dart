
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:test_ff/http_gg.dart';
import 'package:test_ff/uscases/Anime_uscas.dart';
import '/cubit/cub.dart';
import '/cubit/cub_stat.dart';
final sl = GetIt.instance;

Future<void> init() async {
  //BLOC / Cubit
  sl.registerFactory(
    () => MarketCubit(
      getAnime: sl(),
    ),
  );
  
  //UseCases
  // sl.registerLazySingleton(() => GetAnime(sl()));
  
  // //Repository
  // sl.registerLazySingleton<PhoneRepository>(() => PhoneRepositoryImpl(
  //       remoteDataSource: sl(),
  //       localDataSource: sl(),
  //       networkInfo: sl(),
  //     ));
  
  sl.registerLazySingleton(
      () => GetUrl());
  // sl.registerLazySingleton<PhonesLocalDataSource>(
  //     () => PhonesLocalDataSourceImpl());

  //External
  sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton(() => Dio());
}