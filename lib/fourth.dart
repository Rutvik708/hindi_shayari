import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';

class fourth extends StatefulWidget {
  List<String> s;
  int index;

  fourth(this.s, this.index);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  List<Color> c = [
    Colors.white,
    Colors.redAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.teal,
    Colors.tealAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.lightBlue,
    Colors.pink,
    Colors.pinkAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.red,
    Colors.black,
    Colors.cyan,
    Colors.cyan,
    Colors.cyanAccent,
    Colors.brown,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.lime
  ];
  List<String> t = [
    "white",
    "redAccent",
    "yellow",
    "yellowAccent",
    "teal",
    "tealAccent",
    "purple",
    "purpleAccent",
    "blue",
    "blueAccent",
    "lightBlueAccent",
    "lightBlue",
    "pink",
    "pinkAccent",
    "orange",
    "orangeAccent",
    "red",
    "black",
    "cyan",
    "cyan",
    "cyanAccent",
    "brown",
    "lightGreen",
    "lightGreenAccent",
    "limeAccent",
    "lime"
  ];
  List<Color> b = [
    Colors.teal,
    Colors.redAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.white,
    Colors.tealAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.lightBlue,
    Colors.pink,
    Colors.pinkAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.red,
    Colors.black,
    Colors.cyan,
    Colors.cyan,
    Colors.cyanAccent,
    Colors.brown,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.lime
  ];
  List<String> e = [
    "💥 😀 😂 😁 😆 😅 ✨",
    "🔥 🙂 😃 😄 🤩 😝 🙌 🌟",
    "🌹 💖  👫 💕 😍 🥰 💐",
    "🌸 💘 🎁 👒 🥂 💝 🌼",
    "✨ 🤟 🥂 🧑‍ 🤝‍ 🧑 😎 🤩 ✨"
  ];
  List<String> f = ["family1", "family2", "family3", "family4", "family5"];
  int i = 0;
  int ii = 0;
  int iii = 0;
  int a = 0;
  double textsize = 25;

  @override
  void initState() {
    super.initState();
    creatfolde();
  }
  String folderpath = "";
  creatfolde() async {
    String path = "storage/emulated/0/Download/Love Shayari";
    Directory directory = Directory(path);

    if(await directory.exists()){
      print("Already Exist");
    }
    else{
      await directory.create();
      print("Created...");
    }
    folderpath = directory.path;
  }

  GlobalKey _globalKey = new GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
      _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);

      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(backgroundColor: Colors.teal),
        body: Column(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                child: ListView(
                  children: [
                       RepaintBoundary(key: _globalKey,
                         child: Container(
                          width: double.infinity,
                          color: b[ii],
                          margin: EdgeInsets.only(right: 20, left: 20),
                          padding: EdgeInsets.all(10),
                          child:Padding(padding: EdgeInsets.only(bottom: 1),
                            child: Text(
                              "${e[iii]} \n ${widget.s[widget.index]} \n ${e[iii]}",
                              style: TextStyle(
                                  fontFamily: f[a], fontSize: textsize, color: c[i]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                      ),
                       ),
                  ],
                ),
              ),
            ),
          Container(
              height: 200,
              color: Colors.teal,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 40,
                            Icons.sync_outlined,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.zoom_out_map_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                      height: 250,
                                      margin: EdgeInsets.all(10),
                                      child: GridView.builder(
                                        itemCount: c.length,
                                          itemBuilder: (context, index) {
                                            return GridTile(
                                                child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  ii = index;
                                                });
                                              },
                                              child: Container(
                                                color: b[index],
                                              ),
                                            ));
                                          },
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 4,
                                                  childAspectRatio: 1,
                                                  crossAxisSpacing: 10,
                                                  mainAxisSpacing: 10)),
                                    );
                                  },
                                  context: context);
                            },
                            child: Center(
                              child: Text(
                                "Background",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                        height: 250,
                                        margin: EdgeInsets.all(10),
                                        child: GridView.builder(
                                            itemCount: b.length,
                                            itemBuilder: (context, index) {
                                              return GridTile(
                                                child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        i = index;
                                                      });
                                                    },
                                                    child: Container(
                                                      color: c[index],
                                                    )),
                                                footer: Container(
                                                    height: 20,
                                                    color: Colors.transparent,
                                                    child: Text(
                                                      t[index],
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black),
                                                    )),
                                              );
                                            },
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 4,
                                                    childAspectRatio: 1,
                                                    mainAxisSpacing: 10,
                                                    crossAxisSpacing: 10)));
                                  },
                                  context: context);
                            },
                            child: Center(
                              child: Text(
                                "TextColor",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                      height: 250,
                                      child: StatefulBuilder(
                                        builder: (context, setState1) {
                                          return Slider(
                                            min: 25,
                                            max: 50,
                                            onChanged: (value) {
                                              textsize = value;
                                              setState1(() {});
                                              setState(() {});
                                            },
                                            value: textsize,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  context: context);
                            },
                            child: Center(
                              child: Text(
                                "FontSize",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                        height: 250,
                                        margin: EdgeInsets.all(10),
                                        child: ListView.separated(
                                            separatorBuilder: (context, index) {
                                              return Divider();
                                            },
                                            itemCount: e.length,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                onTap: () {
                                                  setState(() {
                                                    iii = index;
                                                  });
                                                },
                                                title: Text(
                                                  e[index],
                                                  textAlign: TextAlign.center,
                                                ),
                                              );
                                            }));
                                  },
                                  context: context);
                            },
                            child: Center(
                              child: Text(
                                "Emoji",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                        height: 250,
                                        child: ListView.separated(
                                          separatorBuilder: (context, index) {
                                            return Divider();
                                          },
                                          itemCount: f.length,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              onTap: () {
                                                setState(() {
                                                  a = index;
                                                });
                                              },
                                              title: Text("Shayari",style: TextStyle(fontFamily: f[index]),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                        ));
                                  },
                                  context: context);
                            },
                            child: Center(
                              child: Text(
                                "FontStyle",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                                    _capturePng().then((value) async {
                                      DateTime d = DateTime.now();
                                      print(d);

                                      String time = "${d.year}${d.month}${d.day}${d.hour}${d.minute}${d.second}${d.millisecond}";

                                      String imagepath = "${folderpath}/Image$time.jpg";

                                      File file = new File(imagepath);
                                      await file.create();

                                      file.writeAsBytesSync(value);

                                      Share.shareFiles([file.path], text: 'Great picture');
                                    });
                                },
                            child: Center(
                              child: Text(
                                "Share",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  )),
                ],
              )),
        ],
      ),
    );
  }
}
