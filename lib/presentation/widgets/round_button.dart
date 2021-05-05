import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {Key? key,
      VoidCallback? onTap,
      color = const Color(0XFFF3A00FF),
      required String text})
      : _onTap = onTap,
        _color = color,
        _text = text,
        super(key: key);

  final VoidCallback? _onTap;
  final Color _color;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: InkWell(
        onTap: _onTap,
        child: PhysicalModel(
          shadowColor: Colors.white,
          elevation: 4,
          color: _color,
          borderRadius: BorderRadius.circular(25),
          child: Container(
            alignment: Alignment.center,
            height: 80.h,
            child: Text(_text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
