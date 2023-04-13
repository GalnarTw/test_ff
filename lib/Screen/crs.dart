import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ff/Screen/cart.dart';
import '../cubit/cub.dart';
import '../cubit/cub_stat.dart';
import '../model/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FixedExtentScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 102, 46, 207),
        automaticallyImplyLeading: false,
      ),
      body:BlocBuilder<MarketCubit, MarketCubitState>(
        builder: (context, state) {
          List<Anime> marketAnime = [];
          if (state is MarketLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MarketLoaded) {
            marketAnime = state.animeList;
          } else if(state is MarketEmpty){}
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    
                    // cart(
                    // marketAnime[0].data![1].malId,
                    //   marketAnime[0].data![1].url,
                    //   marketAnime[0].data![1].title,
                    //   marketAnime[0].data![1].episodes,
                    //   marketAnime[0].data![1].score,
                    //   marketAnime[0].data![1].year,
                    //   marketAnime[0].data![1].genres,
                      
                    // ),
                    // cart(

                    // ),
                    // cart(

                    // ),
                    // cart(

                    // ),
                    const DefaultTabController(
                      length: 5,
                      child: SizedBox(
                        height: 40,
                        child: TabBar(
                          indicatorPadding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 1,
                          ),
                          indicatorColor: Color.fromARGB(255, 102, 46, 207),
                          indicatorWeight: 3,
                          unselectedLabelColor: Colors.grey,
                          labelColor: Color.fromARGB(255, 102, 46, 207),
                          tabs: [
                            Text('1'),
                            Text('2'),
                            Text('3'),
                            Text('4'),
                            Text('5'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

var g = ('https://cdn.myanimelist.net/images/anime/4/19644.jpg');
