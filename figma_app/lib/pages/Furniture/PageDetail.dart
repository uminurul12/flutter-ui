// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/Widgets/SelectColor.dart';
import 'package:flutter_ui/pages/Widgets/SelectQuantity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class PageDetail extends StatefulWidget {
  const PageDetail({super.key, required this.gridMap});

  final Map<String, dynamic> gridMap;

  @override
  State<PageDetail> createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  final List<Color> colors = [
    const Color.fromARGB(255, 255, 244, 244),
    Colors.yellow,
    Colors.grey,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: InteractiveViewer(
              boundaryMargin: EdgeInsets.all(double.infinity),
              minScale: 0.1,
              maxScale: 3.0,
              child: Center(
                child: Image.network(
                  '${widget.gridMap['images']}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const AppBarDetail(),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: ContainerBottom(widget: widget, colors: colors),
          ),
        ],
      ),
    );
  }
}

class ContainerBottom extends StatefulWidget {
  const ContainerBottom({
    super.key,
    required this.widget,
    required this.colors,
  });

  final PageDetail widget;
  final List<Color> colors;

  @override
  State<ContainerBottom> createState() => _ContainerBottomState();
}

class _ContainerBottomState extends State<ContainerBottom> {
  bool isExtended = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: isExtended ? 335 : 50,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: isExtended ? 5 : 0),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExtended = !isExtended;
                });
              },
              child: SizedBox(
                height: isExtended ? 30 : 50,
                child: isExtended
                    ? SvgPicture.asset(
                        "assets/icons/substract.svg",
                        width: 30,
                      )
                    : Icon(
                        Icons.arrow_circle_up,
                        size: 35,
                      ),
              ),
            ),
            // const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.widget.gridMap['title']}',
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF4A4543),
                          ),
                        ),
                        Text(
                          '${widget.widget.gridMap['price']}',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    RatingBar.builder(
                      itemSize: 28,
                      initialRating: widget.widget.gridMap['rating'],
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(vertical: 6.0),
                      itemBuilder: (context, _) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: SelectColorDetail()),
                    Padding(
                        padding: const EdgeInsets.only(left: 4, top: 15),
                        child: SelectQuantityDetail()),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 5, top: 8),
                        child: Text(
                          "${widget.widget.gridMap['desc'].substring(0, 155)}",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign
                              .justify, // Menjadikan teks menjadi justify
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: .0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[500],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.grey[20],
                            elevation: 5.0,
                          ),
                          child: Text(
                            "Add To Cart".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarDetail extends StatelessWidget {
  const AppBarDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // color: Colors.black.withOpacity(0.5),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigate back to the previous page
                Navigator.pop(context);
              },
            ),
          ),
          const Text(
            "Detail",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.share,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
