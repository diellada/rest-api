--DROP DATABASE IF EXISTS `allotment_project_database`;
CREATE DATABASE  IF NOT EXISTS `allotment_project_database`;
USE `allotment_project_database`;
​
--
-- Table structure for table `projects`
--
​
DROP TABLE IF EXISTS `projects`;
​
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `environment` varchar(45),
  `bitbucket_url` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
​

--
-- Table structure for table `features`
--
​
DROP TABLE IF EXISTS `features`;
​
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(200),
  `signed_off` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`project_id`) REFERENCES projects(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
​

--
-- Table structure for table `scenarios`
--
​
DROP TABLE IF EXISTS `scenarios`;
​
CREATE TABLE `scenarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `failure_reason` varchar(500),
  `background` varchar(500),
  `examples` varchar(500),
  PRIMARY KEY (`id`),
  FOREIGN KEY(`feature_id`) REFERENCES features(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
​

--
-- Table structure for table `steps`
--
​
DROP TABLE IF EXISTS `steps`;
​
CREATE TABLE `steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenario_id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `key_word` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`scenario_id`) REFERENCES scenarios(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
​
​
--
-- Table structure for table `users`
--
​
DROP TABLE IF EXISTS `users`;
​
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
​

--
-- Table structure for table `status_events`
--
​
DROP TABLE IF EXISTS `status_events`;
​
CREATE TABLE `status_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` DateTime(6) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`feature_id`) REFERENCES features(`id`),
  FOREIGN KEY(`user_id`) REFERENCES users(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
Collapse