import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubit/cub.dart';
import '/Screen/screen.dart';
import 'Screen/crs.dart';
import 'service_locator.dart';
import '/service_locator.dart' as di;
void main() async {
 WidgetsFlutterBinding();
 await di.init();
   runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
providers: [
  BlocProvider<MarketCubit>(create: (context)=> sl<MarketCubit>()..loadMarket,)
  ],
      child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home:  Scaffold(
            body: HomePage(),
      )),
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