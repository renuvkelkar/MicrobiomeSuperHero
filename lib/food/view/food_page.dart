import 'package:aahaarkarnti_chart_app/food/cubit/food_cubit.dart';
import 'package:aahaarkarnti_chart_app/views/SelectionScreen/selectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';


class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FoodCubit()..loadItems(),
      child: const FoodView(),
    );
  }
}

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FoodCubit>().state;

    if (state.status == FoodStatus.loading) {

      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Aahaar Nutrient Calculator'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SelectionScreen()));
          }, icon: Icon(Icons.home))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8),
            //   child: Text('Status: ${state.status}'),
            // ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [

                      Image.network("https://cdn-icons-png.flaticon.com/512/4661/4661512.png",height: 45,width: 45,fit: BoxFit.cover,),
                      3.heightBox,
                      Text("Fibre Count").text.gray500.bold.make(),
                      2.heightBox,
                      Text(state.totalfiber.toString(),).text.xl.bold.make(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.network("https://cdn-icons-png.flaticon.com/128/2316/2316949.png",height: 45,width: 45,fit: BoxFit.cover,),
                      3.heightBox,
                      Text("Calories Count").text.gray500.bold.make(),
                      2.heightBox,
                      Text(state.totalCalories.toString()).text.xl.bold.make(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.network("https://cdn-icons-png.flaticon.com/512/2736/2736244.png",height: 45,width: 45,fit: BoxFit.cover,),
                      3.heightBox,
                      Text("Protein Count").text.gray500.bold.make(),
                      2.heightBox,
                      Text(state.totalprotine.toString()).text.xl.bold.make(),
                    ],
                  ),
                ),
              ],
            ).py8(),


            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/Images/plate.png',
                  height: context.isMobile?context.screenHeight*0.5:context.screenHeight*0.6,
                ),
                // InkWell(
                //   onTap: (){
                //     context.read<FoodCubit>().removeAll();},
                //   child: VxBox(
                //       child: "Clear".text.makeCentered()
                //   ).height(30).width(50).red500.makeCentered(),
                // ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 500,

                    child: Wrap(
                      children: [
                        for (final food in state.items)
                          Column(
                            children: [
                              Image.network(
                                food.imgUrl,
                                height: context.isMobile?50:70,
                                width: context.isMobile?50:70,
                                fit: BoxFit.cover,
                              ),

                            ],
                          ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            // GridView.builder(
            //   itemCount: mockFoodItems.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isMobile?3:6),
            //     itemBuilder: (context,index){
            //
            //     })
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    context.read<FoodCubit>().removeAll();
                  },
                  child: Text("Clear Plate").text.white.semiBold.xl.make().p4(),
                  color: Colors.red,
                ),
                Container(
                  // color: Colors.redAccent,
                 //height: context.isMobile?context.screenHeight:context.screenHeight*0.5,
                   width: context.isMobile?context.screenWidth:context.screenWidth,
                  child: GridView.builder(
                    //scrollDirection: context.isMobile?Axis.vertical:Axis.horizontal,
                      //scrollDirection: context.isMobile?Axis.vertical:Axis.horizontal,

                    physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isMobile?3:8,
                      ),
                    itemCount: mockFoodItems.length,
                      itemBuilder: (context,index){
                      return Card(
                       // color: Colors.green,
                        child: Container(
                          height: context.isMobile?context.screenHeight*0.15:context.screenHeight*0.15,
                          width: context.isMobile?120:150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Column(
                                children: [
                                  Image.network(
                                    mockFoodItems[index].imgUrl,
                                    height:context.isMobile? 60:80,
                                    width: context.isMobile?60:80,
                                    fit: BoxFit.cover,
                                  ),
                                  Text( mockFoodItems[index].name,),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        context.read<FoodCubit>().addItem(mockFoodItems[index]);
                                      },
                                      icon: const Icon(
                                        Icons.add_box,
                                        size: 30,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        context.read<FoodCubit>().removeItem(mockFoodItems[index]);
                                      },
                                      icon: const Icon(
                                        Icons.indeterminate_check_box,
                                        size: 30,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ).centered(),
                      );
                      }),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     for (final food in mockFoodItems)
            //       Padding(
            //         padding: const EdgeInsets.all(8),
            //         child: Card(
            //           child: Padding(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   children: [
            //                     Image.network(
            //                       food.imgUrl,
            //                       height: 80,
            //                       width: 80,
            //                       fit: BoxFit.cover,
            //                     ),
            //                     Text(food.name),
            //                   ],
            //                 ),
            //                 Row(
            //                   children: [
            //                     IconButton(
            //                       onPressed: () {
            //                         context.read<FoodCubit>().addItem(food);
            //                       },
            //                       icon: const Icon(
            //                         Icons.add_box,
            //                         size: 40,
            //                         color: Colors.orange,
            //                       ),
            //                     ),
            //                     IconButton(
            //                       onPressed: () {
            //                         context.read<FoodCubit>().removeItem(food);
            //                       },
            //                       icon: const Icon(
            //                         Icons.indeterminate_check_box,
            //                         size: 40,
            //                         color: Colors.orange,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
