import 'package:flutter/material.dart';

//defining main function
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Swiggy UI Clone',
        home: MyApp(),
      )
  );
}


class OfferAds {
  OfferAds({this.image1, this.refer});

  String image1;
  String refer;
}

List<OfferAds> _offerlist = <OfferAds>[
  OfferAds(image1: 'images/offerad1.jpg', refer: 'OFFER'),
  OfferAds(image1: 'images/offerad2.jpg', refer: 'REFER'),
  OfferAds(image1: 'images/offerad3.jpg', refer: 'OFFER'),

];

class Resname {
  Resname(
       {this.image2,
       this.resname,
       this.resPrice,
       this.resTime,
       this.resrating,
       this.restype });

  String image2;
  String resname;
  String restype;
  String resrating;
  String resTime;
  String resPrice;
}

List<Resname> _resinfo = <Resname>[
  Resname(
    image2: 'images/res1.jpg',
    resname: 'Pizza Factory',
    restype: "Only Pizza's",
    resTime: "35",
    resPrice: "500 for two",
    resrating: "4.0",
  ),

  Resname(
    image2: 'images/res2.jpg',
    resname: 'Donuts Shop',
    restype: 'Snacks',
    resTime: "20",
    resPrice: "600 for Box",
    resrating: "4.2",
  ),

  Resname(
    image2: 'images/res3.jpg',
    resname: 'Snacks food point',
    restype: "All type's of food",
    resTime: "15",
    resPrice: "100 for one",
    resrating: "5.0",

  ),

];


// create stateful widget using class
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//create state for stateful widget
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(   //create appbar of white color
        backgroundColor: Colors.white,
        actions: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Container(
                height: 10.0,
                width: 50.0,
                child: Text('NOW',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 5.0,),
              Text('_______',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0
              ),),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Icon(Icons.arrow_forward_ios,
              color: Colors.black,
              size: 12.0,
            )
          ),
          SizedBox(width: 30.0),
          Column(
            children: <Widget>[
              Container(
                height: 20.0,
                width: 120.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
                Text('______________________',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0
                    ))
            ],
          ),
          Container(
            child: Image.asset('images/offers.png')
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 15.0, 3.0, 0.0),
            child: Text('Offers',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 18.0),
            height: 10.0,
            width: 30.0,
            child: Material(
              color: Colors.orange,
              shape: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.orange
                ),
                borderRadius: BorderRadius.circular(1)
              ),
              child: Center(
                child: Text('NEW',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),

              ),
            ),
          ),
          SizedBox(width: 10.0),


        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(

        shrinkWrap: true,
        children: <Widget>[
        Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
            child: Text('Staying up Late? Let us serve you.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            ),),
          )
        ],),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _offerlist.length,
                  itemBuilder: (context, index){
                    final offerlist = _offerlist[index];
                    return Column(
                      children: <Widget>[
                        Container(
                          child: Card(
                            elevation: 1.0,
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  offerlist.image1,
                                  fit: BoxFit.fill,
                                  height: 180.0,
                                  width: 250.0,
                                ),
                                Positioned(
                                  left: 15.0,
                                  top: 15.0,
                                  child: Material(
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2),
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    ),
                                    child: Container(
                                      height: 15.0,
                                      width: 40.0,
                                      child: Center(
                                        child: Text(offerlist.refer,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0
                                          ),),
                                        ),
                                      )
                                    ),
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },  //itembuilder
                ),
              )
            ],
          ),),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Row(
              children: <Widget>[
                Text('13 RESTAURANTS',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),),

                SizedBox(width: 130.0),
                Icon(Icons.sort,
                color: Colors.grey,
                size: 15.0,),
                SizedBox(width: 2.0,),

                Text('SORT/FILTERS',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: ListView.builder(
              shrinkWrap: true,
             // scrollDirection: Axis.horizontal,
              itemCount: _resinfo.length,
              itemBuilder: (context, index){
                final resinfo = _resinfo[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset(resinfo.image2,
                        fit: BoxFit.fill,),
                        ),
                        title:
                          Text(resinfo.resname,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                          ),),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(resinfo.restype,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 0.0,),
                          Row(
                            children: <Widget>[
                              Text('2 Outlets near you.'),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                          Divider(
                            height:10.0,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star,
                              size: 15.0,
                              color: Colors.grey,
                              ),
                              SizedBox(width: 2.0),
                              Text(resinfo.resrating,
                                style: TextStyle(
                                    color: Colors.grey,
                                ),),
                              SizedBox(width: 8.0),

                              Icon(Icons.brightness_1,
                              size: 8.0,
                              color: Colors.grey,),
                              SizedBox(width: 8.0),
                              Text(resinfo.resTime + 'mins',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0
                              ),),

                              SizedBox(width: 8.0),
                              Icon(Icons.brightness_1,
                                size: 8.0,
                                color: Colors.grey,),

                              SizedBox(width: 8.0),
                              Text(resinfo.resPrice,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0
                              ),)


                            ],
                          )

                        ],
                      ),


                    ),
                    SizedBox(height: 30.0,),
                  ],
                );
              },
            ),
          )

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 2.0,
        child: Material(
          color: Colors.grey[200],
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Colors.grey[400],
              width: 1.0,
            )
          ),

          child: Container(
            height: 50.0,
            width: 50.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('SWIGGY',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 6.0,
                  fontWeight: FontWeight.bold,
                ),),
                Text('POP',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),)
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on,
                  color: Colors.black),
              title: Text('Near Me',
                style: TextStyle(
                    color: Colors.black
                ),)
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            color: Colors.black),
            title: Text('Explore',
            style: TextStyle(
              color: Colors.black
            ),)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel,
                  color: Colors.black),
              title: Text('Cart',
                style: TextStyle(
                    color: Colors.black
                ),)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: Colors.black),
              title: Text('Profile',
                style: TextStyle(
                    color: Colors.black
                ),)
          )

        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

  }
}