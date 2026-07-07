import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "BODALINK",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.two_wheeler_outlined),
            selectedIcon: Icon(Icons.two_wheeler),
            label: "Ride",
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_outlined),
            selectedIcon: Icon(Icons.account_balance_wallet),
            label: "Wallet",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          const Text(
            "Good Afternoon 👋",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            "Where are you going?",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 24),

          TextField(
            decoration: InputDecoration(
              hintText: "Search destination",
              prefixIcon: const Icon(Icons.search),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 24),

          Container(
            height: 220,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map,
                    size: 70,
                    color: Colors.green,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Google Maps Coming Soon",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          Card(
            elevation: 1,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              title: const Text("Current Location"),
              subtitle: const Text("Tap to detect your location"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 28),

          Text(
            "Quick Actions",
            style: theme.textTheme.titleLarge,
          ),

          const SizedBox(height: 16),

          Row(
            children: [

              Expanded(
                child: _ActionCard(
                  icon: Icons.two_wheeler,
                  title: "Ride",
                  color: Colors.green,
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: _ActionCard(
                  icon: Icons.local_shipping,
                  title: "Delivery",
                  color: Colors.orange,
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: _ActionCard(
                  icon: Icons.account_balance_wallet,
                  title: "Wallet",
                  color: Colors.blue,
                ),
              ),

            ],
          ),

          const SizedBox(height: 30),

          Text(
            "Recent Trips",
            style: theme.textTheme.titleLarge,
          ),

          const SizedBox(height: 14),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.history),
              ),
              title: const Text("Baraton University"),
              subtitle: const Text("Eldoret Town"),
              trailing: Text(
                "Yesterday",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.history),
              ),
              title: const Text("Home"),
              subtitle: const Text("Shopping Centre"),
              trailing: Text(
                "2 days ago",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _ActionCard({
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: color.withOpacity(.12),
                child: Icon(
                  icon,
                  color: color,
                  size: 28,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}