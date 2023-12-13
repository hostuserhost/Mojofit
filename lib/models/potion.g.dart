// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'potion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PotionTypeAdapter extends TypeAdapter<PotionType> {
  @override
  final int typeId = 1;

  @override
  PotionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PotionType.minhealth;
      case 1:
        return PotionType.midhealth;
      case 2:
        return PotionType.highhealth;
      default:
        return PotionType.minhealth;
    }
  }

  @override
  void write(BinaryWriter writer, PotionType obj) {
    switch (obj) {
      case PotionType.minhealth:
        writer.writeByte(0);
        break;
      case PotionType.midhealth:
        writer.writeByte(1);
        break;
      case PotionType.highhealth:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PotionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
