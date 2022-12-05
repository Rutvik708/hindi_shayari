import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hindi_shayari/fourth.dart';
import 'package:share_plus/share_plus.dart';

class third extends StatefulWidget {
  List<String> shayari;
  String titles;
  int index;

  third(this.shayari, this.titles, this.index);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  List<String> s = [];
  int index = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    s = widget.shayari;
    index = widget.index;
    pageController = PageController(initialPage: index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titles),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.lightGreen, Colors.teal])),
        ),
        elevation: 15,
        titleSpacing: 20,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: Center(
                child: Text(
              "${index + 1}/${s.length}",
              style: TextStyle(fontSize: 35, color: Colors.black),
            )),
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                index = value;
                setState(() {});
              },
              itemCount: s.length,
              itemBuilder: (context, index) {
                return ListView(
                  children: [ Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.teal, Colors.lightGreen])),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      s[index],
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
                );
              },
            ),
          ),
          Container(
              height: 70,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.lightGreen, Colors.teal])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (index != 0) {
                            index--;
                            pageController.jumpToPage(index);
                            setState(() {});
                          }
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                      )),
                  IconButton(onPressed: () {
                    FlutterClipboard.copy('hello flutter friends').then(( value ) =>
                        Fluttertoast.showToast(
                            msg: "Copied!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.white60,
                            textColor: Colors.black,
                            fontSize: 16.0
                        ));
                  }, icon: Icon(Icons.copy_outlined)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return fourth(s, index);
                          },
                        ));
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(onPressed: () {
                    Share.share(
                        'check out my website https://example.com',
                        subject: s[index]);
                  }, icon: Icon(Icons.share)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (index != s.length - 1) {
                            index++;
                            pageController.jumpToPage(index);
                            setState(() {});
                          }
                        });
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                ],
              )),
        ],
      ),
    );
  }
}
