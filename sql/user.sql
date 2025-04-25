INSERT INTO user
(id, username, username_canonical, email, email_canonical, enabled, salt, password, last_login, confirmation_token, password_requested_at, roles, created_at, updated_at)
VALUES
(1, 'admin-dev', 'admin-dev', 'admin-dev@test.com', 'admin-dev@test.com', 1, '$2y$13$r8W59gyeQkbSoiC7/r2bae3a5a5mY7jIDQz.Kp0sbZY.1UYATSLDS', '$2y$13$y6S3EHTHbt1DAmoJZkRUWOEuA7FrTqiwSJFkriimLEo1X8I/xyKm2', NULL, NULL, NULL, 'a:2:{i:0;s:17:\"ROLE_SONATA_ADMIN\";i:1;s:16:\"ROLE_SUPER_ADMIN\";}', '2025-04-25 00:00:00', '2024-04-25 00:00:00');