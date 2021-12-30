import 'package:flutter/material.dart';
import 'package:test_technique/utilities/constant.dart';

class HomeTabBarView extends StatelessWidget {
  const HomeTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
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
                // padding: EdgeInsets.only(bottom: 10),
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
                      const SizedBox(width: 5,),
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
                      Align(alignment: Alignment.centerRight,child: Image.asset('assets/images/search.png')),
                    ]),
              ),
            ),
          ]),
        ),
        Container(
          height: deviceSize.height - 220,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet '),
          ]),
        ),
      ]),
    );
  }
}
