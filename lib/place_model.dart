import 'package:flutter/material.dart';

class Place {
  final String imageUrl;
  final String city;
  final String country;
  final int properties;

  Place({this.imageUrl, this.city, this.country, this.properties});
}

final places = [
  Place(
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/08/20/02/15/home-2660480_1280.jpg',
    city: 'Amsterdam',
    country: 'Netherlands',
    properties: 203,
  ),
  Place(
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/11/14/03/38/phra-nakhon-si-ayutthaya-1822502_1280.jpg',
    city: 'Bangkok',
    country: 'Thailand',
    properties: 586,
  ),
  Place(
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/11/13/23/34/palace-530055_1280.jpg',
    city: 'London',
    country: 'England',
    properties: 427,
  ),
  Place(
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/03/26/09/49/colosseum-690384_1280.jpg',
    city: 'Rome',
    country: 'Italy',
    properties: 891,
  ),
  Place(
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/06/06/09/36/building-363244_1280.jpg',
    city: 'Sydney',
    country: 'Australia',
    properties: 162,
  ),
  Place(
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/04/20/11/39/japan-4141578_1280.jpg',
    city: 'Tokyo',
    country: 'Japan',
    properties: 372,
  ),
];
