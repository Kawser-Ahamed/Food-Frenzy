import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantFood extends StatefulWidget {
  final String restaurantName;
  const RestaurantFood({super.key, required this.restaurantName});

  @override
  State<RestaurantFood> createState() => _RestaurantFoodState();
}

class _RestaurantFoodState extends State<RestaurantFood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.maxFinite.h,
        width: double.maxFinite.w,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500.h,
                width: double.maxFinite.w,
                color: Colors.transparent,
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance.collection('Sultan Dine - Top Banner').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if(snapshot.hasData){
                      List<dynamic> restaurantTopBanner = snapshot.data!.docs.map((doc) => doc.data()).toList();
                      return ListView.builder(
                        itemCount: restaurantTopBanner.length,
                        itemBuilder: (context, index) {
                          Map<String,dynamic> restaurantTopBannerUrl = restaurantTopBanner[index] as Map<String,dynamic>;
                          return Container(
                            height: 500.h,
                            width: double.maxFinite.w,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              image: DecorationImage(
                                image: NetworkImage(restaurantTopBannerUrl['image-url']),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      );
                    }
                    else{
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}