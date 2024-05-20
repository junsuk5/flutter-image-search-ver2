import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import 'photo_entity.dart';

@injectable
class PhotoDao {
  final Database _db;

  PhotoDao(this._db);

  Future<void> insertPhotos(List<PhotoEntity> photoEntities) async {
    await _db.transaction((txn) async {
      for (final entity in photoEntities) {
        await txn.rawInsert(
          'INSERT INTO Photo(id, tags, imageData, query) VALUES(?, ?, ?, ?)',
          [
            entity.id!,
            entity.tags,
            entity.imageData,
            entity.query,
          ],
        );
      }
    });
  }

  Future<void> clearPhotos() async {
    await _db.rawDelete('DELETE FROM Photo');
  }

  Future<List<PhotoEntity>> searchPhotos(String query) async {
    final results = await _db.rawQuery(
      'SELECT * FROM Photo WHERE query = ?',
      [query],
    );

    return results
        .map((e) => PhotoEntity(
              id: e['id'] as int,
              imageData: e['imageData'] as Uint8List,
              tags: e['tags'] as String,
              query: e['query'] as String,
            ))
        .toList();
  }
}
