import 'package:flutter/material.dart';

class News {
  const News({required this.image, required this.date, required this.text});
  final String image;
  final String date;
  final String text;
}

News news1 = const News(
    image: 'assets/1img.png',
    date: '1 Feb, 2020',
    text:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.2 months ago');
News news2 = const News(
    image: 'assets/2img.png',
    date: '5/27/15',
    text:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit http://www.conecom.com');
News news3 = const News(
    image: 'assets/3img.png',
    date: '1/15/12 17 Oct, 2020',
    text:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit');
News news4 = const News(
    image:'assets/4img.png',
    date: '21 Sep, 2020',
    text:
        'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit Pembroke Pines');
News news5 = const News(
    image: 'assets/5img.png',
    date: '8 Sep, 2020',
    text: 'Nguyen, Shane http://www.conecom.com');

    final List <News> newsList = [news1,news2,news3,news4,news5];
