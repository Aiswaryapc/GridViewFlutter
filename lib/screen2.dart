import 'package:flutter/material.dart';

class ScreenSecond extends StatefulWidget {
  const ScreenSecond({Key? key}) : super(key: key);

  @override
  _ScreenSecondState createState() => _ScreenSecondState();
}
final List<Map> myProducts = [
  {
    "index": 1,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 2,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 3,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 4,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 5,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 6,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 7,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 8,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 9,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 10,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 11,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
  {
    "index": 12,
    "name": "Getting started",
    "name1": "23 articles",
    "img": "assets/img.png"
  },
].toList();
class _ScreenSecondState extends State<ScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0,left: 30),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 25,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("Help",style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold),)),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 35,right: 35),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(width:2,color: Colors.black12)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black26,
                          size: 28,
                        ),
                      ),

                      Text("Search",style: TextStyle(fontSize: 14,color: Colors.black26,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),

              Align( alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0,top: 20),
                  child: Text("Recommended Articles",style: TextStyle(fontSize: 16,color: Colors.black26,fontWeight: FontWeight.w500),),
                ),
              ),

              _divider(),

              _RowText("My app is not working"),

              _divider(),
              _RowText("Protecting your personal information"),

              _divider(),
              _RowText("Communicating with customers"),



              Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 20,right: 20),
                child: Container(
                  color: Colors.black12,height: 1000,
                  child: Column(
                  children: [
                    Align(alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("All topics",style: TextStyle( fontSize: 23,fontWeight: FontWeight.bold),),
                        )),

                    Container(
                      height: 800,
                      child: GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 2.5 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(

                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,
                                  border: Border.all(width:2,color: Colors.black12)),
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 20.0, bottom: 5),
                                child: Column(
                                  children: [
                                   Align(alignment: Alignment.centerLeft,
                                     child: Container(
                                       child: Image.asset(myProducts[index]["img"],fit: BoxFit.fill,),
                                         height: 50,width: 50,
                                         decoration:  BoxDecoration(
                                          shape: BoxShape.circle,
                                         ),


                                         // decoration: BoxDecoration(
                                         //   image: DecorationImage(
                                         //     image: AssetImage(myProducts[index]["img"]),
                                         //     fit: BoxFit.fill,
                                         //   ),borderRadius: BorderRadius.circular(15)),
                                     ),
                                   ),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:15.0),
                                          child: Text(myProducts[index]["name"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                        )),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:15.0),
                                          child: Text(
                                            myProducts[index]["name1"],
                                            textAlign: TextAlign.left,
                                          ),
                                        )),
                                  ],
                                ),
                              ),

                            );
                          }),
                    ),


                  ],
                  ),

                ),
              )



            ],
          ),


        ),
      ),
    );
  }

  Widget _divider(){
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.black12,
        height: 2,
      ),
    );
  }

  Widget _RowText(text){
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10),
      child: Row(
        children: [
          Text(text,style: TextStyle(fontSize: 18,color: Colors.black87,fontWeight: FontWeight.w400), ),
          Expanded(child: Container()),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black87,
            size: 20,
          ),
        ],
      ),
    );
  }



}
