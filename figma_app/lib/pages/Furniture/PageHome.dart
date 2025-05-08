import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/Furniture/PageDetail.dart';
import 'package:flutter_ui/pages/Widgets/CategoryHome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final List<String> categories = [
    "All",
    "Living Room",
    "Bedroom",
    "Dining Room",
    "Kitchen"
  ];
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Sofa Minimalis",
      "price": "Rp.250 k",
      "rating": 3.5,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://www.jeparaheritage.id/wp-content/uploads/2018/05/Kursi-Tamu-Sofa-Royal-Furniture.jpg.webp",
    },
    {
      "title": "Sofa tamu",
      "price": "Rp.240 k",
      "rating": 4.4,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://e0.pxfuel.com/wallpapers/764/660/desktop-wallpaper-furniture-furniture.jpg",
    },
    {
      "title": "Kursi minimalis",
      "price": "Rp.150 k",
      "rating": 2.7,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://rumahmebel.id/wp-content/uploads/2020/01/Kursi-Sofa-Minimalis-27d-scaled.jpg",
    },
    {
      "title": "kursi dan meja",
      "price": "Rp.270 k",
      "rating": 3.9,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://furnitureminimalis.id/wp-content/uploads/2023/12/Sofa-Malas-Minimalis-Terbaru-Kayu-Jati-Perhutani-HD-0356.jpg",
    },
    {
      "title": "Kursi ruang tamu",
      "price": "Rp.250 k",
      "rating": 4.5,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJrYem4ormkVouF7JQvhhi1KILT8abR9TLkw&usqp=CAU",
    },
    {
      "title": "Kursi santai",
      "price": "Rp.270 k",
      "rating": 2.6,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://w.forfun.com/fetch/d5/d5c17c5a2ceaad48293789945c7743f5.jpeg",
    },
    {
      "title": "Sofa empuk",
      "price": "Rp.550 k",
      "rating": 2.8,
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz24MQOpSOWWLWo16tTDyjpUrXELfBR2XGqg&usqp=CAU",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  SizedBox(
                    width: 226,
                    child: Text(
                      'Discover the most modern furniture',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Color(0xFF4A4543)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 40,
              child: CategoryHome(),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 5),
                height: 35,
                width: 300,
                child: Text(
                  "Recomended Furnitures",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                mainAxisExtent: 285,
              ),
              itemCount: gridMap.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to the pageDetail() when the widget is clicked
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PageDetail(gridMap: gridMap.elementAt(index))));
                  },
                  child: Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: Offset.zero,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                              child: Image.network(
                                "${gridMap.elementAt(index)['images']}",
                                height: 190,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 11, right: 11, top: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${gridMap.elementAt(index)['title']}",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Color(0xFF4A4543),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${gridMap.elementAt(index)['price']}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .merge(
                                              TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey.shade700,
                                              ),
                                            ),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            padding: EdgeInsets.only(left: 14),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.star,
                                              size: 20,
                                              color: Colors.amber,
                                            ),
                                          ),
                                          Text(
                                            "${gridMap.elementAt(index)['rating']}",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey.shade700,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/love.svg',
                              width: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.categories,
    required this.scrollDirection,
  });

  final List<String> categories;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      children: List.generate(
        categories.length,
        (index) {
          return GestureDetector(
            onTap: () {},
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 8,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Text(categories[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  )),
            ),
          );
        },
      ),
    );
  }
}
