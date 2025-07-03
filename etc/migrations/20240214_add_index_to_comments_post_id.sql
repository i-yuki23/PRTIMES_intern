-- commentsテーブルにインデックスを追加
-- 目的：post_idおよびcreated_at列を使用する操作のクエリパフォーマンスを向上させる。
-- 用途：特定の投稿に対する最新のコメントを効率的に取得する

ALTER TABLE comments ADD INDEX post_id_idx (post_id, created_at DESC);
