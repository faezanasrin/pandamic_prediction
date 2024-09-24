import 'package:flutter/material.dart';
import 'package:pandemic/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/Black_and_Red_Hand_Heart_Healthy_Logo__1_-removebg-preview.png',
        height: 300,
        ),
        
        ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async{
   await Future.delayed(Duration(seconds: 3));
   Navigator.of(context).push(
    MaterialPageRoute(
      builder: (ctx)=> ScreenLogin()));
  }
}