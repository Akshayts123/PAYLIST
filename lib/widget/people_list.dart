
import 'package:flutter/material.dart';

import '../model/API.dart';

class peoplelist extends StatefulWidget {
  const peoplelist({Key? key}) : super(key: key);

  @override
  State<peoplelist> createState() => _peoplelistState();
}

class _peoplelistState extends State<peoplelist> {
  var arrData;
  var load = true;
  Future<String> home() async {
    var rsp = await home_API();
    arrData = rsp["data"];
    print("``````````````````````````");
    print(arrData);
    print("``````````````````````````");

    setState(() {
      load = false;
    });
    return "success";
  }

  @override
  void initState() {
    super.initState();
    home();
  }

  @override
  Widget build(BuildContext context) {
    return load == true
        ? Center(child: CircularProgressIndicator())
        : Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Scrollbar(
                child: ListView.builder(
                  //physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
                  shrinkWrap: true,
                  itemCount: arrData != null ? arrData.length : 0,
                  itemBuilder: (context, index) {
                    final item = arrData != null ? arrData[index] : null;
                    return cardd(item, index);
                  },
                ),
              ),
            ),
          );
  }

  cardd(var item, int index) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Container(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                height: 40,
                width: 40,
                image: NetworkImage(item["Img"].toString()),
              ),
              SizedBox(
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12.0,
                    ),
                    RichText(
                      maxLines: 1,
                      text: TextSpan(
                        text: item["Name"].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      maxLines: 1,
                      text: TextSpan(
                        text: item["Until"].toString(),
                        style: TextStyle(color: Colors.black38, fontSize: 11.0),
                        children: [
                          TextSpan(
                              text: '',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(width: 30,),
              Stack(
                children: [
                  Positioned(
                    top: 1,
                    child: Container(
                      alignment: Alignment(1.5, 0.0),
                      width: 100,
                      height: 31,
                      child: Container(
                        child: TextButton(
                          child: Text(
                            item["Amount"].toString(),
                            style: TextStyle(
                                fontSize: 17,
                                color: (index % 2 == 0)
                                    ? Colors.red
                                    : Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment(1.5, 10.0),
                    width: 100,
                    height: 50,
                    child: Container(
                      child: TextButton(
                        child: Text(
                          item["OutOfAmount"].toString(),
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black38,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
