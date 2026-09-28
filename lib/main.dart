import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 131, 97, 190),
        ),
      ),
      debugShowCheckedModeBanner: false,

      //home: const MyHomePage(title: 'CHAO FLUTTER'),
      //home: ScaffoldExample(),
      //home: RowExample(),
      //home: ColumnExample(),
      //home: ColumnExample2(),
      //home: ContainerExample2(),
      //home: const NotificationBell(),
      //home: RowsExample(),
      //home: ImageExample(),
      //home: ImageExample2(),
      //home: AvatarExample(),
      home: const ProfileScreen(),
    );
  }
}

class AvatarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 90,
          backgroundColor: Colors.blue,
          child: const CircleAvatar(
            radius: 85,
            backgroundImage: AssetImage("images/fatass.png"),
          ),
        ),
      ],
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Image.asset("images/fatass.png", fit: BoxFit.fill),
    );
  }
}

class ImageExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.blue, width: 1),
        image: DecorationImage(
          image: AssetImage("images/fatass.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class NotificationBell extends StatelessWidget {
  const NotificationBell({super.key, this.count = 3});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(Icons.notifications, color: Colors.blue, size: 48),
            Positioned(
              top: 5,
              right: -1.5,
              child: Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$count',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red.shade100,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.red, size: 24),
                            SizedBox(height: 8),
                            Text('Cột 1'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.lightGreen.shade100,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.monitor_heart,
                              color: Colors.lightGreen,
                              size: 24,
                            ),
                            SizedBox(height: 8),
                            Text('Cột 2'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue.shade100,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.thumb_up, color: Colors.blue, size: 24),
                            SizedBox(height: 8),
                            Text('Cột 3'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: const Center(
                    child: Icon(Icons.star, color: Colors.white, size: 48),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.orange.shade100,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: const Center(child: Text('Cột 1: xin chao')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue.shade100,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: const Center(child: Text('Cột 2: flutter')),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App bar', style: TextStyle(fontSize: 40))),
      body: Text(
        "Hello world",
        style: TextStyle(
          fontSize: 40,
          color: Color.fromARGB(224, 45, 206, 136),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    );
  }
}

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[Text('Line 1'), Text('Line 2'), Text('Line 3')],
    );
  }
}

class ColumnExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(children: [Icon(Icons.star)]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.add), Icon(Icons.mic)],
        ),
        Row(children: [Icon(Icons.heart_broken)]),
      ],
    );
  }
}

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      padding: EdgeInsets.all(16),
      color: const Color.fromARGB(255, 30, 161, 204),
      child: Text('Hello World'),
    );
  }
}

class ContainerExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello world')),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.blue),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(width: 50, height: 50, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 40,
            color: Color.fromARGB(255, 37, 177, 27),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ══════════════════════════════════════════════
// Màn hình hồ sơ cá nhân (Profile Screen)
// ══════════════════════════════════════════════

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(44),
            border: Border.all(color: const Color(0xFFCBD5E1), width: 3),
          ),
          clipBehavior: Clip.antiAlias,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // 1. Thanh điều hướng
                _buildTopBar(),
                const SizedBox(height: 24),
                // 2. Phần đầu hồ sơ
                _buildProfileHeader(),
                const SizedBox(height: 24),
                // 3. Thẻ thống kê
                _buildStatsCard(),
                const SizedBox(height: 24),
                // 4. Giới thiệu bản thân
                _buildAboutMe(),
                const SizedBox(height: 24),
                // 5. Kỹ năng & Chuyên môn
                _buildSkillsAndExpertise(),
                const SizedBox(height: 24),
                // 6. Dự án nổi bật
                _buildFeaturedProjects(),
                const SizedBox(height: 24),
                // 7. Thẻ liên hệ
                _buildContactCard(),
                const SizedBox(height: 36),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ──────────────────────────────────────────
  // 1. Thanh điều hướng (Height: 42px)
  // ──────────────────────────────────────────
  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: 42,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: Color(0xFF334155),
              ),
            ),
            const Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0F172A),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: const Icon(
                Icons.share_outlined,
                size: 18,
                color: Color(0xFF334155),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ──────────────────────────────────────────
  // 2. Phần đầu hồ sơ (Hug: 241px, Gap: 8px)
  // ──────────────────────────────────────────
  Widget _buildProfileHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Ảnh đại diện với viền cam
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFFF6B35), width: 3),
          ),
          child: const CircleAvatar(
            radius: 46,
            backgroundImage: AssetImage('images/fatass.png'),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Nguyễn Hoàng Thanh Vũ',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Junior Mobile Engineer',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF64748B),
          ),
        ),
        const SizedBox(height: 8),
        // Hàng vị trí
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Color(0xFF22C55E),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              'HCM, Vietnam',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF64748B),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // ──────────────────────────────────────────
  // 3. Thẻ thống kê (Fixed height: 78px, Radius: 20px, Border: 1px)
  // ──────────────────────────────────────────
  Widget _buildStatsCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 78,
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0F1729).withValues(alpha: 0.04),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 18,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatItem('10', 'Projects'),
            _buildStatDivider(),
            _buildStatItem('2 Yrs', 'Experience'),
            _buildStatDivider(),
            _buildStatItemWithStar('4.9', 'Rating'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF94A3B8),
          ),
        ),
      ],
    );
  }

  Widget _buildStatItemWithStar(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.star, color: Color(0xFFFBBF24), size: 16),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF94A3B8),
          ),
        ),
      ],
    );
  }

  Widget _buildStatDivider() {
    return Container(width: 1, height: 36, color: const Color(0xFFE2E8F0));
  }

  // ──────────────────────────────────────────
  // 4. Giới thiệu bản thân (Fixed height: 90px, Gap: 8px)
  // ──────────────────────────────────────────
  Widget _buildAboutMe() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172A),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Passionate Junior Mobile Engineer specialized in Flutter, Dart, and building high-performance cross-platform applications. Focused on elegant architecture and clean code practices.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF64748B),
                height: 1.4,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  // ──────────────────────────────────────────
  // 5. Kỹ năng & Chuyên môn (Gap: 10px)
  // ──────────────────────────────────────────
  Widget _buildSkillsAndExpertise() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills & Expertise',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildSkillChip(
                'Flutter',
                const Color(0xFF3B82F6),
                Icons.flutter_dash,
              ),
              _buildSkillChip('Dart', const Color(0xFF22C55E), Icons.code),
              _buildSkillChip(
                'Clean Arch.',
                const Color(0xFF22C55E),
                Icons.architecture,
              ),
              _buildSkillChip(
                'UI/UX',
                const Color(0xFF8B5CF6),
                Icons.brush_outlined,
              ),
              _buildSkillChip(
                'Firebase',
                const Color(0xFFF59E0B),
                Icons.local_fire_department_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String label, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  // ──────────────────────────────────────────
  // 6. Dự án nổi bật (Fixed height: 185px, Gap: 12px)
  // ──────────────────────────────────────────
  Widget _buildFeaturedProjects() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Featured Projects',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 185,
            child: Row(
              children: [
                Expanded(
                  child: _buildProjectCard(
                    'E-Shop Flutter',
                    'Mobile App • UI/UX',
                    const Color(0xFF3B82F6),
                    Icons.shopping_bag_outlined,
                    'images/fatass.png',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildProjectCard(
                    'Crypto Vault',
                    'Finance • Clean Arch.',
                    const Color(0xFF8B5CF6),
                    Icons.currency_bitcoin,
                    'images/bigrat.jpg',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String subtitle,
    Color accentColor,
    IconData icon,
    String imagePath,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ảnh thu nhỏ dự án
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  height: 105,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Lớp phủ gradient
                Container(
                  height: 105,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        accentColor.withValues(alpha: 0.3),
                        accentColor.withValues(alpha: 0.05),
                      ],
                    ),
                  ),
                ),
                // Huy hiệu icon nhỏ
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(icon, color: accentColor, size: 18),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0F172A),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF94A3B8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ──────────────────────────────────────────
  // 7. Thẻ liên hệ (Fixed height: 192px, Radius: 20px, Border: 1px #E2E8F0)
  // ──────────────────────────────────────────
  Widget _buildContactCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 192,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0F1729).withValues(alpha: 0.04),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildContactRow(
              Icons.alternate_email,
              'Contact Information',
              isHeader: true,
            ),
            const Divider(height: 1, color: Color(0xFFF1F5F9)),
            _buildContactRow(Icons.email_outlined, 'zvu2005@gmail.com'),
            _buildContactRow(Icons.phone_outlined, '+84 0938555169'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String text, {bool isHeader = false}) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: const Color(0xFFF1F5F9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 18,
            color: isHeader ? const Color(0xFF0F172A) : const Color(0xFF64748B),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: isHeader ? 15 : 13,
              fontWeight: isHeader ? FontWeight.w600 : FontWeight.w400,
              color: isHeader
                  ? const Color(0xFF0F172A)
                  : const Color(0xFF64748B),
            ),
          ),
        ),
        if (isHeader)
          const Icon(Icons.chevron_right, size: 20, color: Color(0xFF94A3B8)),
      ],
    );
  }
}
