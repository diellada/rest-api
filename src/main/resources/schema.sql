DROP DATABASE IF EXISTS `allotment_project_database`;
CREATE DATABASE `allotment_project_database`;
USE `allotment_project_database`;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `environment` varchar(45),
  `bitbucket_url` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Table structure for table `features`
--



CREATE TABLE `feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(200),
  `signed_off` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`project_id`) REFERENCES project(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Table structure for table `scenarios`
--



CREATE TABLE `scenario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `failure_reason` varchar(500),
  `background` varchar(500),
  `examples` varchar(500),
  PRIMARY KEY (`id`),
  FOREIGN KEY(`feature_id`) REFERENCES feature(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Table structure for table `steps`
--



CREATE TABLE `step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenario_id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `key_word` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`scenario_id`) REFERENCES scenario(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Table structure for table `users`
--



CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Table structure for table `status_events`
--



CREATE TABLE `status_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` DateTime(6) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`feature_id`) REFERENCES feature(`id`),
  FOREIGN KEY(`user_id`) REFERENCES user(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
