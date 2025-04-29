// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';

class CustomImageNetwork extends StatelessWidget {
  final String path;
  final BoxFit fit;
  final double? height;
  final double? width;
  final Color? bg;
  final Alignment alignment;
  const CustomImageNetwork({
    super.key,
    this.fit = BoxFit.contain,
    required this.path,
    this.height,
    this.width,
    this.alignment = Alignment.center,
    this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: fit,
      imageUrl: path,
      alignment: alignment,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      placeholderFadeInDuration: Duration(milliseconds: 500),
      placeholder: (context, url) => Container(
        color: bg ?? AppColors.greyColor,
      ),
      errorWidget: (context, url, error) =>
          Center(child: Icon(Icons.info_rounded)),
    );
  }
}
