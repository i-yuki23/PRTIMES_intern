# 最適化の総括と感想

## スコア

- **最終スコア**: (1190→)19031（データベース変更時）,(1247→)1278（クエリ処理変更時）

## 変更内容

### データベース最適化

- **commentsテーブルにインデックスを追加**: データ検索の効率を向上させ、クエリ実行時間を短縮。

### クエリ処理の改善

- **make_posts関数の変更**: コメントごとにユーザー情報を取得する従来のクエリから、テーブル結合を用いて一度に情報を取得する方法へ変更。

## 結果

### データベース最適化による影響

- **実行時間の大幅な短縮**: クエリの効率化により、スコアが大幅に上昇。

### クエリ処理改善の影響

- **スコアの上昇が少ない**: ユーザー情報を取得するクエリの数は減少（6212→1681）したものの、クエリごとの実行時間が非常に短いため、全体の実行時間に大きな変化は見られず。

## 実際のスロークエリログ（抜粋）

- **変更前**:
  - `Count: 6212`
  - `Time=0.00s (1s)`
  - `Lock=0.00s (0s)`
  - `Rows=1.0 (6212)`
  - `Query: SELECT * FROM users WHERE id = 'S'`

- **変更後**:
  - `Count: 1681`
  - `Time=0.00s (1s)`
  - `Lock=0.00s (0s)`
  - `Rows=1.0 (1681)`
  - `Query: SELECT * FROM users WHERE id = 'S'`

## 感想
ウェブアプリの作成は経験したことがあったが、高速化を意識して開発したことがなっかたのでとても良い機会になった。
業務に近い経験ができ、具体的な高速化の方法を知ることができてとても楽しかった。また処理の重そうなところをただ単純に変更してもパフォーマンスが変わらない経験をし、データベースやクエリの構造を深く理解し、
根本的な原因を突き止めることの重要性を学んだ。
ウェブアプリの高速化はユーザー体験に直結するため非常に重要であり、さらに技術を高めていきたいと感じた。これからもisuconに挑戦していき、また実際のアプリケーションで高速化を行なってみたいと強く感じた。
