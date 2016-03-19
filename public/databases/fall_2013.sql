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
-- Table structure for table `fall_2013`
--

CREATE TABLE IF NOT EXISTS `fall_2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_year` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mem_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bio_sum` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `fall_2013`
--

INSERT INTO `fall_2013` (`id`, `firstname`, `lastname`, `mem_year`, `mem_role`, `bio`, `bio_sum`) VALUES
(1, 'Wenjing', 'Ouyang', 'Fall 2013', 'Faculty Advisor', 'Dr. Wenjing Ouyang is an Assistant Professor of Finance at the Eberhardt School of Business at the University of the Pacific. Dr. Ouyang holds a PhD in Finance from Drexel University. Her research interests include corporate finance, financial information asymmetry, and market efficiency. Her research projects have been presented at Princeton University, Maryland University, as well as national finance conferences. She currently sits in the annual program committees of Eastern Finance Association and Southern Finance Association. Dr. Ouyang is also a (not “an”) reviewer for The Financial Review.', 'Dr. Wenjing Ouyang is an Assistant Professor of Finance at the Eberhardt School of Business at the University of the Pacific. Dr. Ouyang holds a PhD in Finance from Drexel'),
(2, 'Erik', 'Cederwall', 'Fall 2013', 'Chief Executive Officer', 'Erik Cederwall, originally from Stockholm, Sweden, is a senior at the University of the Pacific, majoring in Applied Economics. At Pacific, Erik is a member of the NCAA division 1 men’s tennis team and has worked for the Global Center for Social Entrepreneurship as a consultant to social enterprises. Prior to Pacific, Erik has pursued a professional tennis career, founded an import and distribution company, and traded his own stock portfolio. He is interested in pursuing a career in financial services and currently a CFA Level 1 Candidate. ', 'Erik Cederwall, originally from Stockholm, Sweden, is a senior at the University of the Pacific, majoring in Applied Economics. At Pacific, Erik is is a member of the NCAA'),
(3, 'Leslie', 'Vaughan', 'Fall 2013', 'Consumer Discretionary Sector Analyst', 'Leslie Vaughan is a visiting Accounting Instructor here at the University of the Pacific. She is a licensed CPA and CMA.  This is her second semester in SIF.  She was a junior analyst for the Healthcare sector last semester and is the senior analyst for the Consumer Discretionary sector this semester. Her interests lie in how the economy affects the stock market and best practices for diversified investing. She hopes to sit for the CFA exam in the future.', 'Leslie Vaughan is a visiting Accounting Instructor here at the University of the Pacific. She is a licensed CPA and CMA. This is her second semester in SIF. She was a'),
(4, 'Andy', 'Le', 'Fall 2013', 'Portfolio Manager', 'Andy Le is an international student from Vietnam. He has been living in the US for almost 5 years and spent all 4 years of college in Orange County, Southern California. He went to Cypress College for 2 years and then transferred to Chapman University to finish his undergraduate degree. He graduated from Chapman with a bachelor’s degree in business administration, concentration in finance. Currently, Andy is an MBA student at UOP with a concentration in finance, and he is thinking of choosing entrepreneurship as a second concentration. He is also working as a research assistant for professor Wenjing Ouyang. Andy will finish his MBA program this December and hopefully will be able to find a job related to his major in the U.S.', 'Andy Le is an international student from Vietnam. He has been living in the US for almost 5 years and spent all 4 years of college in Orange County, Southern California.  He'),
(5, 'Sueno', 'Li', 'Fall 2013', 'Chief Economist & Consumer Staples Sector Analyst', 'Mengfan Li earned her Bachelor’s degree from Zhengzhou University in China, and is currently pursuing her MBA degree from the University of the Pacific, which will be graduated in December 2013.  She was in SIF last semester, and currently holds the positions within the fund of Chief Economist and serves as a Consumer Staples Sector Analyst. Last semester, she had the chance to go to New York G.A.M.E Forum, and be selected to attend NASDAQ Closing Ceremony in Time Square. Besides, she gained SIF-RMA Student Investment Research Presentation And Honorable Mention Award.', 'Mengfan Li earned her Bachelor’s degree from Zhengzhou University in China, and is currently pursuing her MBA degree from the University of the Pacific, which will be'),
(6, 'Adam', 'Falcon', 'Fall 2013', 'Chief Operating Officer & Fixed Income Analyst', 'Adam Falcon is currently a senior pursuing a degree in applied economics and minoring in business administration.  He joined the Student Investment Fund in order to explore and test economic theory in real world markets.  As Chief Operating Officer for the fund, he is also excited to utilize his time at the Fund to develop his professional skills.', 'Adam Falcon is currently a senior pursuing a degree in applied economics and minoring in business administration. He joined the Student Investment Fund in order to'),
(7, 'Christopher', 'Lopez', 'Fall 2013', 'Risk Management Officer & Financial Sector Analyst', 'Christopher Lopez is currently a senior at University of the Pacific, where he is pursuing a Bachelor’s Degree in Business Administration. Chris has worked in the retail industry as a sales consultant and is looking to expand into the financial industry. He hopes to gain experience in stock and bond valuation, and conducting industry analysis.  After graduation Chris is looking to enter into the financial industry to gain more experience. ', 'Christopher Lopez is currently a senior at University of the Pacific, where he is pursuing a Bachelor’s Degree in Business Administration. Chris has worked in the'),
(8, 'Nicole', 'Chou', 'Fall 2013', 'Assistant Marketing Officer & Utilities Sector Analyst', 'Nicole Chou is currently a junior at University of the Pacific pursuing a Bachelors of Science degree in Business Administration with a concentration in Finance and Entrepreneurship. This is her first semester in the Student Investment Fund and she currently has the position of Chief Marketing Officer and Utilities Sector Analyst.  Nicole is grateful for the opportunity to be in SIF, and hopes to obtain a wide range of knowledge that can be applied to her future career.', 'Nicole Chou is currently a junior at University of the Pacific pursuing a Bachelors of Science degree in Business Administration with a concentration in Finance and'),
(9, 'Guneet', 'Pannu', 'Fall 2013', 'Chief Administrator & Materials Sector Analyst', 'Guneet Pannu is currently a senior at the University of the Pacific, pursuing a Bachelors of Science degree in Business Administration with a concentration in Finance. She is a Planning intern at the Regional Transit District and plans to pursue a career in either corporate finance or investments. She is the junior analyst of the Materials sector and the Chief Administrator of the fund. She joined the Student Investment Fund to gain a firsthand experience of the stock market and attain skills of market analysis along the Bloomberg certification in Equities. Upon graduation she plans on working towards her CFA charter and pursuing a career in the financial industry.', 'Guneet Pannu is currently a senior at the University of the Pacific, pursuing a Bachelors of Science degree in Business Administration with a concentration in Finance. She is a'),
(10, 'Bonnie', 'Gu', 'Fall 2013', 'Chief Accountant & Industrial Sector Analyst', 'Bonnie Gu is an international student from Shanghai China. She gained her bachelors of Financial Management from Shanghai Normal University. She came to University of the Pacific in August 2012 to pursue her MBA from the Eberhardt School of Business. She is currently the Industrial Sector Analyst within the investment fund as well as our accounting representative. Other duties include accounting procedures, such as budgeting and reimbursement. Bonnie will graduate in this December. After graduation she want to find a job related to her major in U.S.', 'Bonnie Gu is an international student from Shanghai China. She gained her bachelors of Financial Management from Shanghai Normal University. She came to the'),
(11, 'Trevor', 'Ferguson', 'Fall 2013', 'Assistant Portfolio Manager & Energy Sector Analyst', 'Trevor is a senior at the University of the Pacific and is currently pursuing a Bachelor’s Degree in Business Administration with concentrations in both Finance and Management/HR.  This past summer he had the privilege of being a wealth management and financial analyst intern at St. James’s Place Wealth Management, the United Kingdom’s leading wealth management firm, in London.  As a member of the Student Investment Fund, he hopes to obtain in-depth knowledge about stock valuation, industry analysis, Bloomberg navigation, and portfolio management.  After graduation Trevor plans to work as a financial analyst for an asset management firm, and possibly pursue his CFA charter.', 'Trevor is a senior at the University of the Pacific and is currently pursuing a Bachelor’s Degree in Business Administration with concentrations in both Finance and'),
(12, 'Cooper', 'Rogers', 'Fall 2013', 'Chief Marketing Officer & Financial Sector Analyst', 'Cooper Rogers is currently a senior, working towards a degree in Business Administration with a concentration of Finance. Cooper is an international student from Perth, Australia, and a member of the UOP swimming team. As a member of the Student Investment Fund Cooper hopes to acquire in depth knowledge about industry analysis and stock valuations. Cooper hopes to further his studies abroad, looking to complete a master’s degree in Europe.', 'Cooper Rogers is currently a senior, working towards a degree in Business Administration with a concentration of Finance. Cooper is an international student from Perth, Australia'),
(13, 'Joshua', 'Tai', 'Fall 2013', 'Health Care Sector Analyst', 'Josh is a current PharmD/MBA student completing his undergrad here at Pacific with a B.S. in Biochemistry. He is an American born Chinese with parents immigrating from Taiwan and Hong Kong. Some of hobbies include being a foodie, playing basketball, hanging out with friends, and traveling.  Someday in the future, he wishes to be able to find a job that would be able to combine the knowledge he learnt in SIF and PharmD/MBA degree. He hopes to retire by 65, but still hold a less stressful job that keeps brain active. ', 'Josh is a current PharmD/MBA student completing his undergrad here at Pacific with a B.S. in Biochemistry. He is an American born Chinese with parents immigrating from'),
(14, 'Oliver', 'Simkovic', 'Fall 2013', 'Technology Sector Analyst', 'Oliver Simkovic is a senior at University of the Pacific double majoring in Applied Economics and Finance. Oliver is an international student from Vienna, Austria and he is a member of the swim team.  This is his first semester in the Student Investment Fund and he is holding positions as Assistant CIO and Technology Sector Analyst. ', 'Oliver Simkovic is a senior at University of the Pacific double majoring in Applied Economics and Finance. Oliver is an international student from Vienna, Austria and he is a'),
(15, 'Kai', 'Jiang', 'Fall 2013', 'Chief Information Officer & Technology Sector Analyst', 'Kai is a second year MBA student of UOP, studying with a concentration in Technology Management and E-business. He has had one year working experience in a German ERP company for coding and an E-business website for product innovation. This is the first semester for him in SIF, he does stock and financial analysis for high-tech companies. After graduation, he wants to be a product manager in an E-business Company.', 'Kai is a second year MBA student of UOP, studying with a concentration in Technology Management and E-business. He has had one year working experience in a German');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;