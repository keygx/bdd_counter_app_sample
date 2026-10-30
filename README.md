# bdd_counter_app_sample

Flutter のカウンターアプリを題材に、Gherkin のシナリオから Flutter widget test を生成して実行する BDD サンプルプロジェクトです。`bdd_widget_test` と `build_runner` を使い、`create-gherkin` スキルでソースコードからシナリオを作成できます。

## create-gherkin スキル

`.agents/skills/create-gherkin/SKILL.md` に、ソースコードから観察可能な動作を分析し、Gherkin シナリオを作成するスキルを置いています。スキルは次のように実行できます。

```text
create-gherkin スキルを使って、lib/main.dart から Gherkin のテストシナリオを作成し、test/ に保存してください。
```

`bdd_widget_test` のステップ記法とコード生成時の制約に沿って `.feature` を作成し、`make build-runner` でテストコードを生成できます。

## シナリオとテスト

- Gherkin シナリオ: `test/counter.feature`
- 生成される widget test: `test/counter_test.dart`
- アプリ実装: `lib/main.dart`

`.feature` ファイルを変更した後、リポジトリのルートでテストコードを再生成します。

```sh
make build-runner
```

テストを実行します。

```sh
mise exec -- flutter test
```

静的解析を実行します。

```sh
mise exec -- flutter analyze
```

Flutter SDK は `mise.toml` で管理しています。mise が有効なシェルでは `flutter test`、`flutter analyze` も使えます。
