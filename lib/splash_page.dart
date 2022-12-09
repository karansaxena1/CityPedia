import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/splash_background.png',
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.fill,
                  width: 350,
                ),
                SizedBox(height: 40),
                Text.rich(TextSpan(
                    text: '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                    children: [
                      TextSpan(text: '', style: TextStyle(color: Colors.black)),
                    ])),
                SizedBox(height: 24),
                Text(
                  '',
                  style: TextStyle(color: Colors.black, letterSpacing: 8),
                )
              ],
            )
          ],
        ));
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutterfbauth/home_page.dart';

// class Products extends StatefulWidget {
//   @override
//   _ProductsState createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
//   final list_item = [
//     {
//       "name": "Bareilly",
//       "pic": "img/bareilly.jpg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Shahjahanpur",
//       "pic": "img/spn.jpg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Lucknow", "pic": "img/lko.jpg", "price": 70, "old_price": 90},
//     {"name": "Badaun", "pic": "img/Bud.jpeg", "price": 70, "old_price": 90},
//     {"name": "Varanasi", "pic": "img/varan.jpeg", "price": 70, "old_price": 90},
//     {"name": "Kanpur", "pic": "img/kan.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Aligarh",
//       "pic": "img/aligarh.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Baghpath",
//       "pic": "img/baghpath.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Bijnor", "pic": "img/bijnor.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Bulandsheher",
//       "pic": "img/bulandshahar.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Chitrakoot",
//       "pic": "img/chit.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Faizabad", "pic": "img/faiz.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Ghaziabad",
//       "pic": "img/ghaziabad.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Merrut", "pic": "img/merrut.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Moaradabad",
//       "pic": "img/moradabad.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Muzzafarnagar",
//       "pic": "img/muzzaf.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Rampur", "pic": "img/rampur.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Saharanpur",
//       "pic": "img/saharan.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Agra", "pic": "img/agra2.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Ayodhya",
//       "pic": "img/ayodhya2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Bahraich",
//       "pic": "img/bahraich2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Ballia", "pic": "img/ballia2.jpeg", "price": 70, "old_price": 90},
//     {"name": "Banda", "pic": "img/banda2.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Chandauli",
//       "pic": "img/chandauli2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Farrukhabad",
//       "pic": "img/farukkhabad2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Fatehpur",
//       "pic": "img/fatehpur2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Firozabad",
//       "pic": "img/firozabad2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Hardoi", "pic": "img/hardoi2.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Hathras",
//       "pic": "img/hathras2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Jhansi", "pic": "img/jhansi2.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Kannauj",
//       "pic": "img/kannauj2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Kasganj",
//       "pic": "img/kasganj2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Kaushambi",
//       "pic": "img/kaushambi2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Lakhimpur Kheri",
//       "pic": "img/lakhimpur kheri2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Mahoba", "pic": "img/mahoba2.jpeg", "price": 70, "old_price": 90},
//     {
//       "name": "Mathura",
//       "pic": "img/mathura2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Pilibhit",
//       "pic": "img/pilibhit2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Pratapgarh",
//       "pic": "img/pratapgargh2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Prayagraj",
//       "pic": "img/prayagraj2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Shravasti",
//       "pic": "img/shravasti2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Siddharthnagar",
//       "pic": "img/siddharthnagar2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Sitapur",
//       "pic": "img/sitapur2.jpeg",
//       "price": 70,
//       "old_price": 90
//     },
//     {"name": "Amethi", "pic": "img/amethi3.jpg", "price": 70, "old_price": 90},
//     {
//       "name": "Azamgarh",
//       "pic": "img/azamgarh3.jpg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Balrampur",
//       "pic": "img/balrampur3.jpg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Barabanki",
//       "pic": "img/barabanki3.jpg",
//       "price": 70,
//       "old_price": 90
//     },
//     {
//       "name": "Basti",
//       "pic": "img/basti3.jpg",
//     },
//     {
//       "name": "Etah",
//       "pic": "img/etah3.jpg",
//     },
//     {
//       "name": "Etawah",
//       "pic": "img/etawah3.jpg",
//     },
//     {
//       "name": "Gonda",
//       "pic": "img/gonda3.jpeg",
//     },
//     {
//       "name": "Hapur",
//       "pic": "img/hapur3.jpg",
//     },
//     {
//       "name": "Jalaun",
//       "pic": "img/jalaun3.jpg",
//     },
//     {
//       "name": "Kushinagar",
//       "pic": "img/kushinagar3.jpg",
//     },
//     {
//       "name": "Maharajganj",
//       "pic": "img/maharaj3.jpg",
//     },
//     {
//       "name": "Mainpuri",
//       "pic": "img/mainpuri3.jpg",
//     },
//     {"name": "Mau", "pic": "img/mau3.jpg", "price": 70, "old_price": 90},
//     {
//       "name": "Sultanpur",
//       "pic": "img/sultanpur3.jpg",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: list_item.length,
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//       itemBuilder: (BuildContext context, int index) {
//         return Product(
//           product_name: list_item[index]['name'],
//           product_pic: list_item[index]['pic'],
//           product_price: list_item[index]['price'],
//           product_old: list_item[index]['old-price'],
//         );
//       },
//     );
//   }
// }

// class Product extends StatelessWidget {
//   final product_name;
//   final product_pic;
//   final product_price;
//   final product_old;

//   Product(
//       {this.product_name,
//       this.product_pic,
//       this.product_price,
//       this.product_old});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.deepOrange[900],
//       shape: RoundedRectangleBorder(
//           side: BorderSide(color: Colors.deepOrange, width: 5),
//           borderRadius: BorderRadius.circular(
//             10,
//           )),
//       child: Hero(
//         tag: Product(),
//         child: Material(
//           child: InkWell(
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => HomePage()));
//             },
//             child: GridTile(
//               footer: Container(
//                 color: Colors.white,
//                 child: ListTile(
//                   leading: Text(
//                     product_name,
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               child: Image.asset(product_pic),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
