import 'package:flutter/material.dart';
import 'package:million_live_db/screens/IdolScreen/data/selectionData.dart';

class IdolsSelection extends StatelessWidget {
  final List<String> types;
  final Function(String) onSelect;

  IdolsSelection(this.types, this.onSelect);

  Color fetchColor(String type) {
    switch (type) {
      case 'pri':
        return Color(0xFFFF59A3);
      case 'fai':
        return Color(0xFF0A69FF);
      case 'ang':
        return Color(0xFFFEBF0F);
      case 'ex':
        return Color(0xFF3DD04D);
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: MediaQuery.of(context).size.width - 32,
        height: 32,
        margin: EdgeInsets.only(top: 16),
        child: ListView.separated(
          separatorBuilder: (_, __) => Container(width: 16),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            SelectionData _selection = selections[index];
            String _type = _selection.type;
            final bool _isSelected = types.indexOf(_type) > -1;
            return GestureDetector(
              onTap: () {
                onSelect(_selection.type);
              },
              child: Container(
                width: 80,
                height: 32,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _isSelected
                        ? this.fetchColor(_selection.type)
                        : Color(0xFF4D4D4D),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  color: _isSelected
                      ? this.fetchColor(_selection.type)
                      : Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  _selection.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: _isSelected ? Colors.white : Color(0xFF4D4D4D),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
