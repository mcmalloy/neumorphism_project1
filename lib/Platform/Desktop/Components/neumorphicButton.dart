import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphism_project1/Utils/gradients.dart';

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton(
      {Key? key,
      required this.text,
      required this.bottomShadow,
      required this.topShadow})
      : super(key: key);
  final String text;
  final BoxShadow bottomShadow;
  final BoxShadow topShadow;
  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  Color? backgroundColor;
  Color? neubackground = Colors.grey[300];
  Gradients gradients = Gradients();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
      },
      onExit: (event){
      },
      child: BouncingWidget(
          duration: const Duration(milliseconds: 150),
          scaleFactor: 1.0,
          onPressed: () {},
          child: Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
              child: Text(
                widget.text,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500, fontSize: 22),
              ),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: neubackground,
                boxShadow: [widget.bottomShadow, widget.topShadow]),
          )),
    );
  }
}
/*

 */
