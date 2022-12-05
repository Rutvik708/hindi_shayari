import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hindi_shayari/first.dart';
import 'package:permission_handler/permission_handler.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    next();
  }

  next()
  async {
    var status = await Permission.storage.status;
    var status1 = await Permission.camera.status;

    if(status.isDenied || status1.isDenied)
      {
        await [Permission.storage,Permission.camera].request();
      }

    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return first();
    },));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 50,
        widthFactor: 50,
        child: Image.asset("image/login.png")
      ),
    );
  }


}
