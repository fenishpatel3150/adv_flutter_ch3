import 'package:adv_flutter_ch3/chrome_screen/provider/chrome_provider.dart';
import 'package:adv_flutter_ch3/chrome_screen/view/chrome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Google_Screen extends StatelessWidget {
  const Google_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtsearch = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              SizedBox(
                  width: 180,
                  child:
                  Image.asset('assets/chrome/image1.png',)),
              Padding(
                padding: EdgeInsets.only(left: 25,right: 25),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius:25
                      )
                    ]
                  ),
                  child: TextFormField(
                    controller: txtsearch,
                    decoration: InputDecoration(
                        hintText: 'Search....',
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Chrome_Screen(),));
                              Provider.of<Chrome_provider>(context, listen: false).Search(txtsearch.text);
                            },
                            icon:  Icon(Icons.search)),
                        contentPadding:  EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none)),
                  ),
                ),
              ),
              Image.asset('assets/chrome/image2.png')
            ],
          ),
        ),
      ),
    );
  }
}