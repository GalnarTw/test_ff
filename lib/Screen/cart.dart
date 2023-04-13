import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cub.dart';
import '../cubit/cub_stat.dart';
import '../model/models.dart';

Widget cart(
  int? malId,
  String? url,
  String? title,
  int? episodes,
  double? score,
  int? year,
  String? genres,
  String? imageg
) {
  return
  //  Scaffold(
  //   body:
     BlocBuilder<MarketCubit, MarketCubitState>(
      builder: (context, state) {
        List<Anime> marketanime = [];
        if (state is MarketLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is MarketLoaded) {
          marketanime = state.animeList;
        } else {}
        print('!!! $marketanime');
        return Padding(
          padding: const EdgeInsets.fromLTRB(4, 20, 4, 4),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 133, 16, 195).withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 12,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            height: 260,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9),
                      child: Stack(
                        children: [
                          Container(
                            height: 242,
                            width: 170,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 133, 16, 195),
                              borderRadius: BorderRadius.circular(7),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 133, 16, 195)
                                      .withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 12,
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.network(
                                imageg!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 102, 46, 207),
                                  borderRadius: BorderRadius.circular(5)),
                              width: 85,
                              height: 25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('$episodes Серий',
                                      style: const TextStyle(
                                          fontSize: 19, color: Colors.white38)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          title!,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 102, 46, 207),
                              fontWeight: FontWeight.w700,
                              fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'жанр:',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 46, 207),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '$genres',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 102, 46, 207),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'год:',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 46, 207),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '$year',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 102, 46, 207),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Icon(
                                Icons.star,
                                size: 40,
                                color: Colors.amber,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                '$score',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 102, 46, 207),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
     );
  // );
}

var g = ('https://cdn.myanimelist.net/images/anime/4/19644.jpg');
