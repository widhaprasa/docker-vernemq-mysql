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
)

-- Add index for mountpoint and group
ALTER TABLE `vmq_auth_acl` INDEX `idx_mountpoint` ON (`mountpoint`);
ALTER TABLE `vmq_auth_acl` INDEX `idx_group` ON (`group_`);
