import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Disclaimer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discalimer"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'Disclaimer\n \n',
              style: TextStyle(color: Colors.black,fontSize: 15),

                  // style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: 'Last updated: (5/12/2021)\n\n',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),

                    TextSpan(text: 'The information contained on The Microbiome  app/website (the "Service") is for general information purposes only. TechPowerGirls assumes no responsibility for errors or omissions in the contents on the Service.\n\n', style: TextStyle(color: Colors.black)),
                    TextSpan(text: ' In no event shall TechPowerGirls be liable for any special, direct, indirect, consequential, or incidental damages or any damages whatsoever, whether in an action of contract, negligence or other, arising out of or in connection with the use of the Service or the contents of the Service. TechPowerGirls reserves the right to make additions, deletions, or modification to the contents on the Service at any time without prior notice. TechPowerGirls does not warrant that the website is free of viruses or other harmful components.!\n\n'),
                    TextSpan(text: 'External links disclaimer\n\n',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18)),
                    TextSpan(text: 'The Microbiome  app/website may contain links to external websites that are not provided or maintained by or in any way affiliated with TechPowerGirls. Please note that the TechPowerGirls  does not guarantee the accuracy, relevance, timeliness, or completeness of any information on these external websites.\n\n'),
                    TextSpan(text: 'Fitness disclaimer\n\n',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18)),
                    TextSpan(text: 'This website offers health, fitness and nutritional information and is designed for educational purposes only. You should not rely on this information as a substitute for, nor does it replace, professional medical advice, diagnosis, or treatment.\n\n'),
                  ],
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
