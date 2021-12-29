import 'package:covidapp/controller/api_service_controller.dart';
import 'package:covidapp/views/home/home_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<ApiServiceController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid App'),
        elevation: 1.0,
        backgroundColor: kHomeBackColor,
        leading: IconButton(
          onPressed: () {
            Get.toNamed('/detail');
          },
          icon: Image.asset('assets/images/menu.png'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/news');
              },
              icon: Image.asset('assets/images/bell.png'))
        ],
      ),
      body: Obx(() => _controller.isLoading.isTrue
          ? const CircularProgressIndicator()
          : HomeViewData(controller: _controller)),
    );
  }
}

class HomeViewData extends StatelessWidget {
  HomeViewData({Key? key, required this.controller}) : super(key: key);
  ApiServiceController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/covid-bg.png'), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Column(
                  children: [
                    buildInfoCard(
                        'assets/images/virus.svg',
                        controller.apiServiceModel!.result!.totalCases,
                        24,
                        Colors.white,
                        FontWeight.bold,
                        'Toplam Vaka Sayısı'),
                    buildInfoCard(
                        'assets/images/facemask.svg',
                        controller.apiServiceModel!.result!.totalDeaths,
                        24.0,
                        Colors.white,
                        FontWeight.bold,
                        'Toplam Vefat Sayısı'),
                    buildInfoCard(
                        'assets/images/map.svg',
                        controller.apiServiceModel!.result!.totalRecovered,
                        24.0,
                        Colors.white,
                        FontWeight.bold,
                        'Toplam Tedavi Sayısı'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Card buildInfoCard(String imageName, dynamic _controller, double fontSize,
          Color colorName, FontWeight fontWeight, String title) =>
      Card(
        child: Container(
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: kHomeBackColor,
              blurStyle: BlurStyle.solid,
              blurRadius: 10.0,
            )
          ], color: Colors.grey[500], borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: SvgPicture.asset(
                  imageName,
                  width: 50,
                ),
              ),
              Text(
                _controller,
                style: kHomeTextStyle(fontSize, colorName, fontWeight),
              ),
              Text(
                title,
                style: kHomeTextStyle(fontSize, colorName, fontWeight),
              ),
            ],
          ),
        ),
      );
}
