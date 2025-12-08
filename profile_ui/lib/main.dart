import 'package:flutter/material.dart';

void
main(
  List<
    String
  >
  args,
) {
  runApp(
    MyApp(),
  );
}

class MyApp
    extends
        StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<
    MyApp
  >
  createState() => _MyAppState();
}

class _MyAppState
    extends
        State<
          MyApp
        > {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      home: ProfileUi(),
    );
  }
}

class ProfileUi
    extends
        StatefulWidget {
  const ProfileUi({
    super.key,
  });

  @override
  State<
    ProfileUi
  >
  createState() => _ProfileUiState();
}

class _ProfileUiState
    extends
        State<
          ProfileUi
        > {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Color(
        0xFF181818,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://data2.nssmag.com/images/galleries/13981/balenciaga-new-logo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -210,
                  right: 15,
                  left: 15,

                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(
                      20,
                    ),
                    child: SizedBox(
                      width: 350,
                      height: 280,
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox.expand(
                              child: Image.network(
                                "https://pbs.twimg.com/profile_images/875498876261859329/7iV5CwVY_400x400.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox.expand(
                              child: Container(
                                color: Colors.black,
                                padding: EdgeInsets.all(
                                  10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Inna\nBasova",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      "Certified Brand\nAmbassador\nat BALENCIAGA",
                                      style: TextStyle(
                                        color: Color(
                                          0xFF9A9A9A,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 90,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xFF9A9A9A,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Text(
                                            "BALENCIAGA",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 230,
            ),
            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFF181818,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        border: Border.all(
                          color: Color(
                            0xFF9A9A9A,
                          ),
                        ),
                      ),
                      child: Text(
                        "Save Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFF9A9A9A,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Text(
                        "Exchange Contact",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Text(
                "Bio",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                0,
                0,
                0,
              ),
              child: Text(
                "My love for Fashion began when i create\nmy first cloth at 14 years old.After\nexperiencing the excitement and obstacles\nof my first investment,I wanted to share\nmy experience with others.",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Color(
                    0xFF9A9A9A,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Text(
                "Social network",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                0,
                20,
                0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        10,
                      ),
                      child: Container(
                        height: 60,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.network(
                            height: 25,
                            width: 25,
                            "https://cdn-icons-png.flaticon.com/128/3128/3128304.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        10,
                      ),
                      child: Container(
                        height: 60,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.network(
                            height: 25,
                            width: 25,
                            "https://cdn-icons-png.flaticon.com/128/4423/4423702.png",
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        10,
                      ),
                      child: Container(
                        height: 60,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.network(
                            height: 25,
                            width: 25,
                            "https://cdn-icons-png.flaticon.com/128/733/733579.png",
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        10,
                      ),
                      child: Container(
                        height: 60,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.network(
                            height: 25,
                            width: 25,
                            "https://cdn-icons-png.flaticon.com/128/2111/2111499.png",
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        10,
                      ),
                      child: Container(
                        height: 60,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.network(
                            height: 25,
                            width: 25,
                            "https://cdn-icons-png.flaticon.com/128/2111/2111624.png",
                          ),
                        ),
                      ),
                    ),
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
