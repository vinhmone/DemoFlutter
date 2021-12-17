import 'package:demo/model/event.dart';
import 'package:demo/news/news_banner_card.dart';
import 'package:demo/news/event_theme.dart';
import 'package:demo/news/my_appbar.dart';
import 'package:demo/news/nav_events.dart';
import 'package:demo/news/news_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyAppbar(
          height: 150,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 14.0,
              right: 16.0,
            ),
            child: Column(
              children: [
                const NavEvents(
                  title: 'US Politics',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Event.samples.length,
                    itemBuilder: (context, index) {
                      return NewBannerCard(event: Event.samples[index]);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const NavEvents(title: 'Middle East'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: Event.samples.length,
                    itemBuilder: (context, index) {
                      return NewsCard(event: Event.samples[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
