import 'package:debasmita_assignment/portfolio_responsive.dart';
import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  final double width;
  final double height;
  final String images;

  const PortfolioWidget(
      {Key? key,
      required this.images,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        images.toString(),
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
