import 'package:adv_flutter_ch3/chrome_screen/provider/chrome_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class Chrome_Screen extends StatelessWidget {
  const Chrome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    late InAppWebViewController inAppWebViewController;
    TextEditingController txtsearch = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)]),
          child: TextFormField(
            controller: txtsearch,
            decoration: InputDecoration(
                hintText: 'Search....',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                    onPressed: () {
                      Provider.of<Chrome_provider>(context, listen: false)
                          .Search(txtsearch.text);
                      inAppWebViewController.loadUrl(
                          urlRequest: URLRequest(
                              url: WebUri(
                                  'https://www.google.com/search?q=${Provider.of<Chrome_provider>(context, listen: false).searchtxt}&sca_esv=680b12c94771f77f&sca_upv=1&sxsrf=ADLYWIL7yMbHTwni04YbecJFVZ7z8KBb-Q%3A1716530603795&source=hp&ei=qy1QZv6-Lbux0-kPmLuOmAc&iflsig=AL9hbdgAAAAAZlA7u_40g8VdlYlIob8vNwe2yXXNXUIj&oq=&gs_lp=Egdnd3Mtd2l6IgAqAggAMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCSLwRUABYAHABeACQAQCYAQCgAQCqAQC4AQHIAQCYAgGgAgyoAgqYAwySBwExoAcA&sclient=gws-wiz')));
                    },
                    icon: Icon(Icons.search)),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none)),
          ),
        ),
      ),
      body: Stack(
        children: [
          LinearProgressIndicator(
            value: Provider.of<Chrome_provider>(context).progress,
          ),
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: WebUri(
                    'https://www.google.com/search?q=${Provider.of<Chrome_provider>(context, listen: false).searchtxt}&sca_esv=680b12c94771f77f&sca_upv=1&sxsrf=ADLYWIL7yMbHTwni04YbecJFVZ7z8KBb-Q%3A1716530603795&source=hp&ei=qy1QZv6-Lbux0-kPmLuOmAc&iflsig=AL9hbdgAAAAAZlA7u_40g8VdlYlIob8vNwe2yXXNXUIj&oq=&gs_lp=Egdnd3Mtd2l6IgAqAggAMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCMgcQIxgnGOoCSLwRUABYAHABeACQAQCYAQCgAQCqAQC4AQHIAQCYAgGgAgyoAgqYAwySBwExoAcA&sclient=gws-wiz')),
            onWebViewCreated: (controller) {
              inAppWebViewController = controller;
            },
            onProgressChanged: (controller, progress) {
              Provider.of<Chrome_provider>(context, listen: false)
                  .onprogress(progress);
            },
          ),
          (Provider.of<Chrome_provider>(context, listen: true).progress < 1)
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                    value: Provider.of<Chrome_provider>(context, listen: true)
                        .progress,
                  ),
                )
              : Container(),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                inAppWebViewController.goBack();
              },
              icon: Icon(CupertinoIcons.left_chevron)),
          IconButton(
              onPressed: () {
                inAppWebViewController.goForward();
              },
              icon: Icon(CupertinoIcons.right_chevron)),
          IconButton(
              onPressed: () {
                inAppWebViewController.reload();
              },
              icon: Icon(CupertinoIcons.refresh_thick)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_bullet)),
        ],
      ),
    );
  }
}
