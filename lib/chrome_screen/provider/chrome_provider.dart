
import 'package:flutter/material.dart';

class Chrome_provider extends ChangeNotifier
{

  double progress = 0;
  String searchtxt= "Google";

  void onprogress(int progress)
  {
    this.progress=progress/100;
    notifyListeners();
  }

  void Search(String searchtxt)
  {
    this.searchtxt=searchtxt;
    notifyListeners();
  }


}