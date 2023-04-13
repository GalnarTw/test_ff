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

      })
      : super(MarketEmpty());

  void testMarket() async {
    print('test work');
    loadMarket();
  }

  void loadMarket() async {
    if (state is MarketLoading) return;
    print('loadMarket work');
    final currentState = state;
    if (currentState is MarketLoaded) {
      // print('Anime');
    }
    List<Anime> animePhone = [];

    emit(MarketLoading());
    final failureOrMarketHome = await getAnime.get();
    print(failureOrMarketHome);

    emit(MarketLoaded(
      animePhone,
    ));

    animePhone.add(failureOrMarketHome);

    // failureOrPhoneHome.fold(
    //     (error) => emit(PhoneListError(message: _mapFailureToMessage(error))),
    //     (phoneHome) {
    //   phonesHome.homeStore!.addAll(phoneHome.homeStore!);
    //   phonesHome.bestSeller!.addAll(phoneHome.bestSeller!);
    // });

    emit(MarketLoaded(
      animePhone,
    ));
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
