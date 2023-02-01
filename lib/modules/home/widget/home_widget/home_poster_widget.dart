import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/model/fake_model.dart';
import 'package:page_indicator/page_indicator.dart';

class HomePosterWidget {
  HomePosterWidget._();

  static widgetHomePoster() {
    return SizedBox(
      width: Get.width,
      height: Get.height / 3,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PageIndicatorContainer(
            length: 2,
            child: PageView.builder(
                itemCount: 2,
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  FakeModel.imagePosterGridview[index]),
                              fit: BoxFit.cover)),
                    ))),
      ),
    );
  }
}
