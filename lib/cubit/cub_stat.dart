
import 'package:equatable/equatable.dart';
import '/model/models.dart';

abstract class MarketCubitState extends Equatable {
  const MarketCubitState();

  @override
  List<Object> get props => [];
}

class MarketEmpty extends MarketCubitState {
  @override
  List<Object> get props => [];
}

class MarketLoading extends MarketCubitState {
}

class MarketLoaded extends MarketCubitState {
final List<Anime> animeList;

  const MarketLoaded(this.animeList,);

  @override
  List<Object> get props => [animeList,];
 
}

class MarketError extends MarketCubitState {
  final String message;

  const MarketError({required this.message});
  
  @override
  List<Object> get props => [message];
}