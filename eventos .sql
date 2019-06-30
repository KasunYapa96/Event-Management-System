-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 07:14 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventos`
--

-- --------------------------------------------------------

--
-- Table structure for table `eventcomments`
--

CREATE TABLE `eventcomments` (
  `commentID` int(255) NOT NULL,
  `eventID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventcomments`
--

INSERT INTO `eventcomments` (`commentID`, `eventID`, `userID`, `comment`) VALUES
(1, 1, 3, 'gsghrsh');

-- --------------------------------------------------------

--
-- Table structure for table `eventopinion`
--

CREATE TABLE `eventopinion` (
  `eventID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `opinion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventopinion`
--

INSERT INTO `eventopinion` (`eventID`, `userID`, `opinion`) VALUES
(1, 1, 'GOING'),
(1, 3, 'GOING'),
(3, 3, 'GOING'),
(4, 3, 'INTERESTED');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eventID` int(11) NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `date` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eventImage` varchar(255) NOT NULL,
  `Description` mediumtext NOT NULL,
  `category` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL,
  `userType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventID`, `eventName`, `venue`, `date`, `timestamp`, `eventImage`, `Description`, `category`, `userID`, `userType`) VALUES
(1, 'event1', 'Homagama', '2018-07-20', '2018-07-11 00:34:35', '01-676x169.jpg', 'efwergeragharhrhrh', 'cat1', 0, 'organization'),
(2, 'event2', 'Pitipana', '2018-07-19', '2018-07-11 00:34:35', '05-676x169.jpg', 'fwwegherherehjtrh', 'cat2', 0, 'university'),
(3, 'Event5', 'place4', '2018-07-13', '2018-07-11 21:48:23', '03-676x169.png', 'nstructor:r,length:0,toArray:function(){return f.call(this)},get:function(a){return null==a?f.call(this):a<0?this[a+this.length]:this[a]},pushStack:function(a){var b=r.merge(this.constructor(),a);return b.prevObject=this,b},each:function(a){return r.each(this,a)},map:function(a){return this.pushStack(r.map(this,function(b,c){return a.call(b,c,b)}))},slice:function(){return this.pushStack(f.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(a){var b=this.length,c=+a+(a<0?b:0);return this.pushStack(c>=0&&c<b?[this[c]]:[])},end:function(){return this.prevObject||this.constructor()},push:h,sort:c.sort,splice:c.splice},r.extend=r.fn.extend=function(){var a,b,c,d,e,f,g=arguments[0]||{},h=1,i=arguments.length,j=!1;for(\"boolean\"==typeof g&&(j=g,g=arguments[h]||{},h++),\"object\"==typeof g||r.isFunction(g)||(g={}),h===i&&(g=this,h--);h<i;h++)if(null!=(a=arguments[h]))for(b in a)c=g[b],d=a[b],g!==d&&(j&&d&&(r.isPlainObject(d)||(e=Array.isArray(d)))?(e?(e=!1,f=c&&Array.isArray(c)?c:[]):f=c&&r.isPlainObject(c)?c:{},g[b]=r.extend(j,f,d)):void 0!==d&&(g[b]=d));return g},r.extend({expando:\"jQuery\"+(q+Math.random()).replace(/\\D/g,\"\"),isReady:!0,error:function(a){throw new Error(a)},noop:function(){},isFunction:function(a){return\"function\"===r.type(a)},isWindow:function(a){return null!=a&&a===a.window},isNumeric:function(a){var b=r.type(a);return(\"number\"===b||\"string\"===b)&&!isNaN(a-parseFloat(a))},isPlainObject:function(a){var b,c;return!(!a||\"[object Object]\"!==k.call(a))&&(!(b=e(a))||(c=l.call(b,\"constructor\")&&b.constructor,\"function\"==typeof c&&m.call(c)===n))},isEmptyObject:function(a){var b;for(b in a)return!1;return!0},type:function(a){return null==a?a+\"\":\"object\"==typeof a||\"function\"==typeof a?j[k.call(a)]||\"object\":typeof a},globalEval:function(a){p(a)},camelCase:function(a){return a.replace(t,\"ms-\").replace(u,v)},each:function(a,b){var c,d=0;if(w(a)){for(c=a.length;d<c;d++)if(b.call(a[d],d,a[d])===!1)break}else for(d in a)if(b.call(a[d],d,a[d])===!1)break;return a},trim:function(a){return null==a?\"\":(a+\"\").replace(s,\"\")},makeArray:function(a,b){var c=b||[];return null!=a&&(w(Object(a))?r.merge(c,\"string\"==typeof a?[a]:a):h.call(c,a)),c},inArray:function(a,b,c){return null==b?-1:i.call(b,a,c)},merge:function(a,b){for(var c=+b.length,d=0,e=a.length;d<c;d++)a[e++]=b[d];return a.length=e,a},grep:function(a,b,c){for(var d,e=[],f=0,g=a.length,h=!c;f<g;f++)d=!b(a[f],f),d!==h&&e.push(a[f]);return e},map:function(a,b,c){var d,e,f=0,h=[];if(w(a))for(d=a.length;f<d;f++)e=b(a[f],f,c),null!=e&&h.push(e);else for(f in a)e=b(a[f],f,c),null!=e&&h.push(e);return g.apply([],h)},guid:1,proxy:function(a,b){var c,d,e;if(\"string\"==typeof b&&(c=a[b],b=a,a=c),r.isFunction(a))return d=f.call(arguments,2),e=function(){return a.', 'cat1', 3, 'university'),
(4, 'Event4', 'place2', '2018-07-19', '2018-07-11 21:48:23', '03-676x169.png', 'nstructor:r,length:0,toArray:function(){return f.call(this)},get:function(a){return null==a?f.call(this):a<0?this[a+this.length]:this[a]},pushStack:function(a){var b=r.merge(this.constructor(),a);return b.prevObject=this,b},each:function(a){return r.each(this,a)},map:function(a){return this.pushStack(r.map(this,function(b,c){return a.call(b,c,b)}))},slice:function(){return this.pushStack(f.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(a){var b=this.length,c=+a+(a<0?b:0);return this.pushStack(c>=0&&c<b?[this[c]]:[])},end:function(){return this.prevObject||this.constructor()},push:h,sort:c.sort,splice:c.splice},r.extend=r.fn.extend=function(){var a,b,c,d,e,f,g=arguments[0]||{},h=1,i=arguments.length,j=!1;for(\"boolean\"==typeof g&&(j=g,g=arguments[h]||{},h++),\"object\"==typeof g||r.isFunction(g)||(g={}),h===i&&(g=this,h--);h<i;h++)if(null!=(a=arguments[h]))for(b in a)c=g[b],d=a[b],g!==d&&(j&&d&&(r.isPlainObject(d)||(e=Array.isArray(d)))?(e?(e=!1,f=c&&Array.isArray(c)?c:[]):f=c&&r.isPlainObject(c)?c:{},g[b]=r.extend(j,f,d)):void 0!==d&&(g[b]=d));return g},r.extend({expando:\"jQuery\"+(q+Math.random()).replace(/\\D/g,\"\"),isReady:!0,error:function(a){throw new Error(a)},noop:function(){},isFunction:function(a){return\"function\"===r.type(a)},isWindow:function(a){return null!=a&&a===a.window},isNumeric:function(a){var b=r.type(a);return(\"number\"===b||\"string\"===b)&&!isNaN(a-parseFloat(a))},isPlainObject:function(a){var b,c;return!(!a||\"[object Object]\"!==k.call(a))&&(!(b=e(a))||(c=l.call(b,\"constructor\")&&b.constructor,\"function\"==typeof c&&m.call(c)===n))},isEmptyObject:function(a){var b;for(b in a)return!1;return!0},type:function(a){return null==a?a+\"\":\"object\"==typeof a||\"function\"==typeof a?j[k.call(a)]||\"object\":typeof a},globalEval:function(a){p(a)},camelCase:function(a){return a.replace(t,\"ms-\").replace(u,v)},each:function(a,b){var c,d=0;if(w(a)){for(c=a.length;d<c;d++)if(b.call(a[d],d,a[d])===!1)break}else for(d in a)if(b.call(a[d],d,a[d])===!1)break;return a},trim:function(a){return null==a?\"\":(a+\"\").replace(s,\"\")},makeArray:function(a,b){var c=b||[];return null!=a&&(w(Object(a))?r.merge(c,\"string\"==typeof a?[a]:a):h.call(c,a)),c},inArray:function(a,b,c){return null==b?-1:i.call(b,a,c)},merge:function(a,b){for(var c=+b.length,d=0,e=a.length;d<c;d++)a[e++]=b[d];return a.length=e,a},grep:function(a,b,c){for(var d,e=[],f=0,g=a.length,h=!c;f<g;f++)d=!b(a[f],f),d!==h&&e.push(a[f]);return e},map:function(a,b,c){var d,e,f=0,h=[];if(w(a))for(d=a.length;f<d;f++)e=b(a[f],f,c),null!=e&&h.push(e);else for(f in a)e=b(a[f],f,c),null!=e&&h.push(e);return g.apply([],h)},guid:1,proxy:function(a,b){var c,d,e;if(\"string\"==typeof b&&(c=a[b],b=a,a=c),r.isFunction(a))return d=f.call(arguments,2),e=function(){return a.', 'cat2', 0, 'organization');

-- --------------------------------------------------------

--
-- Table structure for table `ideacomments`
--

CREATE TABLE `ideacomments` (
  `commentID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `userID` int(255) NOT NULL,
  `ideaID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideacomments`
--

INSERT INTO `ideacomments` (`commentID`, `comment`, `userID`, `ideaID`) VALUES
(1, 'Footer with solid color background and a contact form, Easily add subscribe and contact forms without any server-side integration', 3, 1),
(2, 'Footer with solid color background and a contact form, Easily add subscribe and contact forms without any server-side integrationEasily add subscribe and contact forms without any server-side integration', 4, 1),
(3, 'wfwfw', 3, 2),
(4, 'helloworld', 3, 1),
(6, 'gege', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ideahub`
--

CREATE TABLE `ideahub` (
  `ideaID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `ideaTitle` varchar(255) NOT NULL,
  `ideaDesc` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideahub`
--

INSERT INTO `ideahub` (`ideaID`, `userID`, `ideaTitle`, `ideaDesc`, `date`) VALUES
(2, 3, 'Title2', 'decription1 decription1 decription1decription1 decription1 decription1decription1 decription1 decription1decription1 decription1 decription1', '2018-07-14 00:56:24'),
(3, 3, 'Idea 3', 'gfuywgfyuhwqbfjkbwqjkfbwjekbfgjbgfwggfgResultSet usdr = null;ResultSet usdr = null;ResultSet usdr = null;', '2018-07-14 20:04:46'),
(4, 4, 'Title54', '<% \r\n                            \r\n                if(rs.next()){ %><% \r\n                            \r\n                if(rs.next()){ %><% \r\n                            \r\n                if(rs.next()){ %>', '2018-07-14 20:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `displayName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `displayName`, `address`, `phone`, `email`, `pass`, `userId`, `type`) VALUES
('NSBM', '', '', '', 'nsbm@nsbm.com', 'hellonsbm', 1, ''),
('SLIIT', '', '', '', 'sliit@sliit.com', 'hellosliit', 2, ''),
('NSBM', 'NSBM Green University', 'Pitipana,Homagama', '2222222222', 'nsbm@gmail.com', 'nsbm', 3, 'university'),
('Virtusa', 'Virtusa', 'Colombo', '14313414124', 'virtusa@virtusa.com', 'virtusa', 4, 'organization');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eventcomments`
--
ALTER TABLE `eventcomments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `eventopinion`
--
ALTER TABLE `eventopinion`
  ADD PRIMARY KEY (`eventID`,`userID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `ideacomments`
--
ALTER TABLE `ideacomments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `ideahub`
--
ALTER TABLE `ideahub`
  ADD PRIMARY KEY (`ideaID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eventcomments`
--
ALTER TABLE `eventcomments`
  MODIFY `commentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ideacomments`
--
ALTER TABLE `ideacomments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ideahub`
--
ALTER TABLE `ideahub`
  MODIFY `ideaID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
