CREATE TABLE IF NOT EXISTS pokertables (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  owner VARCHAR(100) NOT NULL,
  name VARCHAR(45) NULL DEFAULT "Poker Table",
  position TEXT NOT NULL,
  smallBlind INT NOT NULL DEFAULT 100,
  maxPlayers TINYINT NOT NULL DEFAULT 10,
  style VARCHAR(45) NOT NULL DEFAULT "default"
);

INSERT INTO items (name, label, weight, rare, can_remove) VALUES ("pokertable", "Poker Table", 1, 0, 1);