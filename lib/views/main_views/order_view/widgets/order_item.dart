import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/order_view/widgets/qty_button.dart';
class OrderItemCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? price;
  final String? imagePath;
  final bool showDelete;

  const OrderItemCard({
    super.key,
    this.title,
    this.subtitle,
    this.price,
    this.imagePath,
    this.showDelete = false,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        background: Container(
          margin:  EdgeInsets.only(bottom: 16.h),
          padding:  EdgeInsets.only(right: 24.w),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child:  Icon(
            Icons.delete_forever_outlined,
            color: Colors.white,
            size: 28.r,
          ),
        ),
      child: Container(
        width: 310.w,
        height: 85.h,
        margin:  EdgeInsets.only(bottom: 4.h),
        padding:  EdgeInsets.symmetric(horizontal: 8.w , vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: .25),
              blurRadius: .5,
              spreadRadius: .5,
              offset: Offset(.5, .5),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/images/order_photo.png' , width: 65.w, height: 65.h,),
            SizedBox(width: screenWidth * .02, ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Spacy fresh crab',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: kPrimaryFont,
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
                ),
                Text('Waroenk kita',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: kPrimaryFont,
                    color: Colors.black.withValues(alpha: .3),
                    fontSize: 14.sp,
                  ),
                ),
                Text('\$ 35',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: kPrimaryFont,
                    color:kPrimaryColor,
                    fontSize: 19.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                QtyButton(
                  backGroundColor: kPrimaryColor.withValues(alpha: .2) ,
                    onTap: (){},
                    icon: Icons.remove,
                  iconColor: kPrimaryColor,
                ),
                SizedBox(width: screenWidth * .02,),
                Text('1'),
                SizedBox(width: screenWidth * .02,),
                QtyButton(
                  backGroundColor: kPrimaryColor,
                    onTap: (){},
                    icon: Icons.add,
                  iconColor: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
