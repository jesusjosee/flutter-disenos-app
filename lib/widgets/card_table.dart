import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            text: 'Basic Design',
            icon: Icons.account_balance_sharp,
            color: Colors.blue,
            route: 'basic_design',
          ),
          _SingleCard(
            text: 'Scroll Screen',
            icon: Icons.car_rental,
            color: Colors.purple,
            route: 'scroll_screen',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'Shopping',
            icon: Icons.shopping_bag_rounded,
            color: Colors.pink,
          ),
          _SingleCard(
            text: 'Bills',
            icon: Icons.blinds_sharp,
            color: Colors.orange,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'Entertaiment',
            icon: Icons.movie_creation,
            color: Colors.blueAccent,
          ),
          _SingleCard(
            text: 'Grocery',
            icon: Icons.apple_rounded,
            color: Colors.green,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'General',
            icon: Icons.account_balance_sharp,
            color: Colors.blue,
          ),
          _SingleCard(
            text: 'Transport',
            icon: Icons.car_rental,
            color: Colors.purple,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'General',
            icon: Icons.account_balance_sharp,
            color: Colors.blue,
          ),
          _SingleCard(
            text: 'Transport',
            icon: Icons.car_rental,
            color: Colors.purple,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final String? route ;

  _SingleCard({
    required this.icon, 
    required this.color, 
    required this.text, 
    // ignore: unused_element
    this.route});

  final boxDecoration = BoxDecoration(
    color: const Color.fromRGBO(62, 65, 107, 0.7),
    borderRadius: BorderRadius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    final String? routeText = (route == null) ? 'basic_design' : route;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '$routeText');
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 180,
        decoration: boxDecoration,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: color),
          )
        ]),
      ),
    );
  }
}
