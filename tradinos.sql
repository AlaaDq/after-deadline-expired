-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 10:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradinos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Gerardo Rice', 'MidnightBlue', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(2, 'Jacinto Rau PhD', 'Gainsboro', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(3, 'Mr. Jameson Lehner II', 'Silver', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(4, 'Lucas Sporer Jr.', 'Moccasin', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(5, 'Magdalena Borer', 'Green', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(6, 'Dr. Hillary Cronin Sr.', 'Crimson', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(7, 'Rita Kovacek', 'OliveDrab', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(8, 'Prof. Arianna Tromp', 'MediumTurquoise', '2020-12-10 09:40:32', '2020-12-10 09:40:32'),
(9, 'Mohammed Swift Sr.', 'Cyan', '2020-12-10 09:40:33', '2020-12-10 09:40:33'),
(10, 'Olen Ward', 'DarkBlue', '2020-12-10 09:40:33', '2020-12-10 09:40:33'),
(11, 'Hosea Kuhlman', 'Lavender', '2020-12-10 09:40:33', '2020-12-10 09:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `category_task`
--

CREATE TABLE `category_task` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_task`
--

INSERT INTO `category_task` (`category_id`, `task_id`) VALUES
(1, 2),
(2, 7),
(3, 5),
(4, 6),
(4, 8),
(5, 1),
(5, 4),
(6, 3),
(6, 5),
(6, 9),
(7, 2),
(7, 9),
(8, 7),
(9, 3),
(10, 6),
(10, 10),
(10, 11),
(11, 4),
(11, 8),
(11, 10),
(11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"uuid\":\"c5bf76b5-6d6e-4421-857e-4027186d6cd0\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:5:\\\"email\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:8:\\\"my title\\\";s:4:\\\"body\\\";s:10:\\\"my content\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"alaadq70@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"alaadq70@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor b63sm873688qke.21 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor b63sm873688qke.21 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b63sm873688qke.21 - gsmtp\r\n\". in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2020-12-10 17:14:25'),
(2, 'database', 'default', '{\"uuid\":\"20cae692-7a05-434b-bd0c-8dd6f7f39cf4\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:5:\\\"email\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:8:\\\"my title\\\";s:4:\\\"body\\\";s:10:\\\"my content\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"alaadq70@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"alaadq70@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor u5sm4021844qka.106 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor u5sm4021844qka.106 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials u5sm4021844qka.106 - gsmtp\r\n\". in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2020-12-10 17:16:43'),
(3, 'database', 'default', '{\"uuid\":\"1624734e-1089-43e1-86d4-880ed898790c\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:5:\\\"email\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:8:\\\"my title\\\";s:4:\\\"body\\\";s:10:\\\"my content\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"alaadq70@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"alaadq70@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor 195sm4011155qke.108 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor 195sm4011155qke.108 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 195sm4011155qke.108 - gsmtp\r\n\". in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2020-12-10 17:18:18'),
(4, 'database', 'default', '{\"uuid\":\"b0a4feb9-5cf8-4848-92e1-93806a59c924\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:5:\\\"email\\\";s:18:\\\"alaadq70@gmail.com\\\";s:7:\\\"subject\\\";s:8:\\\"my title\\\";s:4:\\\"body\\\";s:10:\\\"my content\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:18:\\\"alaadq70@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"alaadq70@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor q32sm3909032qtc.65 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"534\", with message \"534-5.7.9 Application-specific password required. Learn more at\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor q32sm3909032qtc.65 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials q32sm3909032qtc.65 - gsmtp\r\n\". in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2020-12-10 17:19:43');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, 'database', 'default', '{\"uuid\":\"d3a6a09a-edf1-4d76-ba13-41c2cccd9151\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:5:\\\"email\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:8:\\\"my title\\\";s:4:\\\"body\\\";s:10:\\\"my content\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [alaadq70@gmail.com ] does not comply with RFC 2822, 3.6.2. in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'alaadq70@gmail....\')\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(Array, \'the boss\')\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(346): Illuminate\\Mail\\Message->from(\'alaadq70@gmail....\', \'the boss\')\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(172): Illuminate\\Mail\\Mailable->buildFrom(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}(Object(Illuminate\\Mail\\Message))\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-12-10 17:20:17'),
(6, 'database', 'default', '{\"uuid\":\"68fbbf85-e793-404c-bddd-d7e8077e536c\",\"displayName\":\"App\\\\Jobs\\\\ProcessMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessMail\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ProcessMail\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:6:\\\"mailto\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:12:\\\"task expired\\\";s:4:\\\"body\\\";s:4:\\\"task\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: No such host is known.  in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\xampp2\\\\htdoc...\', 264, Array)\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #721)\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\taskExpiredMail))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(122): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\taskExpiredMail))\n#13 C:\\xampp2\\htdocs\\tradinos\\app\\Jobs\\ProcessMail.php(38): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\taskExpiredMail))\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ProcessMail->handle()\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessMail))\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessMail))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessMail), false)\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessMail))\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessMail))\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessMail))\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-12-10 17:38:13'),
(7, 'database', 'default', '{\"uuid\":\"6b54b277-86d4-4b74-918e-75f665cafd0a\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:6:\\\"mailto\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:12:\\\"task expired\\\";s:4:\\\"body\\\";s:4:\\\"task\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: No such host is known.  in C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:261\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\xampp2\\\\htdoc...\', 264, Array)\n#1 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(264): stream_socket_client(\'ssl://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #783)\n#2 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\xampp2\\htdocs\\tradinos\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'emails.taskExpi...\', Array, Object(Closure))\n#8 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#21 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp2\\htdocs\\tradinos\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp2\\htdocs\\tradinos\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp2\\htdocs\\tradinos\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2020-12-10 18:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(12, 'default', '{\"uuid\":\"a7622e1b-8878-48bd-b5cd-d30677cfad3b\",\"displayName\":\"App\\\\Mail\\\\taskExpiredMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:24:\\\"App\\\\Mail\\\\taskExpiredMail\\\":26:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:6:\\\"mailto\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:12:\\\"task expired\\\";s:4:\\\"body\\\";s:4:\\\"task\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1608235793, 1607630993),
(13, 'default', '{\"uuid\":\"f6a7ddbf-f936-4a37-9f40-4080f0bd76ad\",\"displayName\":\"App\\\\Jobs\\\\ProcessMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessMail\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ProcessMail\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:6:\\\"mailto\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:12:\\\"task expired\\\";s:4:\\\"body\\\";s:4:\\\"task\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2020-12-12 08:37:23.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:11:\\\"asia\\/Beirut\\\";}s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1607755043, 1607668644),
(14, 'default', '{\"uuid\":\"228516bf-dbaf-4d23-980a-6b10dd57b948\",\"displayName\":\"App\\\\Jobs\\\\ProcessMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessMail\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\ProcessMail\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:6:\\\"mailto\\\";s:31:\\\"alaa.eddin.ksibati.97@gmail.com\\\";s:7:\\\"subject\\\";s:12:\\\"task expired\\\";s:4:\\\"body\\\";s:4:\\\"task\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2020-12-13 08:42:21.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:11:\\\"asia\\/Beirut\\\";}s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1607841741, 1607668942);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(111, '2014_10_12_000000_create_users_table', 1),
(112, '2014_10_12_100000_create_password_resets_table', 1),
(113, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(114, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(115, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(116, '2016_06_01_000004_create_oauth_clients_table', 1),
(117, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(118, '2019_08_19_000000_create_failed_jobs_table', 1),
(119, '2020_12_09_112750_create_tasks_table', 1),
(120, '2020_12_09_112859_create_categories_table', 1),
(121, '2020_12_09_113151_create_sub_tasks_table', 1),
(122, '2020_12_10_112435_category_task', 1),
(123, '2020_12_10_165743_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('032d18a2763fa44866622caed89238da1b691bc3f30716708180da72481cd31b938fb1746529b03e', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-11 09:09:24', '2020-12-11 09:09:24', '2020-12-11 11:49:23'),
('0984b04b0110365c165f47db45c2d2d8e13a7df2d14b8d80dbfc6993bc2e5e3455c76d017d2aefe8', 9, 1, 'Personal Access Token', '[]', 0, '2020-12-10 12:20:27', '2020-12-10 12:20:27', '2020-12-10 14:24:25'),
('0e7671f2a1d23f040953c1f48bfff8ed7b1e29cfb03c1719782043470271ea1669c1a84692d2d11c', 8, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:48:45', '2020-12-10 11:48:45', '2020-12-10 13:52:44'),
('1d5fc97c6e9a80a416f557eba603a5a301ea79ff6cfe44107bb44564b2494cf2ae1548f95c9eeeab', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-11 06:36:32', '2020-12-11 06:36:32', '2020-12-11 09:16:29'),
('227307a960ef9f7862e557985db27f53a77379b6838f694cec4c6f580d729c9773860ea8a133e318', 5, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:31:26', '2020-12-10 11:31:26', '2020-12-10 13:35:26'),
('2b5204450644a55798dba348c54465400bbfc502e33f1b4affcf77d13e5f781c33d4cc2321fbe111', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-10 21:24:15', '2020-12-10 21:24:15', '2020-12-11 00:04:10'),
('40576e763eabbc6f2f3fca730a1ed63de53f05b090329da25d884640aa13fad6f227c42ddfed43ec', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-10 19:48:59', '2020-12-10 19:48:59', '2020-12-10 22:28:59'),
('45b7b82c02ecd93ec8c1bc6e70a065a0fd0e2dcdcd766dd7034a6b70d9ccc475c0d3d4162cebebcf', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-11 08:28:30', '2020-12-11 08:28:30', '2020-12-11 11:08:27'),
('4f24460328d92d1381536d3e79acc6ff1254e0214c3db0ecccd01397afa874331d494f5948220a26', 9, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:53:40', '2020-12-10 11:53:40', '2020-12-10 13:57:40'),
('78f163321c4e732ae33ff0c87e9d133cd1501f7632809d61c06546058b279972e328b4eb25dd1726', 4, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:28:58', '2020-12-10 11:28:58', '2020-12-10 13:32:58'),
('90ce6b56f1acfac20ab5aed63f611711fd70a991052737b0304469af109e10e24912f7b84a3e84ce', 7, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:46:39', '2020-12-10 11:46:39', '2020-12-10 13:50:39'),
('9c303e0b4d77ef00aa5f946a6d15987ec7eb3f5415be09121d1a0d6c820a81d52c98638f96c39702', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-10 22:33:10', '2020-12-10 22:33:10', '2020-12-11 01:13:09'),
('c0b84ad3d3304c4c1374ff2bf6a86a8ff2d8733fad8a43e6a4ec2459dd9e6792fe785599feb3b89c', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:02:49', '2020-12-10 11:02:49', '2020-12-10 13:06:48'),
('d9cb1c7265e6f67d9fe3fa5aff383520cbc50cd4424c5b4877cc3b35bc39c637a0854cd20454bccf', 6, 1, 'Personal Access Token', '[]', 0, '2020-12-10 11:39:28', '2020-12-10 11:39:28', '2020-12-10 13:43:27'),
('e587d96c6f887f355f1fb818f380b259fddbb9b9248abb059ee52afafce3c3fc41f1f6e089742f97', 2, 1, 'Personal Access Token', '[]', 0, '2020-12-10 19:33:47', '2020-12-10 19:33:47', '2020-12-10 21:37:45'),
('ec8cb402032686e16f4eb858a1e00bf191813b13d5f325b1369849b8a9bc27ed33d27a457e4a6f49', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-11 06:53:01', '2020-12-11 06:53:01', '2020-12-11 09:33:01'),
('f062b0bec2d3f1f97227528859849f5c3c001434177336ac3e41dcc0f23251dc8f2efa6e91e12440', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-10 23:34:35', '2020-12-10 23:34:35', '2020-12-11 02:14:34'),
('f2b4dfa49b6d29c94f1962bcb61baec1905119bf4386552f6c467558580f8d942ffded9de136b04b', 3, 1, 'Personal Access Token', '[]', 0, '2020-12-10 19:42:08', '2020-12-10 19:42:08', '2020-12-10 21:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ng-client', 'hApQwAjTt5umSSNDoAhGkmr2RhtpnUjjFxtrDknz', NULL, 'http://localhost', 1, 0, 0, '2020-12-10 11:00:06', '2020-12-10 11:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-12-10 11:00:06', '2020-12-10 11:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alaadq70@gmail.com', '$2y$10$VprsDE8sJaYLII7t5YpLz.Hh821dKN6uqm5yoPv59knEY3EwSlQT6', '2020-12-10 16:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tasks`
--

CREATE TABLE `sub_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_tasks`
--

INSERT INTO `sub_tasks` (`id`, `content`, `task_id`, `created_at`, `updated_at`) VALUES
(1, 'Recusandae sint repudiandae sapiente tempora aut sit.', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(2, 'Aut suscipit aliquid est quia esse.', 2, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(3, 'Repellendus porro hic sapiente officia consequatur in cumque omnis.', 3, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(4, 'Assumenda nesciunt tempore repellat repudiandae veritatis eos architecto.', 4, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(5, 'Exercitationem repellendus hic et nisi.', 5, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(6, 'Accusantium voluptatem placeat optio corporis possimus id aut illo.', 6, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(7, 'Quaerat velit ut voluptas aut.', 7, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(8, 'Iure aut est quia.', 8, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(9, 'Autem et aut tempore.', 9, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(10, 'Dicta recusandae laborum ut ea.', 10, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(11, 'Quia beatae dolorem eos rerum error odio debitis.', 11, '2020-12-10 09:40:16', '2020-12-10 09:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `end_flag` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `description`, `deadline`, `end_flag`, `created_at`, `updated_at`) VALUES
(1, 'Quasi fuga quia iste qui sunt.', '2020-12-10', 1, '2020-12-10 09:40:15', '2020-12-10 09:40:15'),
(2, 'Debitis tempora dignissimos et maiores voluptas.', '2020-12-10', 1, '2020-12-10 09:40:15', '2020-12-10 09:40:15'),
(3, 'Quae exercitationem beatae esse est corporis quo quia.', '2020-12-10', 0, '2020-12-10 09:40:15', '2020-12-10 09:40:15'),
(4, 'Consequuntur sint vero iusto aut et minus.', '2020-12-10', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(5, 'Expedita sequi dolores quia.', '2020-12-10', 0, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(6, 'Adipisci sunt in nisi id tenetur.', '2020-12-10', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(7, 'Vel velit tempora laborum dicta architecto qui quasi illum.', '2020-12-10', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(8, 'Impedit nostrum maxime ratione mollitia necessitatibus.', '2020-12-10', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(9, 'Atque et modi dolores velit.', '2020-12-10', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(10, 'Aut libero quia ut.', '2020-12-10', 1, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(11, 'Eum quis repudiandae est commodi dolores maxime.', '2020-12-10', 0, '2020-12-10 09:40:16', '2020-12-10 09:40:16'),
(12, 'asd', '2020-12-10', 0, '2020-12-10 19:49:14', '2020-12-10 20:07:21'),
(13, 'adcadsc', '2020-12-17', 0, '2020-12-17 22:00:00', '2020-12-10 20:09:53'),
(14, 'aaa', '2020-12-12', 0, '2020-12-11 06:36:51', '2020-12-11 06:37:25'),
(15, 'aaa', '2020-12-13', 0, '2020-12-11 06:36:51', '2020-12-11 06:42:22'),
(16, 'aaa', '2020-12-11', 1, '2020-12-11 06:36:51', '2020-12-11 06:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'test1@gmail.com', NULL, '$2y$10$v818KzZaqjhWBBzi8gI2M.ritczZ7gQ/Iy2Ez15z9mHMJV.T3Wsti', NULL, '2020-12-10 10:56:19', '2020-12-10 10:56:19'),
(2, 'test2', 'test2@gmail.com', NULL, '$2y$10$1ARTzygwA6puIeUx/Gm51uz82N21k/qP0meI1Uur32D9em4s7Xy5m', NULL, '2020-12-10 10:57:29', '2020-12-10 10:57:29'),
(3, 'test3', 'test3@gmail.com', NULL, '$2y$10$6dEu3UsR2LRguwoiSx0NgONwmYBzNo424M.XPefIj1hy/JZ9XO0L2', NULL, '2020-12-10 11:02:48', '2020-12-10 11:02:48'),
(4, 'test4', 'test4@gmail.com', NULL, '$2y$10$31THs5A6fvQUe.ADuRpMreIqZjljx6lygiN8kf.7j.tOubTfjPXVO', NULL, '2020-12-10 11:28:58', '2020-12-10 11:28:58'),
(5, 'test5', 'test5@gmail.com', NULL, '$2y$10$sRo3DVxX0dir8JAGmg3.CuDudoFZ1mektzxQusF9BXKjgiL68ARU2', NULL, '2020-12-10 11:31:26', '2020-12-10 11:31:26'),
(6, 'test6', 'test6@gmail.com', NULL, '$2y$10$HdkAcjbPeAyNjWl3V2GIV.eARvHvVyxpX7/ltz7j7qgvSyX2IMAMi', NULL, '2020-12-10 11:39:27', '2020-12-10 11:39:27'),
(7, 'test7', 'test7@gmail.com', NULL, '$2y$10$VYHXz8JXEFmHcFh5AcTCwOteVdPcZFizHJWmI62EZ9htbYHI.eYc.', NULL, '2020-12-10 11:46:39', '2020-12-10 11:46:39'),
(8, 'test9', 'test9@gmail.com', NULL, '$2y$10$L7WFIe1H17u0mPU2BDxLp.X8sFjLQVtNxkFV6H2SdUHfJdma0qsLG', NULL, '2020-12-10 11:48:44', '2020-12-10 11:48:44'),
(9, 'test10', 'test10@gmail.com', NULL, '$2y$10$FkBgi7sJQgXU.djPjGfbX.a7n0HhEGmOIgTVHNfNK1E.e2drhjLiS', NULL, '2020-12-10 11:53:40', '2020-12-10 11:53:40'),
(10, 'alaa', 'alaadq70@gmail.com', NULL, '$2y$10$h5U9fxgNlLLw4dj0HXKnnOwjetziZcRjFAJBFr6iXk8YWjeyHmMH6', NULL, '2020-12-10 16:30:44', '2020-12-10 16:30:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_task`
--
ALTER TABLE `category_task`
  ADD PRIMARY KEY (`category_id`,`task_id`),
  ADD KEY `category_task_task_id_foreign` (`task_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sub_tasks`
--
ALTER TABLE `sub_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_tasks_task_id_foreign` (`task_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_tasks`
--
ALTER TABLE `sub_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_task`
--
ALTER TABLE `category_task`
  ADD CONSTRAINT `category_task_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_task_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_tasks`
--
ALTER TABLE `sub_tasks`
  ADD CONSTRAINT `sub_tasks_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
