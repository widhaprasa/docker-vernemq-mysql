-- Grant all privileges
GRANT ALL PRIVILEGES ON vmq_mysql.* TO 'vmq_mysql'@'%';

-- Use database
USE vmq_mysql;

-- Create default table
CREATE TABLE vmq_auth_acl
(
  mountpoint VARCHAR(10) NOT NULL,
  group_ VARCHAR(128) NOT NULL,
  username VARCHAR(128) NOT NULL,
  password VARCHAR(128),
  publish_acl TEXT,
  subscribe_acl TEXT,
  PRIMARY KEY (username)
);

-- Add index for mountpoint and group
CREATE INDEX idx_mountpoint ON vmq_auth_acl (`mountpoint`);
CREATE INDEX idx_group ON vmq_auth_acl (`group_`);
