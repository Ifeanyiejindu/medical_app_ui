import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFCFEFF),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 28,color: Color(0xFF8A86E2),),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),label: ''),

          
        ],
      ),
      backgroundColor: Color(0xFFFCFEFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
          child: Expanded(
            child: ListView(
              children: [
                //top part
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //greetings
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello,', style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Text('Jerome Bell', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),)
                      ],
                    ),

                    //Profile picture
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('lib/images/profile.jpg',
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,),
                      ),
                    )

                  ],
                ),
                SizedBox(height: 30,),
                //card
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE0F4),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      //image within card
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 30),
                        child: Image.asset('lib/images/docanim1.png', alignment: Alignment.topCenter,
                        height: 150,),
                      ),
                      SizedBox(width: 10,),
                      //right side writing within card
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How do you feel?', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 150,
                              child: RichText(text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: 'Fill out your medical card right now')
                                ]
                              )),
                            ),
                          ),

                          SizedBox(height: 20,),
                          //Get Started button
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFF8A86E2)
                            ),
                            child: Center(
                              child: Text('Get Started', style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),

                //search bar
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6FF),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'How can we help you?',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        prefixIcon: Icon(Icons.search, color: Colors.grey.shade400,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),

                //category cards
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F6FF),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image.asset('lib/icons/tooth.png', color: Color(0xff8a86e2),),
                              SizedBox(width: 10,),
                              Text('Dentist', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F6FF),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image.asset('lib/icons/scalpel.png', color: Color(0xff8a86e2),),
                              SizedBox(width: 10,),
                              Text('Surgeon', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F6FF),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image.asset('lib/icons/lungs.png', color: Color(0xff8a86e2),),
                              SizedBox(width: 10,),
                              Text('Therapist', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 35,),

                //doctor lists
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Doctor List', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                    Text('See all', style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ),)
                  ],
                ),
                SizedBox(height: 20,),

                //doctor list cards
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F6FF),
                            borderRadius: BorderRadius.circular(23)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Column(
                            children: [
                              //doctor's picture
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('lib/images/doc1.jpg',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter,),
                                  ),

                                  //rating card
                                  Container(
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Container(decoration: BoxDecoration(
                                              color:Colors.orange[200],
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Icon(Icons.star, color: Colors.orange,size: 17,),
                                            ),
                                          ),
                                          SizedBox(width: 10,),

                                          Text('4,9', style: TextStyle(
                                              fontSize: 20
                                          ),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(height: 20,),

                              Text('Dr. Arlene McCoy', style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 7,),
                              Text('Therapist 7 y.e.',
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 15
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F6FF),
                            borderRadius: BorderRadius.circular(23)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Column(
                            children: [
                              //doctor's picture
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset('lib/images/doc3.jpg',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter,),
                                  ),

                                  //rating card
                                  Container(
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Container(decoration: BoxDecoration(
                                      color:Colors.orange[200],
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Icon(Icons.star, color: Colors.orange,size: 17,),
                                            ),
                                          ),
                                          SizedBox(width: 10,),

                                          Text('4,8', style: TextStyle(
                                            fontSize: 20
                                          ),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(height: 20,),

                              Text('Dr. Albert Flores', style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 7,),
                              Text('Therapist 5 y.e.',
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 15
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
