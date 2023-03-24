import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final Color _blackColor = const Color(0xFF1F2123);
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: order == 1
          ? const Offset(0, 0)
          : order == 2
              ? const Offset(0, -20)
              : const Offset(0, -40),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: isInverted ? Colors.white : _blackColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(15, 18),
                child: Transform.scale(
                  scale: 2,
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 98,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
