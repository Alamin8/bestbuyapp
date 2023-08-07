import 'package:flutter/material.dart';



class RoundButton extends StatelessWidget {

  final String title ;
  final bool loading ;
  final VoidCallback onPress ;
  const RoundButton({Key? key ,
    required this.title,
    this.loading = false ,
    required this.onPress ,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff6C60E0),
            borderRadius: BorderRadius.circular(10)
        ),
        child: SizedBox(
          height: 52,
          child: Center(
                child:loading ? Transform.scale(
                    scale: .6,
                  child: CircularProgressIndicator(color: Colors.white, strokeWidth: 4,),
                ) :  Text(title ,
                  style: TextStyle(color: Colors.white, fontSize: 17.0,),
                )),
          ),
        ),
    );
  }
}






// SizedBox(
// width: double.infinity,
// child: ElevatedButton(
// style: ElevatedButton.styleFrom(
// backgroundColor: const Color(0xff6C60E0),
// ),
// onPressed: () {
//
// },
// child: const Padding(
// padding: EdgeInsets.all(15.0),
// child:  Text(
// 'Login',
// style: TextStyle(
// fontSize: 16.0,
// ),
// ),
// )),
// )