import 'package:flutter/material.dart';

List<Map<String, dynamic>> ticketList= [
  {
    'from': {
      'code': 'JKT',
      'name': 'Jakarta'
    },
    'to': {
      'code': 'SBY',
      'name': 'Surabaya'
    },
    'flying_time': '3H 15M',
    'date': '4 OKT',
    'departure_time': '08.00 AM',
    'number': 13
  },
  {
    'from': {
      'code': 'SBY',
      'name': 'Surabaya'
    },
    'to': {
      'code': 'BLI',
      'name': 'Bali'
    },
    'flying_time': '2H 10M',
    'date': '10 OKT',
    'departure_time': '12.00 PM',
    'number': 21
  },
  {
    'from': {
      'code': 'JBR',
      'name': 'Jember'
    },
    'to': {
      'code': 'SBY',
      'name': 'Surabaya'
    },
    'flying_time': '0H 45M',
    'date': '10 OKT',
    'departure_time': '12.00 PM',
    'number': 32
  },
  {
    'from': {
      'code': 'JKT',
      'name': 'Jakarta'
    },
    'to': {
      'code': 'LBK',
      'name': 'Lombok'
    },
    'flying_time': '1H 45M',
    'date': '1 NOV',
    'departure_time': '14.00 PM',
    'number': 10
  },
  {
    'from': {
      'code': 'JKT',
      'name': 'Jakarta'
    },
    'to': {
      'code': 'RGT',
      'name': 'Riau'
    },
    'flying_time': '2H 30M',
    'date': '9 NOV',
    'departure_time': '09.00 AM',
    'number': 29
  },
  {
    'from': {
      'code': 'MKS',
      'name': 'Makassar'
    },
    'to': {
      'code': 'JKT',
      'name': 'Jakarta'
    },
    'flying_time': '1H 30M',
    'date': '10 NOV',
    'departure_time': '12.00 PM',
    'number': 19
  },
];

List<Map<String, dynamic>> destinationList = [
  {
    'image': 'https://i.ibb.co/qyM09JR/Ubud-Bali.jpg',
    'place': 'Bali',
  },
  {
    'image': 'https://i.ibb.co/fkPZW5p/Surabaya.jpg',
    'place': ' Surabaya',
  },
  {
    'image': 'https://i.ibb.co/481Byc0/Semarang.jpg',
    'place': 'Semarang',
  },
  {
    'image': 'https://i.ibb.co/WfgMYTL/Raja-Ampat.jpg',
    'place': 'Raja Ampat',
  },
  {
    'image': 'https://i.ibb.co/1nZ2HKv/Maluku.jpg',
    'place': 'Maluku',
  },
  {
    'image': 'https://i.ibb.co/JxNFBrT/Lombok.jpg',
    'place': 'Lombok',
  },
  {
    'image': 'https://i.ibb.co/CtT9H6q/Jogja.jpg',
    'place': 'Jogja',
  },
  {
    'image': 'https://i.ibb.co/ftNbjRQ/Jakarta.jpg',
    'place': 'Jakarta',
  },
  {
    'image': 'https://i.ibb.co/rFxCTZH/Bandung.jpg',
    'place': 'Bandung',
  },
];

List<Map<String, dynamic>> baliDestination = [
  {
    'image': 'https://i.ibb.co/BzNvMgk/Gwk.jpg',
    'place': 'Garuda Wisnu Kencana',
  },
  {
    'image': 'https://i.ibb.co/b3hCbC1/Kuta.jpg',
    'place': 'Pantai Kuta',
  },
  {
    'image': 'https://i.ibb.co/ggSqvjn/Seminyak.jpg',
    'place': 'Seminyak Bali',
  },
  {
    'image': 'https://i.ibb.co/Rbh16m8/Ubud.jpg',
    'place': 'Ubud Bali',
  },
  {
    'image': 'https://i.ibb.co/9rVJ5Qt/Ulun-Danu.png',
    'place': 'Ulun Danu Bali',
  },
  {
    'image': 'https://i.ibb.co/bsNV7HS/Waterbom.jpg',
    'place': 'Waterbom Bali',
  },
  {
    'image': 'https://i.ibb.co/h2t2Dv7/Uluwatu-Temple.jpg',
    'place': 'Kuil Uluwatu',
  },
];

class DataModel {
  final String image;

  DataModel(this.image);
}

List<DataModel> promoCarousel = [
  DataModel("assets/images/image-carousel-1.png"),
  DataModel("assets/images/image-carousel-2.png"),
  DataModel("assets/images/image-carousel-3.png"),
  DataModel("assets/images/image-carousel-4.png"),
  DataModel("assets/images/image-carousel-5.png"),
];