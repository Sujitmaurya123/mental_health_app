import 'package:flutter/material.dart';
import 'package:mentalhealthapp/core/theme.dart';
import 'package:mentalhealthapp/features.meditation/presentation/widgets/feeling_button.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),

          ),
          SizedBox(width: 16,)
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
        child:  SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back, Sabrina!',
            style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 32,),
            Text('How are you feeling today ?',
            style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeelingButton(label: 'happy', image: 'assets/happy.png', color: DefaultColors.pink),
                FeelingButton(label: 'Calm', image: 'assets/calm.png', color: DefaultColors.purple),
                FeelingButton(label: 'Relax', image: 'assets/relax.png', color: DefaultColors.orange),
                FeelingButton(label: 'Focus', image: 'assets/focus.png', color: DefaultColors.lightteal),

              ],
            ),
            SizedBox(height: 16,),
            Text('Today\'s Task',
            style: Theme.of(context).textTheme.titleMedium,),
            

          ],
        )
      ),
      )
    );
  }
}