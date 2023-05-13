import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubit/cub.dart';
import '/Screen/screen.dart';
import 'Screen/KOLYAN.dart';
import 'Screen/crs.dart';
import 'cubit/cub_stat.dart';
import 'model/models.dart';
import 'service_locator.dart';
import '/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MarketCubit>(
          create: (context) => sl<MarketCubit>()..testMarket(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: 
          
          
          BlocBuilder<MarketCubit, MarketCubitState>(
            builder: (
              context,
              state,
            ) {
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
              return  HomePage(b: b,);
            },
          ),
          // HomePage();
        ),
      ),
    );
  }
}







// import "package:flutter/material.dart";

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         "/": (context) => InitialPage(),  //This is what you are missing i guess
//         "/home": (context) => HomePage(),
//         "/page1": (context) => FirstScreen(),
//       },
//     );
//   }
// }

// class InitialPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Initial Page")),
//       body: Center(
//         child: TextButton(
//           child: Text("Goto HomePage"),
//           onPressed: () {
//             Navigator.pushNamed(
//                 context,
//                 "/home"
//             );
//           },
//         ),
//       ),
//     );
//   }
// }