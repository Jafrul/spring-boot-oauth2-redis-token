CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(4) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ;


CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK50sgrid0o40hyncerx1si7l0j` (`username`,`rolename`)
) ;


CREATE TABLE `oauth_client_details` (
  `client_id` varchar(200) NOT NULL,
  `resource_ids` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `scope` varchar(200) DEFAULT NULL,
  `authorized_grant_types` varchar(200) DEFAULT NULL,
  `web_server_redirect_uri` varchar(200) DEFAULT NULL,
  `authorities` varchar(200) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ;

INSERT INTO `oauth_client_details` VALUES ('test-client','authorization-rest-api','$2a$04$Y0qOXMqO2CW1h0x8pdw5fOHqNoLNVXkhtqPFWd5XjNSxLdpPTr/n2','read,write','password,authorization_code,refresh_token,implicit',NULL,'USER',108000,2592000,NULL,NULL);
