import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ff/Screen/cart.dart';
import '../cubit/cub.dart';
import '../cubit/cub_stat.dart';
import '../model/models.dart';

class HomePage extends StatefulWidget {
   const HomePage({Key? key, this.b}) : super(key: key);
   final b;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController controllerTabs;
  late PageController controllerPages;
  late int pageIndex;
  @override
  void initState(){
    pageIndex = 0;
    controllerTabs = TabController(length: widget.b ~/ 6 + 1, vsync: this);
    // controllerTabs = TabController(length: 5, vsync: this);
    controllerPages = PageController();
     super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 102, 46, 207),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<MarketCubit, MarketCubitState>(
            builder: (context, state) {
          List<Anime> marketAnime = [];
          if (state is MarketLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MarketLoaded) {
            marketAnime = state.animeList;
          } else if (state is MarketEmpty) {}
          print('!!! $marketAnime');
          print(marketAnime[0].imag?[0].jpg!.imageUrl);

          var b = marketAnime[0].data!.length;
        //  @override
  //         void initState(){
  //   pageIndex = 0;
  //   controllerTabs = TabController(length: 5, vsync: this);
  //   controllerPages = PageController();
  //    super.initState();
  // }
//           
          // controllerTabs = TabController(length: b ~/ 6 + 1, vsync: this);
            // controllerTabs = TabController(length: 5, vsync: this);
          // controllerPages = PageController();
          // controllerPage =PageController()

          return Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                      controller: controllerPages,
                      itemCount: b,
                      onPageChanged: (indexPage) {
                        
                        setState(() {
                          pageIndex = indexPage;
                            // controllerTabs.animateTo(pageIndex);
                          
                        });
                        controllerTabs.animateTo(pageIndex);
                      },
                      itemBuilder: (_, list) {
                        return ListView.builder(
                            itemCount:
                                6 * (pageIndex + 1) > b ? b - (pageIndex * 6) : 6,
                            itemBuilder: (
                              context,
                              Pindex,
                              
                            ) {
                              if (pageIndex > 0) {
                                Pindex = Pindex + (6 * pageIndex);
                              }
                              return cart(
                                marketAnime[0].data![Pindex].malId,
                                marketAnime[0].data![Pindex].url,
                                marketAnime[0].data![Pindex].title,
                                marketAnime[0].data![Pindex].episodes,
                                marketAnime[0].data![Pindex].score,
                                marketAnime[0].data?[Pindex].year,
                                marketAnime[0].data?[Pindex].genres,
                                marketAnime[0]
                                    .data?[Pindex]
                                    .imagesg!
                                    .jpg!
                                    .imageUrl,
                              );
                            });
                      }),
                ),
                   SizedBox(
                    height: 40,
                    child: 
                    TabBar(
                      onTap: (tab) {
                        // controllerTabs.addListener(() {
                        //   // setState(() {
                            controllerPages.animateToPage(tab,
                                curve: Curves.linear,
                                duration: const Duration(seconds: 1));

                            // controllerPages.animateToPage(controllerTabs.index,curve: Curves.linear, duration: const Duration(seconds: 1));
                          // });
//                      controllerTabs.addListener(() {
                        // });
                      },
                      controller: controllerTabs,
                      indicatorPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 1,
                      ),
                      indicatorColor: const Color.fromARGB(255, 102, 46, 207),
                      indicatorWeight: 3,
                      unselectedLabelColor: Colors.grey,
                      labelColor: const Color.fromARGB(255, 102, 46, 207),
                      
                      tabs: const [
                Text('1', style: TextStyle(color: Colors.white, fontSize: 25)),
                Text('2', style: TextStyle(color: Colors.white, fontSize: 25)),
                Text('3', style: TextStyle(color: Colors.white, fontSize: 25)),
                Text('4', style: TextStyle(color: Colors.white, fontSize: 25)),
                Text('5', style: TextStyle(color: Colors.white, fontSize: 25)),
              ],
                      
                      
                      
                      
                      // tabs:


                      //  List.generate(
                      //     b ~/ 6 + 1,
                      //     (index) => Text(
                      //           '${index + 1}',
                      //         )),
                    ),
                  ),
                // ),
              ],
            ),
          );
        }));
  }
}

var g = ('https://cdn.myanimelist.net/images/anime/4/19644.jpg');
// var b = marketAnime[0].data!.length;
var k = 1 + 3;
