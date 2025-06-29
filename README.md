### openApiGenetatorを使用してバックエンドで定義しているスキーマを自動生成する

openapi-generatorが入っていない場合はインストールする
```sh
brew install openapi-generator
```

スキーマ情報にエラーがないか確認する
```sh
openapi-generator validate -i http://localhost:8000/openapi.json
```

dart ジェネレーターで openapi ディレクトリに生成する
```sh
openapi-generator generate -i http://localhost:8000/openapi.json -g dart-dio -o openapi
```

生成した後にbuild_runnerを実行する
```sh
cd openapi && flutter pub run build_runner build --delete-conflicting-outputs
```


### freezedを使用したファイルを自動生成する
このように生成したい内容とpartに自動生成するファイル名を記述する。
```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';

part 'timeline_view_state.freezed.dart';

@freezed
abstract class TimelineViewState with _$TimelineViewState {
  const factory TimelineViewState({
    required List<ArticleView> articleViews,
    required PageInfo pageInfo,
  }) = _TimelineViewState;
}
```

自動生成のコマンドを実行
```sh
flutter pub run build_runner build --delete-conflicting-outputs
```