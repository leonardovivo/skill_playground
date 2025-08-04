import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              expandedHeight: 200,
              pinned: true,
              floating: false,
              backgroundColor: const Color.fromARGB(255, 0, 255, 132),
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Custom Slivers',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/images/code.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Texto dentro de um SliverToBoxAdapter',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  leading: const Icon(Icons.star),
                  title: Text('Item #$index'),
                ),
                childCount: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
