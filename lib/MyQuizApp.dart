
import 'package:flutter/material.dart';
import 'package:quizapp/model/QuestionBank.dart';

class MYQuizApp extends StatefulWidget {
  const MYQuizApp({Key? key}) : super(key: key);

  @override
  _MYQuizAppState createState() => _MYQuizAppState();
}

class _MYQuizAppState extends State<MYQuizApp> {

  List q=[Question.setQuestion("Question1", true),
  Question.setQuestion("Question2",false),
    Question.setQuestion("Question3", true),
    Question.setQuestion("Question4", false),
    Question.setQuestion("QUESTION 5", true)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("IT Quiz"),
        centerTitle: true,
      ),

      body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                  child: Image.asset("images/b5.jpg",width: 200,height: 200,)),
              //Image.asset("images/b6.jpg",width: 200,height: 200,)

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 150,

                  decoration: BoxDecoration(

                    color: Colors.transparent,
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child:Center(
                    child: Text(q[0].ques,style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20
                    ),),
                  )

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: ()=>null,

                        child: Text("TRUE"),

                    ),
                    ElevatedButton(onPressed: ()=>null,

                      child: Text("FALSE"),

                    ),
                    ElevatedButton(onPressed: ()=>null,

                      child: Text("NEXT"),

                    )



                  ],




                ),
              ),
              Spacer()

            ],


          ),





      )

    );
  }
}
