import 'package:aahaarkarnti_chart_app/food/cubit/food_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Food Cubit Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Status: ${state.status}'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Nutrient value',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(width: 10),
                Text(
                  state.totalCalories.toString(),
                  style: const TextStyle(fontSize: 30, color: Colors.green),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  'https://image.freepik.com/free-vector/realistic-white-plate-isolated_1284-41743.jpg',
                ),
                Wrap(
                  children: [
                    for (final food in state.items)
                      Image.network(
                        food.imgUrl,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                for (final food in mockFoodItems)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  food.imgUrl,
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                Text(food.name),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    context.read<FoodCubit>().addItem(food);
                                  },
                                  icon: const Icon(
                                    Icons.add_box,
                                    size: 40,
                                    color: Colors.orange,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    context.read<FoodCubit>().removeItem(food);
                                  },
                                  icon: const Icon(
                                    Icons.indeterminate_check_box,
                                    size: 40,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
