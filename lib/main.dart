import 'package:cofee_shop/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
      title: 'cofee shop',
      home:  Home(),//Home(),
      routes: { '/details' : (cntx)=> DetailPage()},
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR")));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'حمید, خوش آمدید',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/img_avatar.png'))
            ],
          ),
          Text('بهترین طعم قهوه را انتخاب کن و از نوشیدن آن لذت ببر'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'بهترین های این هفته',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'همه محصولات',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context , i)=>productWidget(),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('نزدیک ترینها',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('مشاهده همه',style: TextStyle(color: Colors.grey),)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, item){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('images/cafee.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                );
              },
            )
          )
        ],
      ),
    );
  }
}

class productWidget extends StatelessWidget {
  const productWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      width: 200,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
              ),
              Positioned(
                  top: 30,
                  child: Container(
                    height: 220,
                    width: 180,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xfae7d293),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'چهارباغ',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Spresoo',
                          style: TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'این نوشیدنی شامل شیر قهوه است که به صورت گرم سرو می شود',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 هزار تومان',
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: 2,
                left: 80,
                child: Image.asset('images/cup.png'),
                width: 50,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/details');
            },
            child: Container(
              height: 30,
              width: 220,
              child: Center(
                  child: Text(
                'سفارش بده',
                style: TextStyle(color: Colors.white),
              )),
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
