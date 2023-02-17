import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/assets/asset_manager.dart';
import 'package:red_ops_task/presentation/core/widgets/asset_icon.dart';

class SearchBar extends StatefulWidget {
  final Function(String) onChanged;

  const SearchBar({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: 'type in journal name...',
          hintStyle: const TextStyle(
            // color: Colors.white,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          border: const OutlineInputBorder(),
          prefixIcon: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: _isFocused ? 0 : 1,
            child: const AssetIcon(icon: AssetIcons.search),
          ),
        ),
      ),
    );
  }
}
