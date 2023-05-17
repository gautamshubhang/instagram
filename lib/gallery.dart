DefaultTabController(length: 3,
child: Scaffold(
appBar: AppBar(
bottom: TabBar(
tabs: [
Tab(icon: Icon(Icons.photo_library),),
Tab(icon: Icon(Icons.video_library_rounded),),
Tab(icon: Icon(Icons.account_box_rounded),),
],
),
),
body: const TabBarView(
physics: BouncingScrollPhysics(),
dragStartBehavior: DragStartBehavior.down,
children: [
const Center(child: const Text('Content of Tab One')),
const Center(child: const Text('Content of Tab Two')),
const Center(child: const Text('Content of Tab Three')),
],
),
),
),