import 'package:dartz/dartz.dart';
import '../model/models.dart';
import '/error/failyre.dart';

abstract class FirstRepository {

  Future<Either<Failure, List<Anime>>> searchAnime();
  
}
