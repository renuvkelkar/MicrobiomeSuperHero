import 'package:aahaarkarnti_chart_app/views/SelectionScreen/selectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:lottie/lottie.dart';
import "package:velocity_x/velocity_x.dart";
class IntroScreen extends StatefulWidget {


  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];
  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(


       //  heightImage: context.screenHeight*0.7,
       // widthImage: context.screenWidth*0.7,
       // centerWidget: Image.network("https://image.freepik.com/free-photo/top-view-vegetables-fruits-lettuce-tomatoes-cucumber-dill-cherry-tomatoes-zucchini-green-onion-parsley-apple-lemon-kiwi-free-space-center_140725-59431.jpg"),
        centerWidget: Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_tll0j4bb.json',
            height: 300,
            width: 300,
            fit: BoxFit.cover),
        title:
        "Food as a Medicine",
       // pathImage: "https://image.freepik.com/free-photo/top-view-fresh-fruits-composition-mellow-sliced-ripe-fruits-dark-surface-fruit-fresh-vitamine-mellow-ripe_140725-118021.jpg",
        maxLineTitle: 2,
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
        "A healthy balanced diet can prevent chronic diseases.",

        styleDescription:
        TextStyle(color: Colors.black, fontSize: 20.0,fontFamily: 'Raleway'),
        marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),

        backgroundColor: Color(0xff38aa87),
        //backgroundImage: "https://image.freepik.com/free-photo/top-view-fresh-fruits-composition-mellow-sliced-ripe-fruits-dark-surface-fruit-fresh-vitamine-mellow-ripe_140725-118021.jpg",
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      new Slide(
        centerWidget: Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_TmewUx.json',
            height: 300,
            width: 300,
            fit: BoxFit.cover),
        title: "Rainbow fruits and vegetables",
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "Eating diverse colourful fruits and vegetables gives our body the vitamins and minerals it needs.",
        styleDescription:
        TextStyle(color: Colors.black, fontSize: 20.0,  fontFamily: 'Raleway'),
        backgroundColor: Colors.yellowAccent.shade400,
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        centerWidget: Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_agde5pma.json',
            height: 300,
            width: 300,
            fit: BoxFit.cover),
        title: "Fruits as your best friends",
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
        "Fruits are rich in nutrients that can help keep us healthy.",
        styleDescription:
        TextStyle(color: Colors.black, fontSize: 20.0, fontFamily: 'Raleway'),
        backgroundColor: Colors.green,

        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.black,
      //color: Color(0xffF3B4BA),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.black,
    //color: Color(0xffF3B4BA),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.black,
     // color: Color(0xffF3B4BA),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
      overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: IntroSlider(
        // List slides
        slides: this.slides,

        // Skip button
        renderSkipBtn: this.renderSkipBtn(),
        skipButtonStyle: myButtonStyle(),

        // Next button
        renderNextBtn: this.renderNextBtn(),
        nextButtonStyle: myButtonStyle(),

        // Done button
        renderDoneBtn: this.renderDoneBtn(),
        onDonePress: this.onDonePress,
        doneButtonStyle: myButtonStyle(),

        // Dot indicator
        colorDot: Colors.black,
        colorActiveDot: Colors.black,
        //colorDot: Color(0x33FFA8B0),
        //colorActiveDot: Color(0xffFFA8B0),
        sizeDot: 13.0,

        // Show or hide status bar
        hideStatusBar: true,
        backgroundColorAllSlides: Colors.grey,

        // Scrollbar
       // verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
      ),


    );
  }
}
