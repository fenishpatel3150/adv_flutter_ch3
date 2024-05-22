import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Connectivity_Screen extends StatelessWidget {
  const Connectivity_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3f50b5),
        title: Center(
          child: Text(
            'My Orders',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Color(0xff3f50b5),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if(snapshot.data!.contains(ConnectivityResult.mobile))
            {
             return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('My App',style: TextStyle(color: Colors.white,fontSize: 25),)),
                ],
              );
            }
          else
          if(snapshot.data!.contains(ConnectivityResult.wifi))
            {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('My App',style: TextStyle(color: Colors.white,fontSize: 25),))
                ],
              );
            }
          else{
             return Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   child: Image.asset('assets/network/image2.png'),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 80),
                   child: ListTile(
                     title: Text('No Internet Connection !',style: TextStyle(color: Colors.white),),
                     subtitle: Text('Check Your network cabies.',style: TextStyle(color: Colors.white,),),
                   ),
                 )
               ],
             );
          }
        },
      ),
    );
  }
}
