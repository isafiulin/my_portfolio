import 'package:flutter/material.dart';
import '../../../res/constants.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: defaultPadding * 2.0,
            width: defaultPadding * 2.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                      color: Colors.pinkAccent.withOpacity(.5),
                      offset: const Offset(1, 1)),
                  BoxShadow(
                      color: Colors.blue.withOpacity(.5),
                      offset: const Offset(-1, -1)),
                ]),
            child: Center(
                child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                        colors: [Colors.pink, Colors.blue.shade900])
                    .createShader(bounds);
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
                size: defaultPadding * 1.2,
              ),
            )),
          ),
        ),
        const Spacer(
          flex: 5,
        )
      ],
    );
  }
}
