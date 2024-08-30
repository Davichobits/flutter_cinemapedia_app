import 'package:cinemapedia_app/domain/entities/actor.dart';
import 'package:cinemapedia_app/infrastructure/models/movidedb/credits_response.dart';

class ActorMapper {
  static const String _baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static Actor castToEntity(Cast cast) => Actor(
        id: cast.id,
        name: cast.name,
        profilePath: cast.profilePath != null
            ? '$_baseImageUrl${cast.profilePath}'
            : 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
        character: cast.character,
      );
}
