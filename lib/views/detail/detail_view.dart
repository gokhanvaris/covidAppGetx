import 'package:covidapp/controller/api_service_controller.dart';
import 'package:covidapp/controller/detail_view_controller.dart';
import 'package:covidapp/views/home/home_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'countries.dart';

class DetailView extends StatefulWidget {
  @override
  State<DetailView> createState() => _DetailViewState();
}

int user = 0;

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    DetailViewController _controller = Get.find<DetailViewController>();

    return Scaffold(
        body: Obx(() => _controller.isLoading.isTrue
            ? const CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      hint: const Text('Pickup on every'),
                      value: user == null ? null : countries[user],
                      items: countries.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          user = countries.indexOf(value!);
                          print(user);
                        });
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      ('Tolam Vaka : ${_controller.apiServiceModel!.resultCountry![user].totalCases.toString()}'),
                      style: kHomeTextStyle(18, Colors.black, FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      ('Toplam Vefat: ${_controller.apiServiceModel!.resultCountry![user].totalDeaths.toString()}'),
                      style: kHomeTextStyle(18, Colors.black, FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      ('Toplam Tedavi: ${_controller.apiServiceModel!.resultCountry![user].totalRecovered.toString()}'),
                      style: kHomeTextStyle(18, Colors.black, FontWeight.bold),
                    ),
                  ],
                ),
              )));
  }
}
