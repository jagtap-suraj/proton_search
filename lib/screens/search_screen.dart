// google search result screen

import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/services/api_service.dart';
import 'package:proton_search/widgets/search_footer.dart';
import 'package:proton_search/widgets/search_header.dart';
import 'package:proton_search/widgets/search_result_component.dart';
import 'package:proton_search/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen({super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      title: searchQuery,
      color: blueColor,
      child: Container(
        color: footerColor,
        child: SafeArea(
          //top: false,
          //minimum: const EdgeInsets.only(top: 20),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // web header
                  Container(
                    color: footerColor,
                    child: const SearchHeader(),
                  ),

                  // tabs for news, images, videos, etc
                  Container(
                    color: footerColor,
                    width: size.width <= 768 ? double.infinity : size.width,
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width <= 768 ? 1 : 180),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SearchTabs(),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                  ),
                  // Search Result
                  FutureBuilder(
                      future: ApiService().fetchData(queryTerm: searchQuery, start: start),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: size.width <= 768 ? 10 : 180,
                                  top: 10,
                                ),
                                child: Text("About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)", style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                              ),
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: snapshot.data?['items'].length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(left: size.width <= 768 ? 10 : 180, top: 10),
                                    child: SearchResultComponent(
                                      linkToGo: snapshot.data?['items'][index]['link'],
                                      link: snapshot.data?['items'][index]['formattedUrl'],
                                      text: snapshot.data?['items'][index]['title'],
                                      description: snapshot.data?['items'][index]['snippet'],
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      }),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (start != "0") {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SearchScreen(
                                    searchQuery: searchQuery,
                                    start: (int.parse(start) - 10).toString(),
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            '< Previous',
                            style: TextStyle(fontSize: 15, color: purpleColor),
                          ),
                        ),
                        const SizedBox(width: 30),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                  searchQuery: searchQuery,
                                  start: (int.parse(start) + 10).toString(),
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            'Next >',
                            style: TextStyle(fontSize: 15, color: purpleColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SearchFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
