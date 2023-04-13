
import 'package:flutter_bloc/flutter_bloc.dart';
import '../http_gg.dart';
import '/error/failyre.dart';
import '../model/models.dart';
import '/uscases/Anime_uscas.dart';
import '/cubit/cub_stat.dart';
const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class MarketCubit extends Cubit<MarketCubitState> {

  // final GetAnime getAnime;
final GetUrl getAnime;
  MarketCubit({required this.getAnime
    // required this.getAnime,
  
}) : super(MarketEmpty());

  void loadMarket() async {
    if (state is MarketLoading) return;
  print('Anime');
    final currentState = state;
   if(currentState is MarketLoaded){print('Anime');}
    List<Anime> animePhone = [];
    

emit(MarketLoading());
    final failureOrMarketHome = await getAnime.get();
    

emit(MarketLoaded(animePhone,));
    failureOrMarketHome.fold(
      (error) => emit(MarketError(message: _mapFailureToMessage(error))),
      (character) => animePhone.addAll(character),
    );


    emit(MarketLoaded(animePhone,));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}