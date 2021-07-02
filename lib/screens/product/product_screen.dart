import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:furniture/constants.dart';
import 'widgets/body.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: _buildAppBar(),
      body: Body(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
