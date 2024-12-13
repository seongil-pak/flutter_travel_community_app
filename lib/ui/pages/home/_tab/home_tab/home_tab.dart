import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_community_app/ui/pages/home/_tab/home_tab/widgets/city_list.dart';
import 'package:flutter_travel_community_app/ui/pages/home/_tab/home_tab/widgets/home_tab_app_bar.dart';
import 'package:flutter_travel_community_app/ui/pages/home/_tab/home_tab/widgets/schedule_box.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              print('검색 아이콘');
            },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.transparent,
              child: Icon(CupertinoIcons.bell, size: 30),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('검색 아이콘');
            },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.transparent,
              child: Icon(
                CupertinoIcons.profile_circled,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CityList(),
              ScheduleBox(),
            ],
          ),
        ],
      ),
    );
  }
}

class TabAppBar extends StatelessWidget {
  const TabAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        GestureDetector(
          onTap: () {
            print('검색 아이콘');
          },
          child: Container(
            height: 50,
            width: 50,
            color: Colors.transparent,
            child: Icon(CupertinoIcons.bell, size: 30),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('검색 아이콘');
          },
          child: Container(
            height: 50,
            width: 50,
            color: Colors.transparent,
            child: Icon(
              CupertinoIcons.profile_circled,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
