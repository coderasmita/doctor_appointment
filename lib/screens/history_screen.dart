import 'package:doctors_appointment/models/history_model.dart';
import 'package:doctors_appointment/models/history_voicecall_model.dart';
import 'package:flutter/material.dart';

import '../const/app_assets.dart';
import '../const/app_colors.dart';
import '../const/app_text.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: const AppText(
          text: "History",
          weight: FontWeight.w500,
          size: 18,
        ),
        leading: Image.asset(AppAssets.imagesAppLogo),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.primaryColor,
              indicatorColor: AppColors.primaryColor,
              tabs: [
                Tab(text: 'Message'),
                Tab(text: 'Voice Call'),
                Tab(text: 'Video Call'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 1st body
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: HistoryModel.historyList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(HistoryModel.historyList[index].image),
                        ),
                        title: AppText(
                          text: HistoryModel.historyList[index].name,
                          size: 16,
                          weight: FontWeight.bold,
                        ),
                        subtitle: AppText(
                          text: HistoryModel.historyList[index].message,
                          size: 12,
                        ),
                        trailing: AppText(
                          text: HistoryModel.historyList[index].time,
                          size: 12,
                        ),
                      );
                    },
                  ),
                  // const Text('2nd body'),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    itemCount: HistoryModel.historyList.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                  HistoryVoicecallModel
                                      .historyVoiceCallList[index].image),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: HistoryVoicecallModel
                                      .historyVoiceCallList[index].name,
                                  weight: FontWeight.bold,
                                ),
                                AppText(
                                  text: HistoryVoicecallModel
                                      .historyVoiceCallList[index].time,
                                  size: 10,
                                ),
                              ],
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  AppColors.primaryColor.withOpacity(0.2),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: AppColors.primaryColor,
                                child: Icon(
                                  HistoryVoicecallModel
                                      .historyVoiceCallList[index].icon,
                                  size: 10,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  // const Text('3rd body'),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    itemCount: HistoryModel.historyList.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyColor,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                  HistoryVoicecallModel
                                      .historyVoiceCallList[index].image),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: HistoryVoicecallModel
                                      .historyVoiceCallList[index].name,
                                  weight: FontWeight.bold,
                                ),
                                AppText(
                                  text: HistoryVoicecallModel
                                      .historyVoiceCallList[index].time,
                                  size: 10,
                                ),
                              ],
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  AppColors.primaryColor.withOpacity(0.2),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: AppColors.primaryColor,
                                child: Icon(
                                  HistoryVoicecallModel
                                      .historyVoiceCallList[index].icon,
                                  size: 10,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
