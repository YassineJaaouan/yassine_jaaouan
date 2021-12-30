import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_technique/models/post_model.dart';
import 'package:test_technique/utilities/constant.dart';

class PostListHome extends StatefulWidget {
  const PostListHome({Key? key}) : super(key: key);
  static const routeName = '/PostList';

  @override
  _PostListHomeState createState() => _PostListHomeState();
}

class _PostListHomeState extends State<PostListHome> {
  final List<PostModel> postData = [
    PostModel(
        userImage: 'assets/images/user.png',
        userName: 'Daniela Fernández Ramos',
        video: 'assets/images/firstvideo.png',
        timePostCreated: '1 minute ago',
        titlePost: 'Lorem ipsum dolor sit amet, consetetur sadipscing  😍',
        videoName: 'Video Name'),
    PostModel(
        userImage: '',
        userName: 'Lorem ipsum',
        video: 'assets/images/secondvideo.png',
        timePostCreated: '3 days ago',
        titlePost: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr',
        videoName: 'Titel Video'),
    PostModel(
        userImage: '',
        userName: 'Lorem ipsum',
        video: 'assets/images/threedvideo.png',
        timePostCreated: '4 days ago',
        titlePost: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr',
        videoName: 'Titel Video'),
  ];

  @override
  void initState() {
    Future<Null>.delayed(Duration(seconds: 1), () {
      _showSnackbar();
    });
    super.initState();
  }

  void _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: SvgPicture.asset('assets/icons/check.svg')),
            Expanded(
                flex: 5,
                child: Text(
                  'your video has been uploaded.',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )),
            SvgPicture.asset('assets/icons/Close.svg'),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      duration: const Duration(milliseconds: 1500),
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0, // Inner padding for SnackBar content.
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 150,
            width: deviceSize.width,
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius:  BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                )
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white.withOpacity(0.05),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(color: Color(0xff256168), spreadRadius: 2)
                          ],
                        ),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset('assets/images/user.png')),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daniela Fernàdez Ramos',
                            style: homeTextStyle,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet',
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                    // SvgPicture.asset('assets/icons/search.svg',),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/search.png'),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
          Container(
            height: deviceSize.height - 150,
            child: ListView.builder(
              itemCount: postData.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        height: 450,
                        child: Column(children: [
                          Row(
                            children: [
                              postData[index].userImage == ''
                                  ? Expanded(
                                      child: Image.asset(
                                          'assets/images/user_name.png'))
                                  : Expanded(
                                      child: Image.asset(
                                          postData[index].userImage)),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(postData[index].userName),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/images/world.png'),
                                        Text(postData[index].timePostCreated),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Color(0xffB8BAC3).withOpacity(0.3),
                                  child: Icon(Icons.star_border)),
                              const SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Color(0xffB8BAC3).withOpacity(0.3),
                                  child: Icon(Icons.more_horiz)),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(postData[index].titlePost),
                          const SizedBox(
                            height: 10,
                          ),
                          Stack(children: [
                            Image.asset(postData[index].video),
                            Positioned.fill(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Icon(Icons.play_circle_fill_sharp,size: 60,color: Colors.white,))),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(postData[index].videoName)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2,
                                          blurRadius: 2),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                          'assets/images/like.png'))),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2,
                                          blurRadius: 2),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        'assets/icons/Comment.svg'),
                                  )),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2,
                                          blurRadius: 2),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        'assets/icons/share.svg'),
                                  ))
                            ],
                          ),
                        ])));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
