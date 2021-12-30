
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_technique/utilities/constant.dart';
import 'package:test_technique/widgets/home_tab_bar_view.dart';
import 'package:test_technique/widgets/upload_tab_bar.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/Home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: (5), vsync: this);
    final deviceSize = MediaQuery.of(context).size;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body:
             TabBarView(
                controller: _tabController,
                children: [
                  HomeTabBarView(),
                  HomeTabBarView(),
                  UploadVideo(),
                  HomeTabBarView(),
                  HomeTabBarView(),
                ],
            ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: TabBar(
            controller: _tabController,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Color(0xff134147),width: 3),
              insets: EdgeInsets.only(bottom: 50 ),
            ),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab( icon: SvgPicture.asset('assets/icons/homeblack.svg')),
              // I use the block.png instead of block.svg because of
              Tab( icon: Image.asset('assets/images/block.png')),
              Tab( icon: Icon(Icons.add_circle_outlined,color: Color(0xff134147),size:  50,),),
              Tab( icon: Image.asset('assets/images/block.png')),
              Tab( icon: Image.asset('assets/images/block.png')),
            ],
          ),
        ),
      ),
    );
  }
}
