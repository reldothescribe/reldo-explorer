-- Reldo Query Explorer Schema
CREATE TABLE IF NOT EXISTS queries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TEXT NOT NULL,
  query_type TEXT NOT NULL,
  client_address TEXT,
  payment_tx TEXT,
  amount_usdc TEXT,
  request_params TEXT,
  response_summary TEXT,
  full_response TEXT,
  settled INTEGER DEFAULT 0,
  created_at TEXT DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS idx_queries_timestamp ON queries(timestamp DESC);
CREATE INDEX IF NOT EXISTS idx_queries_type ON queries(query_type);
CREATE INDEX IF NOT EXISTS idx_queries_client ON queries(client_address);
