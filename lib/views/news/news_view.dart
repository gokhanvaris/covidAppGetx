import 'package:covidapp/controller/news_view_controler.dart';
import 'package:covidapp/views/home/home_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsView extends StatefulWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    NewsViewController _controller = Get.find<NewsViewController>();
    return Scaffold(
        body: Obx(() => _controller.isLoading.isTrue
            ? const CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Container(
                        height: 150,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            image: DecorationImage(
                                image: NetworkImage(_controller
                                    .apiServiceModel!.resultNews![0].image
                                    .toString()))),
                        child: Text(''),
                      ),
                      title: Column(
                        children: [
                          Text(
                            _controller.apiServiceModel!.resultNews![0].name
                                .toString(),
                            style: kHomeTextStyle(
                                18, Colors.black, FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            _controller
                                .apiServiceModel!.resultNews![0].description
                                .toString(),
                            style: kHomeTextStyle(
                                18, Colors.black, FontWeight.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )));
  }
}
