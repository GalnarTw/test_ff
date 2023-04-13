import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test_ff/Screen/cart.dart';
import '../model/models.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubit/cub.dart';
import '/cubit/cub_stat.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  // var i =Images();
  // var url = GetUrl();
  // var t = Glavniy();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        // BlocBuilder<MarketCubit, MarketCubitState>(
        //   builder: (context, state) {
        //     List<Anime> marketAnime = [];
        //     if (state is MarketLoading) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     } else if (state is MarketLoaded) {
        //       marketAnime = state.animeList;
        //     } else {}
        //     return 
            Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        height: 250,
                        color: Colors.amber,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 230,
                                        width: 180,
                                        color: Colors.black,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(
                                          width: 95,
                                          height: 30,
                                          color: const Color.fromARGB(
                                              255, 102, 46, 207),
                                          child: const Text('Серий',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white38)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(children: [
                                      const Text(
                                        '',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Жанр',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25),
                                          ),
                                          Text(
                                            'Жанр',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'год',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25),
                                          ),
                                          Text(
                                            '',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'dasdasd',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ]))
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Cart(
                      //   marketAnime[0].data![1].title,
                      //   marketAnime[0].data![1].year,
                      //   marketAnime[0].data![1].genres,
                      // ),
                      Container(
                        height: 250,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        height: 250,
                        color: Colors.green,
                      ),
                      Container(
                        height: 250,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          // },
        ),
      // ),
    );
  }
}
