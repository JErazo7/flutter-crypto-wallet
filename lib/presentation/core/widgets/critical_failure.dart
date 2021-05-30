import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CriticalFailure extends StatelessWidget {
  const CriticalFailure(
      {Key? key, VoidCallback? onRetry, Color color = Colors.black})
      : _onRetry = onRetry,
        _color = color,
        super(key: key);

  final VoidCallback? _onRetry;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.announcement,
            color: _color,
            size: 100.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 400.w,
            child: Text(
              '¡Ups!, ha ocurrido un error inesperado',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36.sp, color: _color),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextButton(
              onPressed: _onRetry,
              child: Text('Reintentar', style: TextStyle(fontSize: 36.sp)))
        ],
      ),
    );
  }
}
