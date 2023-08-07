import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  
  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustonIconButton( value: video.likes, iconColor: Colors.red, iconData: Icons.favorite ),
        const SizedBox( height: 20 ),
        _CustonIconButton( value: video.views, iconData: Icons.remove_red_eye_outlined ),
        const SizedBox( height: 20 ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustonIconButton( value: 0, iconData: Icons.play_circle_outline )
        ),
      ]
    );
  }
}

//Cuando la clase comienza con subguión
//quiere decir que es privada para el archivo
//no es de uso global

class _CustonIconButton extends StatelessWidget {
  
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustonIconButton({
    required this.value,
    required this.iconData,
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon( iconData, color: color, size: 30 )
        ),
        if( value > 0)
        Text( HumanFormats.humanRedableNumber( value.toDouble() ) )
      ]
    );
  }
}