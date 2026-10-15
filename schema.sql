-- مخطط قاعدة بيانات المتجر (SQLite) — يُنشأ تلقائيًا عند أول تشغيل
PRAGMA journal_mode=WAL; PRAGMA foreign_keys=ON;
CREATE TABLE kv(k TEXT PRIMARY KEY, v TEXT NOT NULL);
CREATE TABLE users(
  email TEXT PRIMARY KEY, salt TEXT NOT NULL, hash TEXT NOT NULL,
  role TEXT NOT NULL DEFAULT 'user', perm TEXT NOT NULL DEFAULT '[]', act TEXT);
CREATE TABLE sessions(tok TEXT PRIMARY KEY, email TEXT NOT NULL, exp INTEGER NOT NULL);
CREATE TABLE orders(id INTEGER PRIMARY KEY, j TEXT NOT NULL);
CREATE TABLE reviews(id INTEGER PRIMARY KEY, j TEXT NOT NULL);
