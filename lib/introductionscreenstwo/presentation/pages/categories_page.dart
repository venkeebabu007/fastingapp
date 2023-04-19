/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class nodietPage extends StatefulWidget implements AutoRouteWrapper {
  const nodietPage({Key? key}) : super(key: key);

  @override
  _nodietPageState createState() => _nodietPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => getIt<nodietPageVm>(),
      child: this,
    );
  }
}

class _nodietPageState extends BaseState<nodietPage, nodietPageVm>
    implements nodietPageI {
  nodietPageVm? viewModel;

  Widget bannersection() {
    return CustomContainer(
      height: 200,
      width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.all(10),
      borderColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 114, 200, 243), width: 4),
          image: DecorationImage(
            image: AssetImage("assets/images/Learning.png"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15.0),
          //border: Border.all(width: 8),
        ),
      ),
    );
  }

  Widget CategoryTextsection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'nodiet',
            style:
                TextStyle(color: Color.fromARGB(255, 53, 6, 174), fontSize: 28),
          ),
        ),
      ],
    );
  }

  Widget subjectmasterysection() {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).replace(CoursesRoute());
        // Get.to(subjectMastery());
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: 150,
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 113, 174, 224),
                Color.fromARGB(255, 14, 116, 199),
              ]),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Color.fromARGB(255, 114, 200, 243).withOpacity(1.0),
                width: 8,
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Subject Mastery',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Subject-mastery.png"))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget selfmasterysection() {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).replace(SelfemasteryRoute());

        // Get.to(selfemasterymainpage());
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: 150,
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 163, 109, 239),
                Color.fromARGB(255, 62, 3, 108),
              ]),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Color.fromARGB(255, 198, 165, 231), width: 8),
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Self Mastery',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Self-Mastery.png"))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Skillmasterysection() {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).replace(SkillmasteryRoute());
        // Get.to(subjectMastery());
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: 150,
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 113, 174, 224),
                Color.fromARGB(255, 14, 116, 199),
              ]),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Color.fromARGB(255, 114, 200, 243), width: 8),
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Skill Mastery      ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Dev.png"))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getLoadedWidget(nodietPageVm vm) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 5),

          // if (viewModel != null && viewModel?.termsAndConditions != null)
          //   Text(viewModel!.termsAndConditions!, style: customTextStyle()),
          //Text('this is nodiet page'),
          bannersection(),
          CategoryTextsection(),
          subjectmasterysection(),
          selfmasterysection(),
          Skillmasterysection(),
        ],
      ),
    );
  }

  Widget getLoadingWidget() {
    return const Center(child: CircularProgressIndicator());
  }

  @override
  Widget getWidget(BuildContext context, nodietPageVm? viewModel) {
    this.viewModel = viewModel;
    return Scaffold(
      appBar: AppBar(
        /* leading: InkWell(
          onTap: () {
            context.router.replaceAll([const HomeRoute()]);
          },
          child: Container(
            child: Icon(
              Icons.arrow_back_sharp,
              color: Color.fromARGB(255, 53, 6, 174),
              size: 25,
            ),
          ),
        ),*/
        title: Text(
          'nodiet',
          style: customTextStyle(
              color: Color.fromARGB(255, 53, 6, 174),
              weight: FontWeight.w500,
              fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: Container(
              width: 30,
              height: 30,
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Color.fromARGB(255, 53, 6, 174),
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Stack(
          children: [
            getLoadedWidget(viewModel!),
            viewModel.mIsLoading ? getLoadingWidget() : Container(),
          ],
        ),
      ),
    );
  }

  @override
  void onCreate() {
    super.onCreate();
    var vm = getViewModel();
    vm?.view = this;

    Future.microtask(() {
      viewModel?.fetchStringFromFile();
    });
  }

  @override
  void onError(String msg) {
    showError(msg: msg, isError: true);
  }

  @override
  Widget errorWidget() {
    return getCustomErrorWidget();
  }
}
*/