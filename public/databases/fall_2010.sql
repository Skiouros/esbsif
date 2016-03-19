-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2014 at 11:09 PM
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
-- Table structure for table `fall_2010`
--

CREATE TABLE IF NOT EXISTS `fall_2010` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_year` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `fall_2010`
--

INSERT INTO `fall_2010` (`id`, `firstname`, `lastname`, `mem_year`, `mem_role`, `bio`) VALUES
(1, 'Phil', 'Zhu', 'Fall 2010', 'Faculty Advisor', 'Phil Zhu is an Assistant Professor of Finance at the Eberhardt School of Business at the University of the Pacific. Dr. Zhu teaches courses in international finance as well as the introductory courses in financial management. His research focuses on cross-border mergers and acquisitions, corporate governance, and emerging market finance. He has published research articles in several journals including Journal of Corporate Finance, Journal of Business Research, Corporate Governance, Canadian Investment Review, and Advances in Quantitative Analysis of Finance and Accounting. Dr. Zhu is a recipient of the Barclay Global Investor Canada Research Award in 2006. Before joining the faculty at the University of the Pacific, Dr. Zhu taught at the Sprott School of Business, Carleton University. He also worked as a business analyst in a global management consulting firm in Canada. Dr. Zhu is a Chartered Financial Analyst (CFA).'),
(2, 'Chheang', 'Chhor', 'Fall 2010', 'Chief Investment Officer & Financial Sector Analyst', 'Chheang received his Bachelor of Science from Purdue University in 2003. Prior to attending University of the Pacific, he worked at The Wellington Group, a private wealth management firm located in Indianapolis, IN. Chheang holds series 7 & 63 registrations. He earned the Chartered Financial Consultant designation in 2010 and is a CFA candidate. Chheang is a December 2010 MBA candidate, with a focus in Finance. He is currently the Chief Investment Officer for SIF and senior analyst of the financial sector. Prior roles with the student investment fund include, portfolio manager, fixed Income analyst, and energy sector analyst. He also interns at University of the Pacific, Office of the Vice President, Division of Treasury and Investment Management. Upon graduation, he intends to continue his career in investment management.'),
(3, 'Jonathan', 'Fong', 'Fall 2010', 'Portfolio Manager, Consumer Staples & Health Care Sector Analyst', 'Jonathan graduated from the University of California, Berkeley in 2003 with a B.A. in Economics and a minor in Business Administration. Upon graduation, Jonathan worked as a licensed broker for E*Trade Financial where he traded equity, fixed income, and derivative products. In 2007, Jonathan joined State Street and worked in the company''s Alternative Investment/Derivative group. He was responsible for the valuation of various investment portfolios and served as the lead accountant on a complex international hedge fund. This fall, Jonathan is working at the Stockton office of Boudames Investments Corp. as an Investment Analyst intern. Jonathan is currently a CFA candidate.'),
(4, 'Melissa', 'McGhee', 'Fall 2010', 'Chief Administrator, Consumer Discretionary & Fixed Income Sector Analyst', 'Melissa graduated with honors from University of the Pacific in 2009 with a B.S. in Business Administration, concentration in Finance, and a minor in Economics. Upon graduation, Melissa matriculated in the MBA program at Pacific''s Eberhardt School of Business. During the summer of 2010, Melissa interned with NMC Aerospace, an aerospace and defense manufacturing company within the Engineered Materials platform of Esterline Technologies (ESL). While there, Melissa focused mainly on inventory control and valuation as well as production efficiency. Upon graduation from ESB, Melissa hopes to pursue a career in lean manufacturing, utilizing her knowledge of finance to make sound investment decisions.'),
(5, 'Sean', 'Pippin', 'Fall 2010', 'Chief Accountant & Technology Sector Analyst', 'Sean graduated from the University of the Pacific, with a B.S. in Engineering Physics. After spending two years working in the engineering field he decided to obtain his MBA degree concentrated in finance. This summer he worked at a venture capital firm in Folsom, CA on M&A and strategy of two portfolio companies. After graduating from Pacific, Sean plans to continue his career as a technology based manager and entrepreneur.'),
(6, 'Corey', 'Liu', 'Fall 2010', 'Co-Chief Economist & Consumer Staples Sector Analyst', 'Corey is currently an MBA student at the University of the Pacific concentrating in finance. He received his undergraduate degree from the University of California, Los Angeles, where he graduated with a degree in political science with a concentration in international relations. Corey''s primary work experience has been with Costco Wholesale at the corporate and warehouse levels. His current work involves transitioning the bar-coding system of a Stockton, California based food supplier to upcoming GS1-128 foods service industry standards. Corey was an American Legion Boys State Delegate and a Boy Scouts of America Eagle Scout.'),
(7, 'Weston', 'Chan', 'Fall 2010', 'Industrial Sector Analyst', 'Weston''s interest in business began at the age of 15 while studying Chinese at Beijing Language and Culture University. Here, he discovered his passion for learning culture and studying its effect on domestic and foreign businesses, locally. With a great desire to educate himself on the nuances of business and culture, Weston earned an International Business degree from San Francisco State University, traveled extensively throughout East Asia and lived and worked in Seoul, Korea. Currently, this world traveler seeks to improve his business acumen by pursuing a finance MBA degree from the University of the Pacific, graduating in 2010. In the future, Weston wishes to leverage his affection for world culture, graduate-level business education and international experience to a dynamic business career.'),
(8, 'Brett-Riley', 'Fujita', 'Fall 2010', 'Technology Sector Analyst', 'Brett is currently a Senior, on his way to achieving a B.S. in Business Administration with a concentration in Finance, and a minor in Economics in May 2011. Brett became passionate about Finance in his Freshman year of college when one of his professors introduced him to the stock and bond market. Ever since then, Brett has been following the stock market and managing a small portfolio of his own. This past summer, Brett did a wealth management internship with the Chicago Investment Group/Paxton Financial on Wall Street. When he graduates, he hopes to find a position as a corporate financial analyst.'),
(9, 'Ying', 'Liu', 'Fall 2010', 'Materials Sector Analyst', 'Ms. Liu is an MBA candidate at University of the Pacific. She received her bachelor''s degree in accounting from Beijing Information and Technology Institute.'),
(10, 'FeiFei', 'Tang', 'Fall 2010', 'Financial Sector Analyst', 'Bachelor of Science, Business Administration Concentration: Accounting, Finance and International Business. Minor: Project Management Activities: Vice President of Finance - Delta Sigma Pi Vice President of Professional Activities - Beta Alpha Psi Vice President - Eberhardt School of Business Student Association'),
(11, 'Jenifer', 'Widjaja', 'Fall 2010', 'Industrial Sector Analyst', 'Jenifer is in her Senior year completing her studies to obtain a B.S. in Business Administration with a Finance concentration and she is also finishing her double major in Applied Economics. Jen is planning to engage in a professional career in investments and in delivering finance operations improvement services with a multinational enterprise following her graduation. As an extracurricular activity, Jen is in the UOP Tennis team.'),
(12, 'Emily', 'Ye', 'Fall 2010', 'Utilities Sector Analyst', 'Emily is currently an MBA candidate at the Eberhardt School of Business. Her undergraduate major is finance and engineering. She is also a CFA candidate.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
