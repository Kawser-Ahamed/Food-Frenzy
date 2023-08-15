import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_frenzy/api/google_map.dart';
import 'package:food_frenzy/constant/app_color.dart';
import 'package:food_frenzy/widget/custom_text.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyBottomSheet{
   static void showMyBottomSheet(BuildContext context){
      showModalBottomSheet(
        context: context,
         builder: (context) {
           return Container(
              height: (MediaQuery.of(context).size.height/2)-100.h,
              width: double.maxFinite.w,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(50.sp),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.location,
                          size: 70.sp,
                          color: AppColor.mainColor,
                        ),
                        SizedBox(width: 50.w,),
                        MyText(text: "Use my current location", color: AppColor.mainColor, size: 50.sp, bold: true)
                      ],
                    ),
                    SizedBox(height: 100.h),
                    Container(
                      height: 500.h,
                      width: double.maxFinite.w,
                      color: AppColor.mainColor.withOpacity(0.2),
                      child: const MyGoogleMap(zoom: 18.9),
                    ),
                    SizedBox(height: 100.h,),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.add,
                          size: 70.sp,
                          color: AppColor.mainColor,
                        ),
                        SizedBox(width: 50.w,),
                        InkWell(
                          onTap: ()async{
                            if (await Permission.location.isGranted) {
                                await getLocation();
                            } else {
                              PermissionStatus permissionStatus = await Permission.location.request();
                              if (permissionStatus.isGranted) {
                                 await getLocation();
                              } else {
                                //Permission Denied
                              }
                            }
                          },
                          child: MyText(text: "Add new location", color: AppColor.mainColor, size: 50.sp, bold: true))
                      ],
                    ),
                  ],
                ),
              ),
           );
         },
      );
   }
   
    static Future<void> getLocation() async{
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );

      double latitude = position.latitude;
      double longitude = position.longitude;
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
       sharedPreferences.setDouble('lat', latitude);
       sharedPreferences.setDouble('lng', longitude);

      List<Placemark> placemarks = await placemarkFromCoordinates(
          latitude,
          longitude,
      );
      
       if (placemarks.isNotEmpty) {
          Placemark placemark = placemarks[0];
          String locationName = '${placemark.locality}, ${placemark.administrativeArea}';
          sharedPreferences.setString('loc', locationName);
       }
    }
}