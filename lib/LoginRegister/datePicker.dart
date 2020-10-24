import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var finaldate;

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: callDatePicker,
        child: new Container(
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 201.0, 279.0, 57.0),
            size: Size(279.0, 330.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds:
                  Rect.fromLTWH(0.0, 22.0, 279.0, 35.0),
                  size: Size(279.0, 57.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(4.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0,
                          color: const Color(0xff868686)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(
                      249.0, 28.0, 20.0, 22.9),
                  size: Size(279.0, 57.0),
                  pinRight: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                  // Adobe XD layer: 'calendar-alt' (shape)
                  SvgPicture.string(
                    _svg_mmppk5,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds:
                  Rect.fromLTWH(10.0, 30.0, 100.0, 15.0),
                  size: Size(279.0, 57.0),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: finaldate == null
                      ? Text(
                    "Select date",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff6b6969),
                    ),
                  )
                      : Text(
                    "$finaldate",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff6b6969),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds:
                  Rect.fromLTWH(0.0, 0.0, 100.0, 17.0),
                  size: Size(279.0, 57.0),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Date of Birth',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        )
    );

  }
}

const String _svg_mmppk5 =
    '<svg viewBox="297.0 333.0 20.0 22.9" ><path transform="translate(297.0, 333.0)" d="M 6.607143402099609 12.85714435577393 L 4.821429252624512 12.85714435577393 C 4.526786327362061 12.85714435577393 4.285714149475098 12.61607360839844 4.285714149475098 12.32143020629883 L 4.285714149475098 10.53571510314941 C 4.285714149475098 10.2410717010498 4.526786327362061 10 4.821429252624512 10 L 6.607143402099609 10 C 6.901786804199219 10 7.142858028411865 10.2410717010498 7.142858028411865 10.53571510314941 L 7.142858028411865 12.32143020629883 C 7.142858028411865 12.61607360839844 6.901786804199219 12.85714435577393 6.607143402099609 12.85714435577393 Z M 11.42857265472412 12.32143020629883 L 11.42857265472412 10.53571510314941 C 11.42857265472412 10.2410717010498 11.18750095367432 10 10.89285850524902 10 L 9.107143402099609 10 C 8.8125 10 8.571428298950195 10.2410717010498 8.571428298950195 10.53571510314941 L 8.571428298950195 12.32143020629883 C 8.571428298950195 12.61607360839844 8.8125 12.85714435577393 9.107143402099609 12.85714435577393 L 10.89285850524902 12.85714435577393 C 11.18750095367432 12.85714435577393 11.42857265472412 12.61607360839844 11.42857265472412 12.32143020629883 Z M 15.71428775787354 12.32143020629883 L 15.71428775787354 10.53571510314941 C 15.71428775787354 10.2410717010498 15.47321605682373 10 15.17857265472412 10 L 13.39285850524902 10 C 13.09821605682373 10 12.85714435577393 10.2410717010498 12.85714435577393 10.53571510314941 L 12.85714435577393 12.32143020629883 C 12.85714435577393 12.61607360839844 13.09821605682373 12.85714435577393 13.39285850524902 12.85714435577393 L 15.17857265472412 12.85714435577393 C 15.47321605682373 12.85714435577393 15.71428775787354 12.61607360839844 15.71428775787354 12.32143020629883 Z M 11.42857265472412 16.60714530944824 L 11.42857265472412 14.8214282989502 C 11.42857265472412 14.5267858505249 11.18750095367432 14.28571605682373 10.89285850524902 14.28571605682373 L 9.107143402099609 14.28571605682373 C 8.8125 14.28571605682373 8.571428298950195 14.5267858505249 8.571428298950195 14.8214282989502 L 8.571428298950195 16.60714530944824 C 8.571428298950195 16.90178680419922 8.8125 17.14285659790039 9.107143402099609 17.14285659790039 L 10.89285850524902 17.14285659790039 C 11.18750095367432 17.14285659790039 11.42857265472412 16.90178680419922 11.42857265472412 16.60714530944824 Z M 7.142858028411865 16.60714530944824 L 7.142858028411865 14.8214282989502 C 7.142858028411865 14.5267858505249 6.901786804199219 14.28571605682373 6.607143402099609 14.28571605682373 L 4.821429252624512 14.28571605682373 C 4.526786327362061 14.28571605682373 4.285714149475098 14.5267858505249 4.285714149475098 14.8214282989502 L 4.285714149475098 16.60714530944824 C 4.285714149475098 16.90178680419922 4.526786327362061 17.14285659790039 4.821429252624512 17.14285659790039 L 6.607143402099609 17.14285659790039 C 6.901786804199219 17.14285659790039 7.142858028411865 16.90178680419922 7.142858028411865 16.60714530944824 Z M 15.71428775787354 16.60714530944824 L 15.71428775787354 14.8214282989502 C 15.71428775787354 14.5267858505249 15.47321605682373 14.28571605682373 15.17857265472412 14.28571605682373 L 13.39285850524902 14.28571605682373 C 13.09821605682373 14.28571605682373 12.85714435577393 14.5267858505249 12.85714435577393 14.8214282989502 L 12.85714435577393 16.60714530944824 C 12.85714435577393 16.90178680419922 13.09821605682373 17.14285659790039 13.39285850524902 17.14285659790039 L 15.17857265472412 17.14285659790039 C 15.47321605682373 17.14285659790039 15.71428775787354 16.90178680419922 15.71428775787354 16.60714530944824 Z M 20 5 L 20 20.71428871154785 C 20 21.8973217010498 19.0401782989502 22.85714530944824 17.85714530944824 22.85714530944824 L 2.142857074737549 22.85714530944824 C 0.9598215222358704 22.85714530944824 0 21.8973217010498 0 20.71428871154785 L 0 5 C 0 3.816964387893677 0.9598215222358704 2.85714316368103 2.142857074737549 2.85714316368103 L 4.285714149475098 2.85714316368103 L 4.285714149475098 0.5357142686843872 C 4.285714149475098 0.2410714477300644 4.526786327362061 0 4.821429252624512 0 L 6.607143402099609 0 C 6.901786804199219 0 7.142858028411865 0.2410714477300644 7.142858028411865 0.5357142686843872 L 7.142858028411865 2.85714316368103 L 12.85714435577393 2.85714316368103 L 12.85714435577393 0.5357142686843872 C 12.85714435577393 0.2410714477300644 13.09821605682373 0 13.39285850524902 0 L 15.17857265472412 0 C 15.47321605682373 0 15.71428775787354 0.2410714477300644 15.71428775787354 0.5357142686843872 L 15.71428775787354 2.85714316368103 L 17.85714530944824 2.85714316368103 C 19.0401782989502 2.85714316368103 20 3.816964387893677 20 5 Z M 17.85714530944824 20.4464282989502 L 17.85714530944824 7.142858028411865 L 2.142857074737549 7.142858028411865 L 2.142857074737549 20.4464282989502 C 2.142857074737549 20.59375190734863 2.26339316368103 20.71428871154785 2.410714626312256 20.71428871154785 L 17.58928680419922 20.71428871154785 C 17.73660850524902 20.71428871154785 17.85714530944824 20.59375190734863 17.85714530944824 20.4464282989502 Z" fill="#000000" fill-opacity="0.6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';