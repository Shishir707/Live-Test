import 'package:flutter/material.dart';

class ostadContainer extends StatelessWidget {
  final String image, batchName, seatLeft, dayLeft, courseName;

  const ostadContainer({
    super.key,
    required this.image,
    required this.batchName,
    required this.seatLeft,
    required this.dayLeft,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Expanded(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 2,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[200],
                            ),
                            child: Text(batchName, style: TextStyle(fontSize: 10)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[200],
                            ),
                            child: Text(seatLeft, style: TextStyle(fontSize: 10)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[200],
                            ),
                            child: Text(dayLeft, style: TextStyle(fontSize: 10)),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Text(
                      courseName,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(double.maxFinite,5),
                        backgroundColor: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'বিস্তারিত দেখি ➜',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
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
