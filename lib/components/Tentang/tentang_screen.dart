import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Tentang',
      body: Center(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(Sizes.s16),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    // height: 90,
                    width: 200,
                  ),
                ],
              ),
            ),
            Text(
              'Strategi Hub merupakan aplikasi untuk memantau dan mengelola informasi terkait penyelenggaraan transportasi publik yang disediakan oleh Kementerian Perhubungan.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
                // height: 1.5,
              ),
            ),
            SizedBox(height: Sizes.s14),
            Column(
              children: [
                Text(
                  'Hubungi Kami',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Sizes.s16),
                
                // Address
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.s24, vertical: Sizes.s6),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: Sizes.s12),
                      Expanded(
                        child: Text('Jl. Medan Merdeka Barat No. 8, Jakarta'),
                      ),
                    ],
                  ),
                ),
                
                // Phone
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.s24, vertical: Sizes.s6),
                  child: Row(
                    children: [
                      Icon(Icons.phone_android),
                      SizedBox(width: Sizes.s12),
                      Text('151'),
                    ],
                  ),
                ),
                
                // Email
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.s24, vertical: Sizes.s6),
                  child: Row(
                    children: [
                      Icon(Icons.email_outlined),
                      SizedBox(width: Sizes.s12),
                      Text('pusdat@kemenhub.go.id'),
                    ],
                  ),
                ),
                
                SizedBox(height: Sizes.s16),
                
                // Social media icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     _socialIcon(FontAwesomeIcons.facebook),
                    SizedBox(width: Sizes.s16),
                    _socialIcon(FontAwesomeIcons.instagram),
                    SizedBox(width: Sizes.s16),
                    _socialIcon(FontAwesomeIcons.xTwitter),  // or FontAwesomeIcons.x for the new X logo
                    SizedBox(width: Sizes.s16),
                    _socialIcon(FontAwesomeIcons.linkedin),
                  ],
                ),
              ],
            ),
            
            SizedBox(height: Sizes.s40),
            
            // Bottom logo and department name
            Column(
              children: [
                Image.asset(
                  'assets/images/logo_kemenhub.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: Sizes.s12),
                Text(
                  'Pusat Data dan Teknologi Informasi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'KEMENTERIAN PERHUBUNGAN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Sizes.s40),
              ],
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Image.asset(
            //       'assets/images/tentang1.png',
            //       height: 60,
            //       // width: 100,
            //       // color: Colors.red[600],
            //     ),
            //     SizedBox(width: Sizes.s5),
            //     Expanded(
            //       child: Text(
            //         'SINGLE SOURCE OF TRUTH (SST)',
            //         style: TextStyle(
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // // SizedBox(height: Sizes.s8),
            // Text(
            //   'Strategi Hub dikelola berlandaskan prinsip Single Source of Truth yang diwujudkan melalui kebijakan Satu Data Transportasi (SDT) dan didukung dengan pengelolaan Big Data serta pemenuhan kaidah-kaidah pengelolaan data.',
            //   style: TextStyle(
            //     fontSize: 14,
            //     color: Colors.grey[800],
            //     // height: 1.5,
            //   ),
            // ),
            // SizedBox(height: Sizes.s14),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Image.asset(
            //       'assets/images/tentang2.png',
            //       height: 60,
            //       // width: 100,
            //     ),
            //     SizedBox(width: Sizes.s5),
            //     Expanded(
            //       child: Text(
            //         'ENTERPRISE SERVICE BUS (ESB)',
            //         style: TextStyle(
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // // SizedBox(height: Sizes.s8),
            // Text(
            //   'Melalui pengelolaan Enterprise Service Bus Kementerian Perhubungan, Strategi Hub memudahkan pelaksanaan integrasi dan interoperabilitas sistem serta pengelolaan data dan informasi lintas Pemangku Kepentingan di Kementerian Perhubungan dan Sektor Transportasi.',
            //   style: TextStyle(
            //     fontSize: 14,
            //     color: Colors.grey[800],
            //   ),
            // ),
            // SizedBox(height: Sizes.s14),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Image.asset(
            //       'assets/images/tentang3.png',
            //       height: 60,
            //     ),
            //     SizedBox(width: Sizes.s5),
            //     Expanded(
            //       child: Text(
            //         'INTEGRATED SERVICE PLATFORM (ISP)',
            //         style: TextStyle(
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // Text(
            //   'Melalui platform pelayanan terpadu, diwujudkan kemudahan dan kecepatan dalam mengakses seluruh informasi, data dan layanan G2G, G2B, G2C, dan G2E pada Kementerian dan Sektor Transportasi dengan tetap mematuhi ketentuan Perlindungan Data dan Keamanan Data, dan Keterbukaan Informasi Publik.',
            //   style: TextStyle(
            //     fontSize: 14,
            //     color: Colors.grey[800],
            //   ),
            // ),
          ],
        ),
      ),
      )
    );
  }
  Widget _socialIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 22),
    );
  }
}
