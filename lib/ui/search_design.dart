import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_frenzy/pages/search.dart';
import 'package:get/get.dart';

class SearchDesign extends StatefulWidget {
  final double height;
  final double width;
  const SearchDesign({super.key, required this.height, required this.width});

  @override
  State<SearchDesign> createState() => _SearchDesignState();
}

class _SearchDesignState extends State<SearchDesign> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(const Search());
      },
    child: Container(
      height: widget.height.h,
      width: widget.width.w,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.all(Radius.circular(100.sp)),
      ),
      child: Row(
        children: [
          SizedBox(width: 20.h),
          Icon(
            Icons.search,
              size: 70.sp,
          ),
          SizedBox(width: 10.w,),
          Text("Search foods here",
            style: TextStyle(
              color: Colors.black,
              fontSize: 50.sp,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
     ),
    );
  }
}