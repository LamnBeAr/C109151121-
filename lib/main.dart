import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我出生在一個很平凡但很美滿的小家庭，父親是個公務員，'
      '在學校服務，母親是個照護員，而妹妹和我都還在學校求學。'
      '父母用民主的方式管教我們，希望我們能夠獨立自主、主動學習，'
      '累積人生經驗，但他們會適時的給予鼓勵和建議，父母親只對'
      '我們要求三件事，第一是保持健康，第二是注重課業，第三是不要學壞。因為沒有'
      '健康的身體，就算有再多的才華、再大的抱負也無法發揮出來。'
      '又因為家境並不富裕，所以必須專心於課業上，學得一技之長'
      '，將來才能自立更生。除了課業之外，其他方面我也沒有偏廢。'
      '而且不要吸毒，這是我父母最加註重的事情，吸毒會毀掉一生'
      '在高一時加入選手，，每天都勤奮練習，常常都半夜才回到宿舍'
      '慶幸的是這些努力都是有收穫的。而我最喜歡的';

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("學習歷程"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 600,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('我認為自己能夠錄取上述校系主要有2大原因。第一，投入許多心思製作學檔，除了確保要有精實的內容外，'
                        '我還花費滿多時間在排版、美化上，我認為一件有內涵的作品如果有著整齊、清爽的外觀，讓人能夠舒適的欣賞，可以說是錦上添花，有加分效果。'),
                Text('第二，在學檔中展現自己的多元興趣、能力，生活中要完成一件事，往往必須具有不同方面的能力，舉例來說，'
                    '一場好的產品發表會除了口條要俐落之外，還必須搭配簡潔明瞭的投影片，才能令人印象深刻；一部票房很高的電影除了要有精采的內容以外，還必須配合適當的行銷、廣告才能變得眾所皆知。'),
                    Text('有人可能會有疑問，那究竟要學什麼技能才好，才是最正確的呢？我的答案是沒有什麼技能是最正確的，重點是決定要做一件事後要能保持熱誠，'
                        '用心去學習，確保自己真的有學到些東西。你所做的每一件事都有它們所存在的意義，或許現在看來沒有用處，但某一天說不定就能派上用場，就像賈伯斯旁聽了字體美術設計課，在後來影響了蘋果公司「優雅而極簡的美學標準」。所以說，具備越多不同的能力，除了可以完成的事情變多，也能夠看得更廣，激發出更多有趣的點子。如果真的沒有什麼特別的想法，就去學習一些涵蓋範圍比較廣的能力吧，像是：精進英文聽說讀寫（未來大概都會用上）。'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 100,
                    width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好英文'),
                      Text('2. 組合語言'),
                      Text('3. 充實人生'),
                      Text('4. 人際關係'),
                    ],
                  ),
                ),
              ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期"),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好java'),
                    Text('2. 系學會'),
                    Text('3. 人際關係'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期"),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好python'),
                    Text('2. 寫網頁'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期"),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 多益550'),
                    Text('2. 好好畢業'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("專案方向"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 開發一款受投資人喜愛且實用的機器人。'),
                    Text('2. 運用 LINE Bot Designer 撰寫內建程式。'),
                    Text('3. 將 LINE 機器人推廣出去，成為眾所皆知的應用程式。'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}
