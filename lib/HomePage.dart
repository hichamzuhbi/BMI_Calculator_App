import 'package:demo_app/color.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/resultOfCalculation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double height = 60;

  double weight = 50;

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //b7tt l title bl center
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: kblack),
        ),
        backgroundColor: Colors.white,
        elevation:
            0, // iza ma ktbta t7t l app bar bidall fi 5att aswad w kl ma zedet 2imtu bibayyen l5att aktar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isMale = true;
                        print(isMale);
                      }),
                      child: Container(
                          //height: MediaQuery.of(context).size.height / 4,
                          //margin: EdgeInsets.only(top: 20), //lcontainer b7dd zetu
                          //padding: EdgeInsets.only(top: 20),//b2lb l container
                          decoration: BoxDecoration(
                              color: kbleu1,
                              border: Border.all(
                                  color: kblack, width: isMale ? 3 : 0),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.male,
                                color: kblack,
                                size: 70,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isMale = false;
                        print(isMale);
                      }),
                      child: Container(
                        //height: MediaQuery.of(context).size.height / 4,
                        //margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: kbleu1,
                            border: Border.all(
                                color: kblack, width: isMale ? 0 : 3),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.female,
                              color: kblack,
                              size: 70,
                            ),
                            Text(
                              "Female",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    //screenshot 3al phone !flex
                    //flex: 1,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kbleu1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${height.toStringAsFixed(1)}",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Slider(
                            activeColor: kblack,
                            value: height.toDouble(),
                            max: 200,
                            min: 0,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                              //print(value);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  /*Expanded(
                      //screenshot 3al phone !flex
                      flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        color: Color.fromARGB(255, 225, 160, 20),
                      ),
                    ), //hon kl container bye5od ns lmasefe
                    SizedBox(
                      width: 90,
                    ), */ //hek bba3ed l contanerss 3an lsheshe w b2ssmon ka2n lasheshe saret lsheshe na2es l width lli bl sizedbox
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      //height: 200,
                      decoration: BoxDecoration(
                          color: kbleu1,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Weight",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Text("${weight.toInt()}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kblack,
                                    borderRadius: BorderRadius.circular(12)),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: kblack,
                                    borderRadius: BorderRadius.circular(12)),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kblack,
                      foregroundColor: Colors.black,
                      
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            height: height,
                            weight: weight,
                            isMale: isMale,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
