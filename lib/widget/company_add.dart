import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/resource/color_manager.dart';

class CompanyAdd extends StatelessWidget {
  const CompanyAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 2,
      dashPattern: [10, 10],
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      color: ColorManager.primary5,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: ColorManager.primary4.withOpacity(0.1),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                  Text(
                    '업체 등록',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
