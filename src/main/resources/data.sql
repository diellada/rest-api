USE `allotment_project_database`;
--
-- Data for table `project`
--

INSERT INTO `project` VALUES
	(1, 'Compost Factory','SIT','www.bitbucket.org/barry/compostfactory'),
    (2, 'Carrot Patch','SIT','www.bitbucket.org/barry/carrotpatch'),
    (3, 'Greenhouse Build','NFT','www.bitbucket.org/barry/greenhouse');


--
-- Data for table `feature`
--

INSERT INTO `feature` VALUES
	(1, 1, 'Create Compost', 'This is a description', false),
    (2, 1, 'Create Compost Containers', 'This is a description', false),
    (3, 1, 'Build Carrot Patch Space', 'This is a description', true),
    (4, 1, 'Gather Greenhouse Glass', 'This is a description', false);

--
-- Data for table `scenario`
--

INSERT INTO `scenario` VALUES
	(1, 1, 'User can deposit their compost', 'Passed', NULL, NULL, NULL),
    (2, 1, 'User can collect manure for their compost', 'Failed', 'This is a failure reason', 'This is a background', 'These are examples'),
    (3, 1, 'User can plant carrots', 'Passed', NULL, NULL, NULL);



--
-- Data for table `step`
--

INSERT INTO `step` VALUES
	(1, 1, 'a user wanting to deposit their compost', 'Given'),
    (2, 1, 'they have finished their compost load', 'When'),
    (3, 1, 'there is space for them to drop their compost', 'Then'),
    (4, 3, 'a user wanting to plant carrots', 'Given'),
    (5, 3, 'they have the carrot seeds', 'When'),
    (6, 3, 'they are able to deposit the seeds in compost', 'Then');

--
-- Data for table `user`
--

INSERT INTO `user` VALUES
	(1, 'Barry', 'barrynator@live.com', 'The best Barry ever'),
    (2, 'Henrietta', 'coolgal99@gmail.co.uk', 'Software Developer');


--
-- Data for table `status_event`
--

INSERT INTO `status_event` VALUES
	(1, '2019-11-19 00:00:00', 1, 2, 'This is an event type'),
    (2, '2019-11-21 00:00:00', 3, 2, 'This is an event type');
