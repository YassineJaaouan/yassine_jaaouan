import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_technique/screens/post_list_home.dart';
import 'package:test_technique/utilities/constant.dart';

class UploadVideo extends StatefulWidget {
  const UploadVideo({Key? key}) : super(key: key);

  @override
  State<UploadVideo> createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo>
    with TickerProviderStateMixin {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return _isLoading
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitCircle(
                color: Color(0xffBFAB88),
                size: 100.0,
                controller: AnimationController(
                    vsync: this, duration: const Duration(seconds: 1)),
              ),
            ],
          )
        : SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 150,
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white.withOpacity(0.05),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/back.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Upload Video',
                              style: uploadTextStyle,
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(),
                ]),
              ),
              Container(
                height: deviceSize.height - 220,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Title Video'),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Video Name',
                              fillColor: Color(0xffF2F4F7),
                              filled: true,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text('Description'),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText:
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing 😍',
                              hintMaxLines: 5,
                              fillColor: Color(0xffF2F4F7),
                              filled: true,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _isLoading = true;
                                });
                                Timer(Duration(seconds:3),(){
                                  Navigator.of(context).pushReplacementNamed(PostListHome.routeName);
                                });
                              },
                              child: Text('Upload'),
                              style: uploadButtonStyle),
                        ),
                      ]),
                ),
              ),
            ]),
          );
  }
}
