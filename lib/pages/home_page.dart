// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/my_button.dart';
import 'package:walletappui/utils/my_card.dart';
import 'package:walletappui/utils/my_listilles.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

     

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.payments, size: 32,),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 32, color: Colors.pink[200],)
              ),
          
              IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 32, color: Colors.grey,)
              ),
            ],),
          ),
         ),

      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
              Text('My',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),

              Text(' Cards',
              style: TextStyle(fontSize: 28),),
              ],),

              // plus button

              Container(child: Icon(Icons.add),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.grey[400],
              shape: BoxShape.circle),
              ),
              
            ],
            ),
          ),

          SizedBox(height: 25),
      
      
        // card

        Container(
          height: 200,
          child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
          children: [
            MyCard(
              balance: 2828.333,
              cardNumber: 1282234,
              expiryMonth: 10,
              expiryYear: 26,
              color: Colors.deepPurple[400],
            ),

            MyCard(
              balance: 983817,
              cardNumber: 123982139,
              expiryMonth: 11,
              expiryYear: 23,
              color: Colors.deepOrange[400],
            ),

            MyCard(
              balance: 2828.33,
              cardNumber: 1098833,
              expiryMonth: 12,
              expiryYear: 26,
              color: Colors.brown[400],
            ),

            MyCard(
              balance: 2828.333,
              cardNumber: 1282234,
              expiryMonth: 10,
              expiryYear: 26,
              color: Colors.amber[400],
            ),


            MyCard(
              balance: 2828.333,
              cardNumber: 1282234,
              expiryMonth: 10,
              expiryYear: 26,
              color: Colors.yellow[400],
            ),

            MyCard(
              balance: 983817,
              cardNumber: 123982139,
              expiryMonth: 11,
              expiryYear: 23,
              color: Colors.red[400],
            ),

            MyCard(
              balance: 2828.33,
              cardNumber: 1098833,
              expiryMonth: 12,
              expiryYear: 26,
              color: Colors.green[400],
            ),

            MyCard(
              balance: 2828.333,
              cardNumber: 1282234,
              expiryMonth: 10,
              expiryYear: 26,
              color: Colors.blue[400],
            ),


            

          ],
        ),
        ),

        SizedBox(height: 25,),

        SmoothPageIndicator(controller: _controller, count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.grey.shade800,
        ),
        ),

        // buttons
        SizedBox(height: 40,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            // send button
        
            MyButton(
              iconImagePath: 'lib/icons/send.png', 
              buttonText: 'Send',
            ),
            
        
        
        
            //pay button
        
            MyButton(
              iconImagePath: 'lib/icons/credit-card.png', 
              buttonText: 'Pay',
            ),
        
        
            // bill button
        
            MyButton(
              iconImagePath: 'lib/icons/bill.png', 
              buttonText: 'Bill',
            ),
        
          ],),
        ),

       // SizedBox(height: 25,),

       SizedBox(height: 40,),

        // column -> stats + transaction
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            // statistics 
            MyListTiles(iconImagePath: 'lib/icons/analytics.png', 
            tileTitle: 'Statistics', 
            tileSubTitle: 'Payment and income'),

             MyListTiles(iconImagePath: 'lib/icons/cash-flow.png', 
            tileTitle: 'Transactions', 
            tileSubTitle: 'Transactions History'),
        
            // transaction history
        
          ],),
        )
      
      
        // bottom app bar
        ],),
      ),
    );
  }
}