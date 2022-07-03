import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundeButton extends StatefulWidget {
  RoundeButton({
    required this.buttonText, 
    this.colorText, 
    required this.onPressed,
    required this.buttonBoxShape, 
    required this.buttonWidth,
  });

  final String buttonText;
  final Color? colorText;
  final void Function() onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double? buttonWidth;

  @override
  State<RoundeButton> createState() => _RoundeButtonState();
}

class _RoundeButtonState extends State<RoundeButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        boxShape: widget.buttonBoxShape,
        color: const Color(0xFFEDEBEC),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height/14,
        width: MediaQuery.of(context).size.width/widget.buttonWidth!,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 23,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      ),
    );
  }
}
