-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: qbank
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbms`
--

DROP TABLE IF EXISTS `dbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbms` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `description` varchar(250) DEFAULT NULL,
  `difficulty` int(2) NOT NULL,
  `marks` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbms`
--

LOCK TABLES `dbms` WRITE;
/*!40000 ALTER TABLE `dbms` DISABLE KEYS */;
INSERT INTO `dbms` VALUES (1,'What is foreighn key?How does it influence DML operation?',3,2),(2,'What is data redundancy?Why do we try to remove it?',5,2),(3,'Armstrong\'s Axioms are sound and complete--explain.',9,2),(4,'Differentiate between serial schedule and serializable schedule?',7,3),(5,'Explain 2-phase locking protocol',9,3),(6,'What is the purpose of wait-for graph?',4,3),(7,'Draw a state-transition diagram showing the states that a transcation goes through during execution.',3,5),(8,'Give the optimized query tree for given query: Display the student-roll,student-name,subject,marks of all students those who secured more than 60 in DBMS subject.',6,5),(9,'Explain wait-die and wound-wait protocol with diagaram.',9,5),(13,'Discuss the three level architecture of database system.',5,5),(14,'What is a trigger?',8,2),(15,'What do you mean by Transitive dependency?',7,2),(16,'Explain Anomalies. ',6,2),(17,'What is write-ahead logging?',10,2),(18,'How DBMS differs from the traditional file system approach?',4,2),(19,'What is an Integrity Constraints? ',1,2),(20,'What is a participation role?',2,2),(21,'What is Multivalue Dependency?',8,2),(22,'What is database management system? What is a data dictionary?',6,2),(23,'Why Concurrency Control is needed?',7,2),(24,'What is a Concurrent schedule? ',9,2),(25,'What is an entity relationship model?',5,2),(26,'What is the advantage of DBMS over file processing system?',5,3),(27,'Explain the process of normalization. ',8,3),(28,'What is the difference between Third Normal Form and BCNF?',10,3),(29,'What do you mean by Log-based recovery? What is cascading rollback?',6,3),(30,'What is a Concurrent schedule? What do we mean by Conflict serializability? ',3,3),(32,'Describe the shadow paging recovery technique.',8,3),(33,'How it shadow paging different from Log based recovery technique?  				',2,3),(34,'Explain the purpose of the check point mechanism.',1,3),(35,'What is Query Optimization?',7,3),(36,'What is meta-data?',6,3),(37,'Discuss the consequences of a bad database design can have?',9,3),(39,'Write down the Read Lock and Write Unlock operation on item A',6,3),(40,'What do you mean by lossless join, and dependency preservation? ',10,3),(41,'Who is a DBA? What are the responsibilities of a DBA?',6,5),(42,'What do you mean by ACID properties? Explain',8,5),(43,'What is time stamping method of concurrency control? Describe with examples. ',7,5),(44,'Explain the purpose of the check point mechanism. How often should checkpoints be performed? ',8,5),(45,'What do you mean by redo and undo? What is write-ahead logging ?',4,5),(46,'What is Query Optimization? Write down the steps for query processing. ',2,5),(47,'What is a candidate key? Is there any difference between a Primary key and a candidate key?',1,5),(48,'What is the referential Integrity? Explain with an example.     ',9,5),(49,'Show how 2PL protocol can ensure a conflict-serializable schedule for the same schedule given in the Q3.',10,5),(50,'What are the metrics we can use to calculate query cost? ',2,5),(51,'Write short note on Data manipulation language (DML).',7,5);
/*!40000 ALTER TABLE `dbms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbms_mcq`
--

DROP TABLE IF EXISTS `dbms_mcq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbms_mcq` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(250) NOT NULL,
  `difficulty` int(2) NOT NULL,
  `marks` int(2) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbms_mcq`
--

LOCK TABLES `dbms_mcq` WRITE;
/*!40000 ALTER TABLE `dbms_mcq` DISABLE KEYS */;
INSERT INTO `dbms_mcq` VALUES (1,' A relational database consists of a collection of________',4,2,'Tables','Fields','Records','Keys','optionA'),(2,' A domain is atomic if elements of the domain are considered to be ____________ units.',7,3,' Different','Indivisible',' Constant',' Divisible','optionB'),(3,' A ________ in a table represents a relationship among a set of values.',1,2,'Column','Key','Row','Entry','optionC'),(4,'The term _______ is used to refer to a row.',2,2,'Attribute','Tuple','Field','Instance','optionB'),(5,'The term attribute refers to a ___________ of a table.',3,2,'Record','Column','Tuple','Key','optionB'),(6,'For each attribute of a relation, there is a set of permitted values, called the ________ of that attribute.',5,2,'Domain','Relation','Set','Schema','optionA'),(7,'Database __________ which is the logical design of the database, and the database _______ which is a snapshot of the data in the database at a given instant in time.',6,2,'Instance, Schema','Relation, Schema','Relation, Domain','Schema,Instance','optionD'),(8,'The tuples of the relations can be of ________ order.',7,2,'Any','Same','Sorted','Constant','optionA'),(9,'Course(course_id,sec_id,semester)  Here the course_id,sec_id and semester are __ and course is a __',8,2,'Relations,Attribute','Attributes,Relation','Tuple,Relation','Tuple,Attributes','optionB'),(10,'Using which language can a user request information from a database ?',9,2,'Query','Relational','Structural','Compiler','optionA'),(11,'Which one of the following is a procedural language ?',10,2,'Domain relational calculus','Tuple relational calculus','Relational algebra','Query language','optionC'),(12,'Student(ID, name, dept name, tot_cred)\r\nIn this query which attribute form the primary key?',5,2,'Name','Dept','Tot_cred','ID','optionD'),(14,'The result which operation contains all pairs of tuples from the two relations, regardless of whether their attribute values match.',7,2,'Join','Cartesian product','Intersection','Set difference','optionB'),(15,'The _______operation performs a set union of two similarly structured tables',8,2,'Union','Join','Product','Intersect','optionA'),(16,'The most commonly used operation in relational algebra for projecting a set of tuple from a relation is',4,2,'Join','Projection','Select','Union','optionC'),(17,'The_____ operation allows the combining of two relations by merging pairs of tuples, one from each relation, into a single tuple.',6,2,'Select','Join','Union','Intersection','optionB'),(18,'The _______ operator takes the results of two queries and returns only rows that appear in both result sets.',1,3,'Union','Intersect','Difference','Projection','optionB'),(19,'A ________ is a pictorial depiction of the schema of a database that shows the relations in the database, their attributes, and primary keys and foreign keys.',2,3,'Schema diagram','Relational algebra','Database diagram','Schema flow','optionA'),(20,'The _________ provides a set of operations that take one or more relations as input and return a relation as an output.',3,3,'Schematic representation','Relational algebra','Scheme diagram','Relation flow','optionB'),(21,'Which one of the following is used to define the structure of the relation ,deleting relations and relating schemas ?',4,3,'DML(Data Manipulation Langauge)','DDL(Data Definition Langauge)','Query','Relational Schema','optionB'),(22,'Which one of the following provides the ability to query information from the database and to insert tuples into, delete tuples from, and modify tuples in the database ?',5,3,'DML(Data Manipulation Langauge)','DDL(Data Definition Langauge)','Query','Relational Schema','optionA'),(24,'Create table employee (name varchar ,id integer)',6,3,'DML','DDL','View','Integrity constraint','optionB'),(25,'Select * from employee\r\nWhat type of statement is this?',7,3,'DML','DDL','View','Integrity constraint','optionA'),(26,'The basic data type char(n) is a _____ length character string and varchar(n) is _____ length character.',8,3,'Fixed, equal','Equal, variable','Fixed, variable','Variable, equal','optionC'),(27,'To remove a relation from an SQL database, we use the ______ command',9,3,'Delete','Purge','Remove','Drop table','optionD'),(28,'Delete from r; r  relation\r\nThis command performs which of the following action ?',10,3,'Remove relation','Clear relation entries','Delete fields','Delete rows','optionB'),(29,'Insert into instructor values (10211, Smith, Biology, 66000);\r\nWhat type of statement is this ?',4,3,'Query','DML','Relational','DDL','optionB'),(30,'Updates that violate __________ are disallowed.',5,3,'Integrity constraints','Transaction control','Authorization','DDL constraints','optionA'),(31,' A _________ consists of a sequence of query and/or update statements.',6,3,'Transaction','Commit','Rollback','Flashback','optionA'),(32,'Which of the following makes the transaction permanent in the database ?',8,3,'View','Commit','Rollback','Flashback','optionB'),(33,'In order to undo the work of transaction after last commit which one should be used ?',1,5,'View','Commit','Rollback','Flashback','optionC'),(34,'TRANSACTION.....\r\nCommit;\r\nROLLBACK;\r\nWhat does Rollback do?',2,5,'Undoes the transactions before commit','Clears all transactions','Redoes the transactions before commit','No action','optionD'),(35,'In case of any shut down during transaction before commit which of the following statement is done automatically?',3,5,'View','Commit','Rollback','Flashback','optionC'),(36,'In order to maintain the consistency during transactions database provides',4,5,'Commit','Atomic','Flashback','Retain','optionB'),(37,'Transaction processing is associated with everything below except',5,5,'Conforming a action or triggering a response','Producing detail summary or exception report','Recording a business activity','Maintaining a data','optionA'),(38,'A transaction completes its execution is said to be',6,5,'Committed','Aborted','Rolled back','Failed','optionA'),(39,'Which of the following is used to get back all the transactions back after rollback ?',7,5,'Commit','Rollback','Flashback','Redo','optionC'),(40,'______ will undo all statements up to commit?',8,5,'Transaction','Flashback','Rollback','Abort','optionC'),(41,'Select ________ dept_name\r\nfrom instructor;',9,5,'All','From','Distinct','Name','optionC'),(42,'The ______ clause allows us to select only those rows in the result relation of the ____ clause that satisfy a specified predicate.',10,5,'Where, from','From, select','Select, from','From, where','optionA'),(43,' Insert into employee _____ (1002,Joey,2000);\r\nIn the given query which of the keyword has to be inserted ?',4,5,'Table','Values','Relation','Field','optionB'),(44,'Select * from employee where salary>10000 and dept_id=101;\r\nWhich of the following fields are displayed as output?',5,5,'Salary, dept_id','Employee','Salary','All the field of employee relation','optionD'),(45,'To include integrity constraint in a existing relation use :',6,5,'Create table\r\n','Modify table','Alter table','Drop table','optionC'),(46,'Which of the following is not a integrity constraint ?',7,5,'Not null','Positive','Unique','Check predicate','optionB'),(47,'Foreign key is the one in which the ________ of one relation is referenced in another relation.',8,5,'Foreign key','Primary key','References','Check constraint','optionB');
/*!40000 ALTER TABLE `dbms_mcq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `question` varchar(100) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('Who invented Aeroplane?','Biro Brothers','Waterman Brothers','Bicc Brothers','Write Brothers','optionD'),('Who invented Ballpoint Pen?','Biro Brothers','Waterman Brothers','Bicc Brothers','Write Brothers','optionA');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-09  0:38:48
