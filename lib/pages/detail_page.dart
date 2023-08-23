import 'package:flutter/material.dart';
import 'package:tmap_raster_flutter_sample/models/station_info.dart';

class DetailScreen extends StatelessWidget {
  final StationInfo stationInfo;

  const DetailScreen({super.key, required this.stationInfo});

  @override
  Widget build(BuildContext context) {
    DateTime nowTime;
    nowTime = DateTime.now();
    String currenttime = '';
    currenttime = nowTime.toString();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 4,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          '충전소 상세정보',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
              null;
            },
            icon: const Icon(Icons.star_border_outlined),
            iconSize: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              null;
            },
            icon: const Icon(Icons.upload_outlined),
            iconSize: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stationInfo.name,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter'),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '전기차충전소',
                style: TextStyle(fontSize: 16, color: Colors.black26),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.blue, width: 1.0)),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_2_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '충전 시작하기',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 13)),
              const Icon(
                Icons.place,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                stationInfo.address,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 13)),
              Icon(
                Icons.schedule_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '24시간영업',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            indent: 13,
            endIndent: 13,
            thickness: 1,
            color: Colors.grey.shade400,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 13)),
              const Icon(
                Icons.edit_note_outlined,
                color: Colors.blue,
                size: 28,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '정보 수정 요청  >',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 8,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 13)),
              Text(
                '실시간 현황  ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.help,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}



// Image.asset(
//           '/image/adot.png',
//           width: 422,
//           height: 441,
//         ),