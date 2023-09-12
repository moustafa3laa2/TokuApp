import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class NumbersCategory extends StatelessWidget {
  const NumbersCategory({Key? key,required this.number}) : super(key: key);
  final Number number;

  

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 100,
            color: const Color(0xffF99531),
            child: Row(children: [
              Container(
                color: const Color(0xffFFF6DC),
                child: Image.asset(number.image)),
               Padding(
                padding:  const EdgeInsets.only(left: 16),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(number.jpName,style: const TextStyle(color: Colors.white, fontSize: 18),),
                    Text(number.enName,style: const TextStyle(color: Colors.white, fontSize: 18),),
              
                  ],
                ),
              ),
              const Spacer(),
              const Padding(
                padding:  EdgeInsets.only(right: 10),
                child:  Icon(Icons.play_arrow,color: Colors.white,size: 30,),
              ),
            ],),
          );
  }
}