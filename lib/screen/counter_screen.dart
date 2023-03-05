import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador de click',
              style: textStyle,
            ),
            Text(
              '$counter',
              style: textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        clickAdd: clickAdd,
        clickClean: clickClean,
        clickReduce: clickReduce,
      ),
    );
  }

  void clickReduce() {
    counter--;
    setState(() {});
  }

  void clickClean() {
    counter = 0;
    setState(() {});
  }

  void clickAdd() {
    counter++;
    setState(() {});
  }
}

class CustomFloatingButton extends StatelessWidget {
  final Function clickReduce;
  final Function clickClean;
  final Function clickAdd;

  const CustomFloatingButton({
    super.key,
    required this.clickReduce,
    required this.clickClean,
    required this.clickAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => clickReduce(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          onPressed: () => clickClean(),
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          onPressed: () => clickAdd(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
