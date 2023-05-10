import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // Imagen
          Image(image: AssetImage('assets/landscape.png')),

          // Titulo
          Title(),

          // Button Section
          ButtonSection(),

          // Body Section
          BodySection()
        ],
      ),
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star_outlined,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call_outlined, text: 'CALL',),
          CustomButton(icon: Icons.map, text: 'ROUTE',),
          CustomButton(icon: Icons.share, text: 'SHARE',),
          
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),

        const SizedBox(
          height: 10,
        ),

        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: const Text("Cupidatat deserunt tempor aute in reprehenderit officia cupidatat aliquip veniam aliqua enim sunt est tempor. Veniam aute mollit ipsum culpa laborum cupidatat fugiat. Irure proident labore fugiat quis do deserunt nulla minim esse enim velit. Veniam cillum mollit est culpa aute eiusmod pariatur. Magna culpa tempor mollit cupidatat aute et adipisicing cupidatat proident consequat dolor deserunt elit qui. Voluptate cillum in voluptate minim in incididunt tempor commodo voluptate ea mollit quis."),
    );
  }
}