-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2014 at 11:11 PM
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
-- Table structure for table `spring_2011`
--

CREATE TABLE IF NOT EXISTS `spring_2011` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_year` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `spring_2011`
--

INSERT INTO `spring_2011` (`id`, `firstname`, `lastname`, `mem_year`, `mem_role`, `bio`) VALUES
(1, 'Phil', 'Zhu', 'Spring 2011', 'Faculty Advisor', 'Phil Zhu is an Assistant Professor of Finance at the Eberhardt School of Business at the University of the Pacific. Dr. Zhu teaches courses in international finance as well as the introductory courses in financial management. His research focuses on cross-border mergers and acquisitions, corporate governance, and emerging market finance. He has published research articles in several journals including Journal of Corporate Finance, Journal of Business Research, Corporate Governance, Canadian Investment Review, and Advances in Quantitative Analysis of Finance and Accounting. Dr. Zhu is a recipient of the Barclay Global Investor Canada Research Award in 2006. Before joining the faculty at the University of the Pacific, Dr. Zhu taught at the Sprott School of Business, Carleton University. He also worked as a business analyst in a global management consulting firm in Canada. Dr. Zhu is a Chartered Financial Analyst (CFA).'),
(2, 'Artem', 'Gramma ', 'Spring 2011', 'Co-Chief Investment Officer & Energy Sector Analyst', 'Artem graduated in May 2010 from University of the Pacific with BS is finance and is currently an MBA candidate. He has been involved with the Student Investment Fund for over two years, overseeing mainly the energy sector. Artem is also a captain of the Pacific''s Division I Tennis Team and was named the Big West Player of the Year for 2010. After graduating from Pacific, Artem plans to enter the investment banking industry and work towards obtaining a CFA designation.'),
(3, 'Faisal', 'Al Reshaid', 'Spring 2011', 'Co-Chief Investment Officer & Technology Sector Analyst', 'Faisal Al Reshaid is a graduate of the Eberhardt School of Business at the University of the Pacific. Currently, Faisal is pursuing an MBA degree also from the University of the Pacific. Throughout the past 4 years, Faisal had the opportunity of working with multiple start-ups including the Powerhouse Science Center, on of the largest science center in North California, and the ST tournament, a community for gamers. At the University of the Pacific, Faisal was selected for the Student Investment Fund, a $1.5 million portfolio, and held multiple positions such as; Chief Investment Officer, Chief Administrator, and Senior Analyst. Faisal also lead research in multiple sectors; Technology, Consumer Staples, and Consumer Discretionary. Living with the mentality of “staying positive”, Faisal is able to accomplish his goals and influence others to overcome theirs. Classmates and professors usually convey Faisal as a strategic, positive, passionate, and influential student.'),
(4, 'Aike', 'Huang ', 'Spring 2011', 'Co-Portfolio Manager & Consumer Staples Sector Analyst', 'Aike Huang is an International Student from Shanghai, China. He is a MBA candidate of University of the Pacific concentrating in Finance and received his Bachelor Degree in Shanghai Finance University with a major in Finance. Aike Huang is interested in portfolio management and did an internship in SHENYIN & WANGUO securities (A leading financial company in China, providing a full range of investment banking services) as a manager assistant. Aike Huang intends to engage in portfolio management.'),
(5, 'Jory', 'Cook', 'Spring 2011', 'Co-Portfolio Manager, Fixed Income Sector Analyst', 'Jory Cook is currently pursuing his JD/MBA at the University of the Pacific. He received his BA in World Religions from the University of Bridgeport in Connecticut, and taught English as a Second Language in Japan and Korea before returning to California. Jory grew up in Japan, California and Costa Rica, and has worked in Japan, Korea, and Costa Rica. After graduating from Pacific, Jory hopes to work as internal legal counsel for an international investment firm.'),
(6, 'Brett-Riley', 'Fujita', 'Spring 2011', 'Chief Administrator & Materials Sector Analyst', 'Brett-Riley is currently a Senior, on his way to achieving a B.S. in Business Administration with a concentration in Finance, and a minor in Economics. He is currently the Chief Administrator and the materials sector analyst within the investment fund.  Brett-Riley became passionate about Finance in his Freshman year of college when one of his professors introduced him to the stock and bond market. Ever since then, Brett-Riley has been following the stock market and managing a small portfolio of his own. This past summer, Brett-Riley did a financial internship with the Chicago Investment Group/Paxton Financial in New York on Wall Street. His experience in New York helped to develop his love for finance.  When he graduates, he hopes to find a position as a corporate financial analyst and obtain his CFA title.'),
(7, 'Fei Fei', 'Tang ', 'Spring 2011', 'Operations Manager, Financial Sector Analyst', 'Bachelor of Science, Business Administration Concentration: Accounting, Finance and International Business. Minor: Project Management Activities: Vice President of Finance - Delta Sigma Pi Vice President of Professional Activities - Beta Alpha Psi Vice President - Eberhardt School of Business Student Association'),
(8, 'Hamza', 'Benjelloun ', 'Spring 2011', 'Chief Economist & Industrial Sector Analyst', 'Hamza is an international student from Casablanca, Morocco. He has recently, graduated from the University of the Pacific, with a B.S. in Business Administration Concentration: Finance. Upon graduation, Hamza decided to continue his studies and pursue an MBA from the same university also with a concentration in Finance. Hamza has recently completed an Internship over the summer as a FOREX trader in one of the investment banks in Morocco. Hamza hopes to return home and start his career in the investment field as a portfolio manager.'),
(9, 'Emily', 'Ye', 'Spring 2011', 'Chief Accountant & Utilities Sector Analyst', 'Emily is currently an MBA candidate at the Eberhardt School of Business. Her undergraduate major is finance and engineering. She is also a CFA candidate.'),
(10, 'Daniel', 'Idźkowski ', 'Spring 2011', 'Information Officer & Technology Sector Analyst', 'Danny is currently on his way to achieving a Bachelor of Science in Business Administration, concentrating in Information Systems Management.  Prior to SIF, Danny has undertaken various technical positions, one of which includes his current position as webmaster for the International Business Fraternity of Delta Sigma Pi at the University of the Pacific.  This past summer, Danny completed an internship performing data analysis and cross-reference mapping for Diversified Credit Investments LLC. At DCI, Danny had the unique opportunity to utilize his technical skills to collect and organize quantitative data which allowed him to better understand how financial data is used to develop models that accurately measure risk, identify credit mispricing, predict corporate defaults, and develop broadly diversified portfolios. After graduation, Danny hopes to continue his education by pursuing an MBA or CFA, and continue to apply his technical background to the field of investment management.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
