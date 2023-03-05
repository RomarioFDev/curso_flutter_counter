import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0; // Para cambiar el estado debemos de pasarlo a una propiedad
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Contador'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Contador de clicks',
                style: textStyle,
              ),
              Text(
                '$count',
                style: textStyle,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFlotingAction(
          addClick: addClick,
          reduceClick: reducelick,
          ceroClick: ceroClick,
        ));
  }

  void reducelick() {
    count--;
    setState(() {});
  }

  void ceroClick() {
    count = 0;
    setState(() {});
  }

  void addClick() {
    count++;
    setState(() {});
  }
}

class CustomFlotingAction extends StatelessWidget {
  final Function reduceClick;
  final Function ceroClick;
  final Function addClick;
  const CustomFlotingAction({
    super.key,
    required this.reduceClick,
    required this.ceroClick,
    required this.addClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => reduceClick(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          onPressed: () => ceroClick(),
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          onPressed: () => addClick(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
