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
        TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
            // " Aenean commodo ligula eget dolor. Aenean massa. "
            // "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus"
            // ". Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. "
            // "Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
        styleDescription:
        TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),

        backgroundColor: Colors.white,
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
        title: "Eat a rainbow of fruits and vegetables",
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "Ye indulgence unreserved connection alteration appearance",
        styleDescription:
        TextStyle(color: Colors.black, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        backgroundColor: Colors.white,
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
        title: "Fruits are your Best Friends",
        styleTitle:
        TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription:
        TextStyle(color: Colors.black, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        backgroundColor: Colors.white,

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
      color: Color(0xffF3B4BA),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffF3B4BA),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffF3B4BA),
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
        colorDot: Color(0x33FFA8B0),
        colorActiveDot: Color(0xffFFA8B0),
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
