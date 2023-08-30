import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/result_page.dart';
import 'package:yasam_beklentisi/user_data.dart';
import './my_container.dart';
import './cinsiyet_column.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet = '';
  double icilenSigara = 0.0;
  double haftadaSpor = 0.0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                      onPress: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'BOY',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '$boy',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: 0,
                                child: OutlinedButton(
                                    style: ButtonStyle(),
                                    onPressed: () {
                                      setState(() {
                                        boy++;
                                      });
                                    },
                                    child: Icon(Icons.plus_one_outlined)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              RotatedBox(
                                quarterTurns: 0,
                                child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        boy--;
                                      });
                                    },
                                    child: Icon(Icons.exposure_minus_1)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'KİLO',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '$kilo',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: 0,
                                child: OutlinedButton(
                                  style: ButtonStyle(),
                                  onPressed: () {
                                    setState(() {
                                      kilo++;
                                    });
                                  },
                                  child: Icon(Icons.plus_one_outlined),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              RotatedBox(
                                quarterTurns: 0,
                                child: ButtonTheme(
                                  minWidth: 36,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        setState(() {
                                          kilo--;
                                        });
                                      },
                                      child: Icon(Icons.exposure_minus_1)),
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
            Expanded(
              child: MyContainer(
                onPress: () {},
                child: Column(
                  children: <Widget>[
                    Text(
                      'Haftada Kaç Gün Spor Yapıyorsunuz?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${haftadaSpor.round()}',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        divisions: 7,
                        min: 0,
                        max: 7,
                        value: haftadaSpor,
                        onChanged: (double newValue) {
                          setState(() {
                            haftadaSpor = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Günde Kaç Sigara İçiyorsunuz?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${icilenSigara.round()}',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: icilenSigara,
                      min: 0,
                      max: 30,
                      onChanged: (double newValue) {
                        setState(() {
                          icilenSigara = newValue;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.pink
                          : Colors.white,
                      child: CinsiyetColumn(
                        cinsiyet: Icons.woman_2,
                        bilgi: 'KADIN',
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Color.fromARGB(255, 43, 68, 231)
                          : Colors.white,
                      child: CinsiyetColumn(
                        cinsiyet: Icons.man_2,
                        bilgi: 'ERKEK',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {},
                child: ButtonTheme(
                  minWidth: 32,
                  height: 44,
                  splashColor: Colors.white70,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(UserData(
                                  kilo: kilo,
                                  boy: boy,
                                  icilenSigara: icilenSigara,
                                  seciliCinsiyet: seciliCinsiyet,
                                  haftadaSpor: haftadaSpor,
                                ))),
                      );
                    },
                    child: Text(
                      'HESAPLA',
                      style: TextStyle(fontSize: 44),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
