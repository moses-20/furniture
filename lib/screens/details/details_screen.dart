import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:furniture/constants.dart';
import 'package:furniture/models/product.dart';

import 'widgets/body.dart';

class Details extends StatelessWidget {
  final Product product;

  const Details({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: _buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        padding: EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'Back',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
