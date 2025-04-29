import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

import 'package:strategi_hub_app/components/custom_image_network.dart';

class BeritaPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String? source;
  final String? author;
  final String? description;

  final dynamic news;

  const BeritaPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.news,
    this.source,
    this.author,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenHeight < 700 || screenWidth < 380;
    final isUnfolded = screenWidth > 600;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D2C7B),
        title: Text("BERITA"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(Sizes.s16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Get.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: isUnfolded ? 16 : (isSmallScreen ? 14 : 16),
                    ),

                  ),
                  SizedBox(height: Sizes.s4),
                  Text(
                    "By : $author • $date",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                    ),

                  ),
                ],
              ),
            ),
            CustomImageNetwork(
              path: imageUrl,
              width: Get.width,
              height: Get.width * 0.6,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(Sizes.s16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // "Sumber: $source",
                    "Sumber: https://kemenhub.go.id",
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                      fontSize: isUnfolded ? 14 : (isSmallScreen ? 12 : 14),
                    ),
                  ),
                  SizedBox(height: Sizes.s16),
                  Html(
                    data: description ?? '',
                    style: {
                      'body': Style(
                        fontSize: FontSize(isUnfolded ? 14 : (isSmallScreen ? 12 : 14)),
                      ),
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
