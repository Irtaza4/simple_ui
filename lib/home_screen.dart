
import 'package:flutter/material.dart';
import 'package:screen_design/my_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    List<Widget>screens=[
      Scaffold(),
      Center(child: Text('leave'),),
    ];
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: CircleAvatar(
              radius: 85,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/2c/ae/da/2caeda9d66b84f617019bafd56c57895.jpg',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text('Welcome David Thomas',style: TextStyle(fontSize: 20),),
          Text('Friday 21 February 2025 ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('10.00:',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
              Text('57 AM',style: TextStyle(fontSize: 25),),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyContainer(iconPath: 'assets/images/clockin.svg', text: 'Clock In'),
              SizedBox(width: 20,),
              MyContainer(iconPath: 'assets/images/clockout.svg', text: 'Clock Out')

            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyContainer(iconPath: 'assets/images/endbreak.svg', text: 'Start Break'),
              SizedBox(width: 20,),
              MyContainer(iconPath: 'assets/images/endbreak.svg', text: 'End Break')

            ],
          ),

        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xffAFBE59),
      currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: [

      BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.money),label: 'leave'),
    ]),
    );
  }
}
