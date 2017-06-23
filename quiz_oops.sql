-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2016 at 03:17 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_oops`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'Bootstrap'),
(4, 'PHP'),
(5, 'Mysql'),
(6, 'Jquery');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `ans1` varchar(1000) NOT NULL,
  `ans2` varchar(1000) NOT NULL,
  `ans3` varchar(1000) NOT NULL,
  `ans4` varchar(1000) NOT NULL,
  `ans` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `cat_id`) VALUES
(1, 'What does HTML stand for?', 'Hyperlinks and Text Markup Language', ' Home Tool Markup Language', 'Hyper Text Markup Language\r\n', 'How To Meet Ladies', 2, 1),
(2, 'Choose the correct HTML element for the largest heading:', '&lt;heading&gt;', '&lt;h1&gt;', '&lt;h3&gt;', '&lt;head&gt;', 1, 1),
(3, 'What is the correct HTML element for inserting a line break?', '&lt;lb&gt;', '&lt;breaK&gt;', '&lt;br&gt;', '&lt;next&gt;', 2, 1),
(4, 'What is the correct HTML for adding a background color?', '&lt;background&gt;yellow&lt;/background&gt;\r\n', '&lt;body style="background-color:yellow;"&gt;\r\n', '&lt;body bg="yellow"&gt;\r\n', '&lt;body color="yellow"&gt;', 1, 1),
(5, 'Choose the correct HTML element to define important text', '&lt;important&gt;', '&lt;b&gt;', '&lt;strong&gt;', '&lt;i&gt;', 2, 1),
(6, 'Choose the correct HTML element to define emphasized text', '&lt;i&gt;', '&lt;em&gt;', '&lt;b&gt;', '&lt;italic&gt;', 1, 1),
(7, 'What is the correct HTML for creating a hyperlink?', '&lt;a href="http://www.w3schools.com"&gt;W3Schools&lt;/a&gt;', '&lt;a name="http://www.w3schools.com"&gt;W3Schools.com&lt;/a&gt;', '&lt;a url="http://www.w3schools.com"&gt;W3Schools.com&lt;/a&gt;', '&lt;a&gt;http://www.w3schools.com&lt;/a&gt;', 0, 1),
(8, 'Which character is used to indicate an end tag?', '*', '/', '\\', '<', 1, 1),
(9, 'How can you open a link in a new tab/browser window?', '&lt;a href="url" new&gt;', '&lt;a href="" open="new"&gt;', '&lt;a href="url" target="new"&gt;\r\n', '&lt;a href="url" target="_blank"&gt;', 3, 1),
(10, 'Inline elements are normally displayed without starting a new line.', 'True', 'False', 'Depends on the attribute', 'Depends on the element', 0, 1),
(11, 'How can you make a numbered list?', '&lt;list&gt;', '&lt;ul&gt;', '&lt;ol&gt;', '&lt;nl&gt;', 2, 1),
(12, 'How can you make a bulleted list?', '&lt;ul&gt;', '&lt;ol&gt;', '&lt;bl&gt;', '&lt;bullet&gt;', 0, 1),
(13, 'What is the correct HTML for making a checkbox?', '&lt;check&gt;', '&lt;checkbox&gt;', '&lt;input type="checkbox"&gt;', '&lt;input type="check"&gt;', 2, 1),
(14, 'What is the correct HTML for making a drop-down list?', '&lt;list&gt;', '&lt;select&gt;', '&lt;input type="list"&gt;', '&lt;input type="dropdown"&gt;', 1, 1),
(15, 'What is the correct HTML for making a text area?', '&lt;textarea&gt;', '&lt;input type="textbox"&gt;', '&lt;input type="textarea"&gt;', '&lt;none of these&gt;', 0, 1),
(16, 'What does CSS stand for?', 'Computer Style Sheets', 'Cascading Style Sheets', 'Colorful Style Sheets', 'Creative Style Sheets\r\n', 1, 2),
(17, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'At the end of the document', 'In the &lt;body&gt; section', 'In the &lt;head&gt; section', 'using inline attrubute', 2, 2),
(18, 'Which HTML tag is used to define an internal style sheet?', '&lt;script&gt;', '&lt;css&gt;', '&lt;style&gt;', '&lt;src&gt;', 2, 2),
(19, 'Which is the correct CSS syntax?', ' body:color=black;', 'body {color: black;}', ' {body:color=black;}', '{body;color:black;}', 1, 2),
(20, 'How do you insert a comment in a CSS file?', '// this is a comment //', '&lt;!--this is a comment--&gt;', '/* this is a comment */', '// this is a comment\r\n', 2, 2),
(21, 'Which CSS property is used to change the text color of an element?', 'fgcolor', 'text-color', 'color', 'font-color', 2, 2),
(22, 'Which CSS property controls the text size?', 'text-size', 'font-size', 'font-style', 'text-style', 1, 2),
(23, 'What is the correct CSS syntax for making all the <p> elements bold?', '&lt;p style="font-size:bold;"&gt;', 'p {text-size:bold;}', 'p {font-weight:bold;}', '&lt;p style="text-size:bold;"&gt;', 2, 2),
(24, ' How do you display hyperlinks without an underline?', 'a {text-decoration:no-underline;}', 'a {text-decoration:none;}', 'a {decoration:no-underline;}', 'a {underline:none;}', 1, 2),
(25, ' How do you make each word in a text start with a capital letter?', 'text-transform:capitalize', 'test-style:camelcase', 'text-transform:uppercase', 'You can''t do that with CSS', 0, 2),
(26, 'Which property is used to change the font of an element?', ' font', 'font-family', 'font-style', 'Both font-family and font can be used', 1, 2),
(27, 'When using the padding property; are you allowed to use negative values?', 'Yes', 'No', 'Depends on the element', 'Depends on other properties', 1, 2),
(28, 'How do you make a list that lists its items with squares?', ' list-style-type: square;', ' list-type: square;', 'list: square;', 'list-style:square;', 0, 2),
(29, 'How do you select an element with id "demo"?', '*demo', '$demo', '#demo', '.demo', 2, 2),
(30, 'How do you select elements with class name "test"?', '$test', '*test', '.test', '#test', 2, 2),
(31, 'Which class provides a responsive fixed width container?', '.container-fixed', '.container', '.container-fluid', '.container-fixed-width', 1, 3),
(32, 'Which class provides a full width container, spanning the entire width of the viewport?', '.container-fixed', '.container-full', '.container', '.container-fluid', 3, 3),
(33, 'The Bootstrap grid system is based on how many columns?', '3', '6', '9', '12', 3, 3),
(34, 'Which class adds zebra-stripes to a table?', '.table-striped', '.table-bordered\r\n', ' .table-zebra', '.even and .odd', 0, 3),
(35, 'Which class shapes an image to a circle?', '.img-thumbnail', '.img-round', '.img-rounded', '.img-circle', 3, 3),
(36, 'Which class is used to create a big box for calling extra attention?', '.bigbox', '.container', '.jumbotron', 'None of these', 2, 3),
(37, ' Which class is used to create a button group?', '.group-button', '.button-group', '.btn-group', '.group-btn', 2, 3),
(38, 'Using which class you can insert a search icon?', '.glyphicon glyphicon-search', '.glyphicon-search', '.glyphicon search', '.glyph glyph-search', 0, 3),
(39, 'Which class is used to create a basic list group?', '.group-list', '.list-group', '.grouped-list', 'none of these', 1, 3),
(40, 'Which class adds a heading to a panel?', '.panel-head', '.panel-header', '.panel-footer', '.panel-heading', 3, 3),
(41, 'Which class indicates a dropdown menu?', '.dropdown', '.select', '.dropdown-list', '.dropdown-toggle', 0, 3),
(42, 'A standard navigation bar is created with:', '&lt;nav class="navigationbar navbar-default"&gt;', '&lt;nav class="nav navbar"&gt;', '&lt;nav class="navbar navbar-default"&gt;', '&lt;nav class="navbar default-navbar"&gt;', 2, 3),
(43, 'Which class is used to create a black navigation bar?', '.navbar-black', '.navbar-dark', '.navbar-default', '.navbar-inverse', 3, 3),
(44, 'Which contextual class indicates a dangerous or potentially negative action in Bootstrap?', '.text-warning', '.text-primary\r\n', ' .text-info', 'none of these', 3, 3),
(45, 'Which class indicates uppercased text', '.uppercase', '.text-capitalize', '.ucase', '.text-uppercase', 3, 3),
(46, 'What does PHP stand for?', 'Personal Hypertext Processor', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Personal Home Page', 1, 4),
(47, 'PHP server scripts are surrounded by delimiters, which?', '&lt;script&gt;...&lt;/script&gt;', '&lt;&gt;...&lt;/&gt;', '&lt;?php&gt;...&lt;/?&gt;', '&lt;?php...?&gt;', 3, 4),
(48, ' How do you write "Hello World" in PHP', 'Document.text("Hello World");', 'echo "Hello World";', 'text = Hello World";', 'Document.Write("Hello World");\r\n', 1, 4),
(49, 'All variables in PHP start with which symbol?', '$', '#', '&', '!', 0, 4),
(50, 'What is the correct way to end a PHP statement?', '/?', '&lt;br&gt;\r\n', '&lt;/php&gt;', ';', 3, 4),
(51, 'When using the POST method, variables are displayed in the URL:', 'True', 'False', 'Depends on the variable type', 'Depends on the form attribute', 1, 4),
(52, ' What is the correct way to include the file "time.inc" ?', '&lt;?php include:"time.inc"; ?&gt;', '&lt;?php include "time.inc"; ?&gt;', '&lt;?php include file="time.inc"; ?&gt;', '&lt;?php include="time.inc" ?&gt;', 1, 4),
(53, 'What is the correct way to create a function in PHP?', 'new_function myFunction()\r\n', ' create myFunction()', 'class function()', 'function myFunction()', 3, 4),
(54, 'PHP allows you to send emails directly from a script', 'True', 'False', 'Depends on the file ', 'Depends on the server', 0, 4),
(55, 'What is a correct way to add a comment in PHP?', '&lt;comment&gt;...&lt;/comment&gt;', '&#47;&#42...&#42&#47;', ' &lt;!--...--&gt;', '&lt;/?&gt;...&lt;/?&gt;', 1, 4),
(56, 'The die() and exit() functions do the exact same thing.', 'True', 'False', 'Depends on the condition', 'Depends on the element', 0, 4),
(57, 'Which one of these variables has an invalid name?', '$my-Var', '$my_Var', '$myVar', 'None of these', 0, 4),
(58, 'The setcookie() function must appear BEFORE the &lt;html&gt; tag.', 'True', 'False', 'Not necessary ', 'Depends on the cookie type', 0, 4),
(59, 'How do you create an array in PHP?', '$cars = array("Volvo", "BMW", "Toyota");', '$cars = "Volvo", "BMW", "Toyota";', '$cars = array["Volvo", "BMW", "Toyota"];', '$cars = array{"Volvo", "BMW", "Toyota"};', 0, 4),
(60, 'Which operator is used to check if two values are equal and of same data type?', ' !=', '==', '===', '=', 1, 4),
(61, 'What does SQL stand for?', 'Strong Question Language', 'Structured Question Language', 'Structured Query Language\r\n', 'Simple Query Language', 2, 5),
(62, 'Which SQL statement is used to update data in a database?', 'SAVE', 'MODIFY\r\n', 'CHANGE', 'UPDATE', 3, 5),
(63, ' Which SQL statement is used to delete data from a database?', 'COLLAPSE', 'REMOVE', 'DELETE', 'None of these', 2, 5),
(64, 'Which SQL statement is used to insert new data in a database?', 'INSERT NEW', 'INSERT INTO', 'ADD RECORD', 'ADD NEW', 1, 5),
(65, 'With SQL, how do you select a column named "FirstName" from a table named "Persons"?', 'EXTRACT FirstName FROM Persons', 'SELECT FirstName FROM Persons', 'SELECT Persons.FirstName', 'SELECT FirstName OF Persons', 1, 5),
(66, 'With SQL, how do you select all the columns from a table named "Persons"?', 'SELECT [all] FROM Persons', 'SELECT ALL FROM Persons', 'SELECT *.Persons', 'SELECT * FROM Persons', 3, 5),
(67, 'With SQL, how do you select all the records from a table named "Persons" where the value of the column "FirstName" is "Peter"?', 'SELECT [all] FROM Persons WHERE FirstName LIKE ''Peter''', 'SELECT [all] FROM Persons WHERE FirstName=''Peter''', 'SELECT * FROM Persons WHERE FirstName<>''Peter''', 'SELECT * FROM Persons WHERE FirstName=''Peter''', 3, 5),
(68, 'With SQL, how do you select all the records from a table named "Persons" where the value of the column "FirstName" starts with an "a"?', 'SELECT * FROM Persons WHERE FirstName=''%a%''', ' SELECT * FROM Persons WHERE FirstName=''a''', 'SELECT * FROM Persons WHERE FirstName LIKE ''a%''', 'SELECT * FROM Persons WHERE FirstName LIKE ''%a''', 2, 5),
(69, 'The OR operator displays a record if ANY conditions listed are true. The AND operator displays a record if ALL of the conditions listed are true', 'Yes ', 'No', 'Depends on the statement', 'Not Always Necessary', 0, 5),
(70, 'With SQL, how do you select all the records from a table named "Persons" where the "FirstName" is "Peter" and the "LastName" is "Jackson"?', 'SELECT * FROM Persons WHERE FirstName is ''Peter'' AND LastName is ''Jackson''', 'SELECT FirstName=''Peter'', LastName=''Jackson'' FROM Persons', 'SELECT * FROM Persons WHERE FirstName=''Peter'' AND LastName=''Jackson''', 'SELECT * FROM Persons WHERE FirstName=''Peter'' OR LastName=''Jackson''', 2, 5),
(71, 'With SQL, how can you return all the records from a table named "Persons" sorted descending by "FirstName"?', 'SELECT * FROM Persons SORT ''FirstName'' DESC', 'SELECT * FROM Persons ORDER FirstName DESC', 'SELECT * FROM Persons ORDER BY FirstName DESC\r\n\r\n', ' SELECT * FROM Persons SORT BY ''FirstName'' DESC', 2, 5),
(72, 'With SQL, how can you insert a new record into the "Persons" table?', 'INSERT (''Jimmy'', ''Jackson'') INTO Persons', 'INSERT INTO Persons VALUES (''Jimmy'', ''Jackson'')', 'INSERT VALUES (''Jimmy'', ''Jackson'') INTO Persons', 'None of These', 1, 5),
(73, 'With SQL, how can you insert "Olsen" as the "LastName" in the "Persons" table?', 'INSERT INTO Persons (''Olsen'') INTO LastName', ' INSERT INTO Persons (LastName) VALUES (''Olsen'')', 'INSERT (''Olsen'') INTO Persons (LastName)', 'INSERT IN PERSONS WHERE LastName = ''Olsen'';', 1, 5),
(74, ' How can you change "Hansen" into "Nilsen" in the "LastName" column in the Persons table?', 'UPDATE Persons SET LastName=''Nilsen'' WHERE LastName=''Hansen''', ' UPDATE Persons SET LastName=''Hansen'' INTO LastName=''Nilsen''', 'MODIFY Persons SET LastName=''Hansen'' INTO LastName=''Nilsen', 'MODIFY Persons SET LastName=''Nilsen'' WHERE LastName=''Hansen''', 0, 5),
(75, 'With SQL, how can you delete the records where the "FirstName" is "Peter" in the Persons Table?', 'DELETE FROM Persons WHERE FirstName = ''Peter''', 'DELETE FirstName=''Peter'' FROM Persons', 'DELETE ROW FirstName=''Peter'' FROM Persons\r\n', 'DELETE PERSONS TABLE WHERE FirstName =''Peter''', 0, 5),
(76, 'Which of the following is correct?', 'jQuery is a JSON Library', 'jQuery is a JavaScript Library', 'Jquery is a Programming Language', 'Jquery is a independent Framework', 1, 6),
(77, 'jQuery uses CSS selectors to select elements?', 'True', 'False', 'Not Necessary always', 'Depends on the Element', 0, 6),
(78, 'Which sign does jQuery use as a shortcut for jQuery?', '&', '$', '?', '!', 1, 6),
(79, 'Is jQuery a library for client scripting or server scripting?', 'Server scripting', 'Client scripting', 'Database language', 'All the above', 1, 6),
(80, 'Is it possible to use jQuery together with AJAX?', 'Yes', 'No', 'Depends on Web Server', 'Depends on Database language', 0, 6),
(81, 'What is the correct jQuery code to set the background color of all p elements to red?', '$("p").layout("background-color","red");', '$("p").css("background-color","red");', '$("p").manipulate("background-color","red");', '$("p").style("background-color","red");', 1, 6),
(82, 'With jQuery, look at the following selector: $("div.intro"). What does it select?', 'All div elements with class="intro"', 'The first div element with class="intro"', 'All div elements with id="intro"\r\n', 'The first div element with id="intro"\r\n', 0, 6),
(83, 'Which jQuery method is used to hide selected elements?', 'visible(false)', 'hidden()', 'hide()', 'display(none)', 2, 6),
(84, 'Which jQuery method is used to set one or more style properties for selected elements?', 'style()', 'css()', 'html()', 'prop()', 1, 6),
(85, 'What is the correct jQuery code for making all div elements 100 pixels high?', '$("div").height(100)', '$("div").yPos(100)', '$("div").height="100"', '$("div").change(height="100")', 0, 6),
(86, 'What scripting language is jQuery written in?', 'C#', 'JavaScript', 'C++', 'Python', 1, 6),
(87, 'Which jQuery function is used to prevent code from running, before the document is finished loading?', '$(body).onload()', '$(document).ready()', '$(document).load()', '$(body).finish();', 1, 6),
(88, 'Which jQuery method is used to switch between adding/removing one or more classes (for CSS) from selected elements?', 'switch()', 'altClass()', 'toggleClass()', ' switchClass()', 2, 6),
(89, 'Look at the following selector: $("p#intro"). What does it select?', 'The p element with id="intro"', 'The intro Element of Class p', 'All p elements with class="intro"\r\n', 'None of the above', 0, 6),
(90, 'The jQuery animate() method can be used to animate ANY CSS property?', 'Only properties containing numeric values', 'All properties except the shorthand properties', 'YES', 'NO', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `num_test` int(11) NOT NULL,
  `last_result` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `pass`, `img`, `num_test`, `last_result`) VALUES
(29, 'Rahul', 'rahulmma.ra@gmail.com', 'rahul', '', 3, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
