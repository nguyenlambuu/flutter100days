import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day32AnimatedList extends StatefulWidget {
  @override
  _Day32AnimatedListState createState() => _Day32AnimatedListState();
}

class _Day32AnimatedListState extends State<Day32AnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late ListModel<String> _listModel;
  String? _selectedItem;
  late String _nextItem;

  @override
  void initState() {
    super.initState();
    List<String> _family = ['Jane', 'John', 'Johnny', 'James', 'Juda', 'Jacob'];
    _listModel = ListModel(
        listKey: _listKey,
        initialItems: _family,
        removedItemBuilder: _buildRemovedItem);
    _nextItem = 'Josept';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/widgets/Draggable-class.html')
        ],
      ),
      body: SafeArea(
        child: AnimatedList(
          key: _listKey,
          initialItemCount: _listModel.length,
          itemBuilder: _buildItem,
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _insert),
    );
  }

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    var person = _listModel[index];
    return CardItem(
      index: index,
      item: person,
      animation: animation,
      selected: _selectedItem == person,
      onTap: () {
        setState(() {
          _selectedItem = (_selectedItem == person) ? null : person;
        });
      },
      onDoubleTap: _remove,
    );
  }

  Widget _buildRemovedItem(
      int item, BuildContext context, Animation<double> animation) {
    return FadeTransition(
      opacity: animation.drive(
        Tween(begin: 0.0, end: 1.0),
      ),
    );
  }

  void _insert() {
    final int index = _selectedItem == null
        ? _listModel.length
        : _listModel.indexOf(_selectedItem!);

    _listModel.insert(index, '$_nextItem $index');
  }

  void _remove() {
    if (_selectedItem != null) {
      _listModel.removeAt(_listModel.indexOf(_selectedItem!));
      setState(() {
        _selectedItem = null;
      });
    }
  }
}

typedef RemovedItemBuilder = Widget Function(
    int item, BuildContext context, Animation<double> animation);

class ListModel<E> {
  final GlobalKey<AnimatedListState> listKey;
  final RemovedItemBuilder removedItemBuilder;
  final List<E> _items;

  ListModel(
      {required this.listKey,
      required this.removedItemBuilder,
      Iterable<E>? initialItems})
      : _items = List<E>.from(initialItems ?? <E>[]);

  int get length => _items.length;
  int indexOf(E item) => _items.indexOf(item);
  E operator [](int index) => _items[index];

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList!.removeItem(
        index,
        (BuildContext context, Animation<double> animation) {
          return removedItemBuilder(index, context, animation);
        },
      );
    }
    return removedItem;
  }
}

class CardItem extends StatelessWidget {
  final Animation<double> animation;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final String item;
  final bool selected;
  final int index;

  const CardItem(
      {Key? key,
      required this.index,
      required this.animation,
      this.onTap,
      this.onDoubleTap,
      required this.item,
      this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline5!;
    if (selected) textStyle = textStyle.copyWith(color: Colors.white);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizeTransition(
        axis: Axis.vertical,
        sizeFactor: animation,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          child: SizedBox(
            height: 60,
            child: Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  '$item',
                  style: textStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
