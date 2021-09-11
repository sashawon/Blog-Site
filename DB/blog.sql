-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 09:06 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_desc` varchar(1000) NOT NULL,
  `long_desc` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `post_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `short_desc`, `long_desc`, `image`, `post_date`, `status`, `added_on`) VALUES
(1, 'Muktomona Statement on the Avijit Roy Murder Verdict February 16, 2021', 'muktomona.statement', 'A Dhaka court today sentenced five members of banned militant outfit Ansar Al Islam including sacked Major Zia ul Haque to death in a case filed over the murder of writer Avijit Roy in 2015, however, the mastermind behind the brutal murder – Major Zia ul Haque – is absconding; the authorities have no idea about his current whereabouts. It is also interesting to note that even though investigators found involvement of 12 people in the killing, six were left out of the charge sheet because the whereabouts of five of those six could not be traced.', 'A Dhaka court today sentenced five members of banned militant outfit Ansar Al Islam including sacked Major Zia ul Haque to death in a case filed over the murder of writer Avijit Roy in 2015, however, the mastermind behind the brutal murder – Major Zia ul Haque – is absconding; the authorities have no idea about his current whereabouts. It is also interesting to note that even though investigators found involvement of 12 people in the killing, six were left out of the charge sheet because the whereabouts of five of those six could not be traced. The sixth person, Mukul Rana, one of the prime suspects, was killed in a so-called cross-fire while being in the police custody. It is also with deep consternation we observe that the government failed to take the witness statement of Bonya Ahmed, Avijit Roy’s wife, who was also a victim of the attack and barely survived with multiple grievous body injuries. We feel that the Government is pursuing these court cases half-heartedly with no honest intention of uprooting extremism from Bangladesh. It has been six years since the murder of Avijit Roy on February 26, 2021. The government initially showed no interest in pursuing the criminals and a number of writers, incluiding Washiqur Rahman Babu, Ananta Bijoy Das, Niloy Chakroborty and Faisal Arefin Dipan were killed within a few months of Avijit’s murder. These writers sought police shelter but found no support from the authorities. There were also other attacks on other writers and publisher. Only after the mass murder that took place in the Holey Artisan Bakery in Dhaka in July, 2016, where 28 people were killed, including 17 non-Bangladeshis, that the government was spurred into action. The reluctance of the authorities to take stern actions in such situations points to a creeping willingness of the government to stay in power by placating the rising Islamism in the country. In recent years, to appease the religious sentiment of the population, the government has made special budget allocations for building mosques and training of Islamic clergy. Deep Islamisation is gradually changing the underpinnings of Bengali cultural identity. Under pressure from Hefazat-i-Islam and its own Islamic wing, the authority is systematically removing texts by renowned non-Muslim and Muslim authors from the school curriculum; these texts were expunged because of the fear that they might promote multicultural perspectives or introspective philosophical ideas. The Government bowed down to the demands of extremist Islamic organizations for the removal of a statue in front the Supreme Court representing the Lady of the Justice as they equated the presence of the statue to idol worshipping. The Government has yielded to the demands of these organizations by reducing the minimum marriage age of girls below 18 and has made several controversial changes with respect to the rape victims. Authorities are increasingly encouraging promotion of Family and Marriage law which is religiously dominant at the court of law. Recently a court ruling rejected the right of women to be an officiant to register Muslim marriages. The present government is also zealously implementing an imperfect law called the Digital Security Act that calls for imprisonment and fine for people who offend religious sentiment. Islamists are finding it easier to provoke the general public into frenzy against innocent people by spreading false rumours and, as a result, an unusual number of people are being rounded up and thrown into jail under this act. We are acknowledging the verdict, however, we must underscore the fact that the Bangladesh Government has not only failed to catch the people who masterminded the killings of Avijit Roy and other writers, but has also taken regressive steps that have curbed free speech that promote secular and nonsectarian spiritual humanism that were practiced in Bengal since ancient times. It might seem, in some cases, the Government is forceful in combating extremists, but we believe, by continual abetment of Islamisation of the country it has failed in its ideological commitment to the original constitution of the Bangladesh Republic and has yielded to the killers of Avijit Roy.', '1620568944.jpg', '2021-05-09', 1, '2021-05-09 02:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'Shahriar Ahmed Shawon', 'shahriarahmedshawon2015@gmail.com', '1234', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
