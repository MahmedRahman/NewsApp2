import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                serechBar(),
                SizedBox(
                  height: 24,
                ),
                titleBox(),
                SizedBox(
                  height: 16,
                ),
                NewsSlider(),
                SizedBox(
                  height: 24,
                ),
                NewsCategorySlider(),
                SizedBox(
                  height: 24,
                ),
                newsCard(),
                SizedBox(
                  height: 8,
                ),
                newsCard(),
                SizedBox(
                  height: 8,
                ),
                newsCard(),
                SizedBox(
                  height: 8,
                ),
                newsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget newsCard() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            "assets/image/image1.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "5 things to know about the 'conundrum' of lupus",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    "Matt Villano",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Sunday, 9 May 2021",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget serechBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.search),
                suffixIcon: Image.asset("assets/image/serech_icon.png"),
                label: Text("Dogecoin to the Moon..."),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      //color: Color(0xffFF3A44),
                      ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      // color: Color(0xffFF3A44),
                      ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: Color(
            0xffFF3A44,
          ),
          //radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              "assets/image/notifaction.png",
              fit: BoxFit.cover,
              width: 33,
            ),
          ),
        ),
      ],
    );
  }

  Widget titleBox() {
    return Row(
      children: [
        Text(
          "Latest News",
          style: const TextStyle(
            fontFamily: "New York Small",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
            height: 21 / 18,
          ),
          textAlign: TextAlign.left,
        ),
        Spacer(),
        Text(
          "See All",
          style: const TextStyle(
            fontFamily: "Nunito",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff008100),
            height: 16 / 12,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          width: 16,
        ),
        Icon(
          Icons.arrow_forward,
        )
      ],
    );
  }

  Widget NewsSlider() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/image/slide_img.png",
              ),
              Positioned(
                top: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 280,
                    child: Container(
                      //color: Colors.red,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "by Ryan Browne",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: SizedBox(
                    width: 280,
                    child: Text(
                      "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Image.asset(
            "assets/image/slide_img.png",
          ),
        ],
      ),
    );
  }

  Widget NewsCategorySlider() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFF3A44),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffFFB3B6),
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Text(
                  "Healthy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              //color: Color(0xffFF3A44),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xffF0F1FA),
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Technology",
                style: const TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2d0505),
                  height: 16 / 12,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          )
        ],
      ),
    );
  }
}
