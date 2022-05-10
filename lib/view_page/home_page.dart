import 'package:flutter/material.dart';
import 'package:new_provider/state/app_state.dart';
import 'package:provider/provider.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<App_State>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("learn provider with patel ${provider.temp}")),
      ),
      body: Center(
        child: Consumer<App_State>(builder: (context,providerData,child){
          return Column(
            children: [
              Text("Hello Your Rupees ${providerData.start}"),
          ElevatedButton(onPressed: (){
            providerData.getTimer();
          }, child: Text("click update"))
            ],
          );
        },
        ),

      )
    );
  }
}
// 2nd method use the provider how to call provider current class
// class Home_Page extends StatelessWidget {
//   const Home_Page({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<App_State>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("learn provider with patel ${provider.num}")),
//       ),
//       body: Center(
//           child: Consumer<App_State>(builder: (context,providerValue,child){
//             return Column(
//               children: [
//                 Text("Hello Patel ${providerValue.num}"),
//               ],
//             );
//           })
//       ),
//     );
//   }
// }


// 1 st method use the provider class in any uses class
// class Home_Page extends StatelessWidget {
//   const Home_Page({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<App_State>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("learn provider with patel ${provider.num}")),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text("Hello Patel ${provider.temp}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

