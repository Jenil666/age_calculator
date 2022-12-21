import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  TextEditingController txtdate = TextEditingController(text: "${DateTime.now().year}");
  TextEditingController txtdatein = TextEditingController();
  String c1="",c2="";
  int i1=0,i2=0,i3=0,i4=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff203A43),
          title: Text("Age Calculator"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today's Date"),
              SizedBox(height: 5),
              TextField(
                controller: txtdate,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black38, width: 3)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                    )),
              ),
              SizedBox(height: 20),
              Text("Year Of Birth"),
              SizedBox(height: 5),
              TextField(
                controller: txtdatein,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black38, width: 3)),
                    hintText: "YYYY",
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black38, width: 2))),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          i3=0;
                        });
                      },
                      child: Container(
                          height: 60,
                          width: 200,
                          child: Center(
                            child: Text(
                              "Clear",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          decoration: (BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black38),
                          )
                              //borderRadius: BorderRadius.all(Radius.circular(10)),
                              )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          c1=txtdatein.text;
                          i1=int.parse(c1);

                          c2=txtdate.text;
                          i2=int.parse(c2);

                          i3=i2-i1;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: (BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff13547A),
                        )),
                        alignment: Alignment.center,
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            fontSize: 30,
                            color: CupertinoColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text("Present Age",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 150,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$i3",
                    style: TextStyle(
                      fontSize: 30,
                      color: CupertinoColors.white,
                    ),
                    ),
                    Text("Year's",
                    style: TextStyle(
                      fontSize: 15,
                      color: CupertinoColors.white,
                    ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient (
                    colors: [
                      Color(0xff13547A),
                      Color(0xff000000),
                    ]
                  )
                ),
              ),
              SizedBox(height: 50,),
              Text("Next Birthday"),
              SizedBox(height: 5,),
              Container(
                height: 150,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${i2+i4}",
                    style: TextStyle(
                      fontSize: 35,
                      color: CupertinoColors.white,
                    ),
                    ),
                    Text("Year",
                    style: TextStyle(
                      fontSize: 20,
                      color: CupertinoColors.white,
                    ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff6BBED9),
                      Color(0xff006ACB),
                    ]
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
