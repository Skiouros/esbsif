-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2014 at 11:10 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sif`
--

-- --------------------------------------------------------

--
-- Table structure for table `fall_2012`
--

CREATE TABLE IF NOT EXISTS `fall_2012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_year` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `fall_2012`
--

INSERT INTO `fall_2012` (`id`, `firstname`, `lastname`, `mem_year`, `mem_role`, `bio`) VALUES
(1, 'Phil', 'Zhu', 'Fall 2012', 'Faculty Advisor', 'Phil Zhu is an Assistant Professor of Finance at the Eberhardt School of Business at the University of the Pacific. Dr. Zhu teaches courses in international finance as well as the introductory courses in financial management. His research focuses on cross-border mergers and acquisitions, corporate governance, and emerging market finance. He has published research articles in several journals including Journal of Corporate Finance, Journal of Business Research, Corporate Governance, Canadian Investment Review, and Advances in Quantitative Analysis of Finance and Accounting. Dr. Zhu is a recipient of the Barclay Global Investor Canada Research Award in 2006. Before joining the faculty at the University of the Pacific, Dr. Zhu taught at the Sprott School of Business, Carleton University. He also worked as a business analyst in a global management consulting firm in Canada. Dr. Zhu is a Chartered Financial Analyst (CFA).'),
(2, 'Jorge', 'Delgadillo', 'Fall 2012', 'Chief Marketing Director & Healthcare Sector Analyst', 'Jorge is currently a junior in the Eberhardt School of Business, working to obtain his B.S. in Business Administration with a concentration in finance and marketing, expecting to graduate in May of 2013. He currently holds the position of Co-Chief Marketing Director for the fund and is the Industrials Sector analyst. Jorge has been actively involved on campus since his freshman year. He is currently the Vice President of Chapter Operations for the business fraternity Delta Sigma Pi- Lambda Mu Chapter,individual tutor at the Center for Community Involvement, while being a Student Advisor at the Student Academic Support Services office for the incoming freshman at Pacific. Upon graduation, he hopes to continue to graduate school to obtain a Masters in Health Administration.'),
(3, 'Jeff', 'Earl', 'Fall 2012', 'Fixed Income Sector Analyst', 'Jeff is a junior at the Eberhardt School of Business currently pursuing a Bachelor of Sciences degree in Business Administration with a concentration in finance as well as a minor in economics.  He is currently a junior analyst for the Fixed Income and Utilities sectors.  Jeff expects to graduate in December of 2013 and is eager to gain skills in stock and bond valuation, Bloomberg and Capital IQ research, and portfolio management.  He worked as a golf professional for 15 years at Stockton G&CC and Valley Hi G&CC, where he taught extensively and ran daily golf shop operations.  He is currently a member of the PGA of America.  After graduation, Jeff plans to work on his CFA charter and ultimately work as an equity or fixed income analyst.'),
(4, 'Patrick', 'Daley', 'Fall 2012', 'Utilities & Consumer Staples Sector Analyst', 'Patrick Daley is a senior at the University of the Pacific, and will be receiving his bachelor’s degree from the Eberhardt School of Business with a concentration in finance.  Outside of school, Patrick works for University Directories, a subsidiary of UCampus Media.  Last year he started as a sales representative, and this year he was the Area Sales Manager for California.  Patrick managed 8 schools, and 38 interns that combined for just under $500,000 in sales.  This year Patrick will be in charge of the utilities and fixed income sectors for the ESB student investment fund.  After school he hopes to pursue some sort of sales or sales management, possibly in the financial industry. '),
(5, 'David', 'Wu', 'Fall 2012', 'Consumer Staples Sector Analyst', 'David is currently a Senior with a Major in Economics and a Minor in Political Science. Student Investment Fund is his first time with Portfolio Management. He is interested in a wide array of professional interests including Marketing, Analysis, and Streamline Efficiency. He was born in Oshkosh, Wisconsin, and moved around the United States a lot when he was younger. He enjoys composing, performing, and listening to music. He was a member of the University Of the Pacific Speech and Debate team last fall, earning second place at the last tournament in Irvine. During his sophomore year Spring semester, he studied abroad to Florence, Italy.'),
(6, 'Matthew', 'Pearson', 'Fall 2012', 'Chief Economist & Energy Sector Analyst', 'Matthew Pearson is a senior at the University of the Pacific working toward Bachelors of Science in Business Administration concentrating in Finance while minoring in Economics and International Studies. He currently holds the positions within the fund of Co-Chief Economist and Energy Sector Analyst. Matt has worked in various leadership roles on campus including a building manager at the Derosa University Center along with being a part of the professional business fraternity Delta Sigma Pi. He is a member of the Legal Scholars Program and has interned in the non-profit sector.'),
(7, 'Reed', 'Kamler', 'Fall 2012', 'Financial Sector Analyst', 'Reed Kamler is a student-athlete currently in his senior year at the University of the Pacific on his way to achieving a Bachelors of Science in Business Administration with a concentration in Finance and a minor in Sport Management.  In the Student Investment Fund, Reed works as an analyst for the financial sector.  A member of the Pacific men’s basketball team, including the 2009-2010 Big West Conference Champion team, Reed brings the same competitive mindset honed on the court to the Student Investment Fund.'),
(8, 'Florin', 'Gornik ', 'Fall 2012', 'Portfolio Manager & Technology Sector Analyst', 'Florian Gornik is an international student-athlete from Vienna, Austria. He earned his bachelor‘s degree in International Business from the Eberhardt School of Business and is currently pursuing his MBA degree also from the University of the Pacific. Throughout his time at Pacific, Florian excelled both in the classroom as well as on the court as part of the Pacific Men’s Volleyball Team. In his last year as an undergraduate he received the “Outstanding Student Award. In the Investment Fund, Florian currently serves as an energy sector analyst and co-portfolio manager. After graduation he wants to stay in the U.S. and ideally find a position as a business strategist or global marketing manager.'),
(9, 'Rita', 'Velazquez', 'Fall 2012', 'Chief Accountant & Industrials Sector Analyst', 'Rita Velazquez is currently a senior, on her way to achieving a B.S. degree in Business Administration with a concentration in Accounting. She is currently the Industrial sector analyst within the investment fund. Other duties include accounting procedures. Rita joined SIF because of her strong interest in the stock market and the desire to learn about finance. Working in a business environment as a book keeper encouraged her to pursue a career in Business Administration. After graduation she wants to earn a Masters in accounting and soon after, work at an accounting firm or a finance company to gain valuable experience and knowledge. She hopes to one day own her business.'),
(10, 'Meara', 'McCarthy ', 'Fall 2012', 'Chief Administrator & Consumer Discretionary Sector Analyst', 'Meara McCarthy earned her bachelor’s degree from the Eberhardt School of Business with a concentration in Finance and is currently pursuing her MBA degree also from the University of the Pacific. Throughout her time at Pacific, Meara was member of the Pacific Women’s Water Polo Team. During her time on the team Meara and her team mates earned a conference title. In the Investment Fund, Meara serves as an energy sector analyst and as co-portfolio manager. After graduation Meara would like to travel and work overseas and ideal find a position in the finance industry.'),
(11, 'Balazs', 'Szabo', 'Fall 2012', 'Financial Sector Analyst', 'Balazs Szabo is an international student-athlete from Budapest, Hungary. He is currently a senior, majoring in B.S Business Administration with concentration in Finance and majoring in B.S. Applied Economics (as 2nd major). He expects to graduate in December 2013. Balazs is playing for the University of the Pacific men’s water polo team. He was working for MOCCA NEGRA ZRT as a Sales representative in Hungary and he had an internship at Hamburg Coffee Company in Hamburg.'),
(12, 'Shayne', 'Brown', 'Fall 2012', 'Industrials Sector Analyst', ''),
(13, 'Erick', 'Tran', 'Fall 2012', 'Junior Portfolio Manager & Technology Sector Analyst', 'Erick Tran is a senior at the University of the Pacific, where he is working on obtaining his B.S. in Business Administration with a concentration in Accounting. Throughout his college experience, Erick has worked hard to excel in both his academics and social life, in order to cultivate himself into a well-rounded, experienced individual. Erick is part of the International Business Fraternity, Delta Sigma Pi, as well as the Event Coordinator for the Accounting, Finance and Management Honorary Society, Beta Alpha Psi. In order to give back to his campus, Erick is an Accounting tutor for the Success program at the University of the Pacific. As the junior portfolio manager for the Student Investment Fund, Erick focuses on the technology sector. Upon graduation, Erick plans on working towards obtaining his certification as a CPA as well as his Masters of Accountancy (MAcc).'),
(14, 'Timothy', 'Ye', 'Fall 2012', 'Healthcare Sector Analyst', 'Tim is a a Junior at the University of the Pacific, working towards a BA in Business Administration with a concentration in Finance and MIS. This is his first year in SIF and in the future he hopes to work in the high tech industry. In the past year, he has worked for Facebook under the Data Center department, helping them do post construction cost analysis. After graduation, he hopes to work in the Bay Area for a high tech firm as a business analyst.'),
(15, 'Wei', 'Shen', 'Fall 2012', 'Materials Sector Analyst', 'Wei is an international student from Hangzhou, China. He is currently pursuing his Bachelor degree in Business Administration with a concentration in Finance and is expected to graduate in December 2012. Wei joined the SIF this semester and will hold the position of Materials sector analyst. Since 2006 Wei has lived in the United States and has worked to develop his social and culture knowledge and background. Wei is fluent in English and Chinese and conversational in Japanese. Due to his family’s influence, he became interested in business during middle school. In college Wei become particularly intrigued by finance, in particular, the stock market and derivatives. Wei is member of Alpha Lambda Delta National Honor Society and ultimately plans to return to China to help in the financial aspects of his family’s business and hopes to help build the business to one of public and international standing.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
