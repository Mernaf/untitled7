import 'package:flutter/material.dart';
import 'package:untitled7/main.dart';
import 'package:untitled7/screens/brand_photo/model.dart';

import '../../share/design/my_app_bar.dart';
import 'componets/item_photo.dart';

class BrandPhotoScreen extends StatelessWidget {
   BrandPhotoScreen({Key? key}) : super(key: key);

  List<BrandPhotoModel>list=[
    BrandPhotoModel(id: 0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKVXKCv_DnQohWVNQKNVzu9HGl1vncsWHAw&usqp=CAU", description:"hello", isLiked: true, numOfLikes: 100),
    BrandPhotoModel(id: 0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKVXKCv_DnQohWVNQKNVzu9HGl1vncsWHAw&usqp=CAU", description:"hello", isLiked: false, numOfLikes: 200),
    BrandPhotoModel(id: 0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKVXKCv_DnQohWVNQKNVzu9HGl1vncsWHAw&usqp=CAU", description:"hello", isLiked: false, numOfLikes: 220),
    BrandPhotoModel(id: 0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKVXKCv_DnQohWVNQKNVzu9HGl1vncsWHAw&usqp=CAU", description:"hello", isLiked: true, numOfLikes: 250,
    )];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:"Brand Photos"),
      body: ListView.builder(itemBuilder: (context, index) => ItemPhoto(model: list[index]),
    itemCount: list.length,
      ),
    );
  }
}
