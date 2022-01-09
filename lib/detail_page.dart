import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              color: Color(0xFFF3B2B7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      'اسپرسو قوی',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      )),
                    )
                  ]),
                  Container(
                    width: MediaQuery.of(context).size.width * 1 / 3,
                    child: Text(
                        'زسیتزسی زنیسز یاز دز سیز سزد سزنیش زا زشدیز شدز شزشزتشسز سزیزدینزدسی سیتنز سیز شنتز'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(children: [
                          Text(
                            '4.2',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Text(
                            '/5',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Container(
                              width: 200,
                              height: 35,

                            ),
                            Positioned(
                                right: 5,
                                top: 5,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/profile.jpg'),fit: BoxFit.cover)),
                                )),
                            Positioned(
                                right: 20,
                                top: 5,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/profile.jpg'),fit: BoxFit.cover)),
                                )),
                            Positioned(
                                right: 40,
                                top: 5,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/profile.jpg'),fit: BoxFit.cover)),
                                )),
                          ]),
                          Text(
                            '+27 پسندید',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 2 / 3 * MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  children: [
                    Text(
                      'زمان آماده شدن:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('5 دقیقه'),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'محتویات',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 100,
                        child: ListView(
                          padding: EdgeInsets.all(10),
                          children: [
                            Ingeridient(
                              title: 'شکر',
                              color: Colors.yellow,
                              icon: Icons.account_box,
                            ),
                            Ingeridient(
                              title: 'شیر',
                              color: Colors.green,
                              icon: Icons.pin_drop,
                            ),
                            Ingeridient(title: 'قهوه', color: Colors.red),
                            Ingeridient(title: 'شکلات', color: Colors.blue),
                            Ingeridient(
                                title: 'پنیر', color: Colors.pinkAccent),
                            Ingeridient(title: 'آب', color: Colors.cyanAccent)
                          ],
                          scrollDirection: Axis.horizontal,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    Text(
                      'اطلاعات غذایی',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'کالری',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('250gr', style: TextStyle(fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'پروتئین',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('100', style: TextStyle(fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'انرژی',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('100', style: TextStyle(fontSize: 12))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'کالری',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('250gr', style: TextStyle(fontSize: 12))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown),
                        child: Center(
                          child: Text(
                            'تکمیل سفارش',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 10,
              left: 10,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/image3.png'))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ingeridient extends StatelessWidget {
  String? title;

  Color? color;

  IconData icon;

  Ingeridient(
      {Key? key,
      @required this.title,
      @required this.color,
      this.icon = Icons.favorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: this.color),
            child: Center(
              child: Icon(
                this.icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.title!,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
