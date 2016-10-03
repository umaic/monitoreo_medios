CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `description` text NOT NULL,
  `labels` text NOT NULL,
  `source` varchar(255) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
