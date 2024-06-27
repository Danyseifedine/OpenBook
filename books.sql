-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2024 at 05:55 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_date` date NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_arabic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_arabic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_arabic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int NOT NULL,
  `world_rate` tinyint NOT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `publication_date`, `cover_image`, `description`, `description_arabic`, `category`, `category_arabic`, `language`, `language_arabic`, `pages`, `world_rate`, `pdf`, `download_count`, `created_at`, `updated_at`) VALUES
(2, 'Celestial Magic', 'Emma L. Adams', '2017-01-01', '16914023035694.png', '\"Celestial Magic\" by Emma L. Adams is an engaging urban fantasy novel that immerses readers in a world of magic and intrigue. Set in a realm where celestial beings walk among humans, the story follows a young woman\'s discovery of her own magical abilities. As she navigates this newfound world, she uncovers secrets that challenge her perception of reality. With a blend of enchanting elements and hidden truths, the novel weaves a captivating tale of self-discovery, celestial forces, and the uncharted territories of her destiny.', 'رواية فانتازيا حضرية جذابة تغمر القرّاء في عالم من السحر والغموض. تدور في عالم حيث تتجول الكائنات السماوية بين البشر، تتبع القصة اكتشاف امرأة شابة لقدراتها السحرية الخاصة. أثناء تنقلها في هذا العالم الجديد، تكتشف أسرارًا تتحدى تصوّرها للواقع. بمزيج من العناصر الساحرة والحقائق المخفية، تنسج الرواية قصة جاذبة عن اكتشاف الذات، والقوى السماوية، والمناطق غير المستكشفة من مصيرها.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 226, 45, '16914023033417.pdf', NULL, '2023-08-07 03:58:23', '2023-08-07 03:58:23'),
(3, 'Adamant', 'Emma L. Adams', '2015-11-11', '16914025126366.png', '\"Adamant\" by Emma L. Adams is a gripping urban fantasy novel that transports readers into a world where magic and danger collide. Set in a realm of mythical creatures and hidden powers, the story follows a young woman\'s journey as she uncovers her own magical abilities and unravels the mysteries of her heritage. With action, intrigue, and a touch of romance, the novel weaves a tale of self-discovery, unexpected alliances, and the battle between darkness and light.', 'رواية فانتازيا حضرية مثيرة تنقل القرّاء إلى عالم حيث يتلاقى السحر والخطر. تدور في عالم مليء بالكائنات الأسطورية والقوى المخفية، تتبع القصة رحلة امرأة شابة وهي تكتشف قدراتها السحرية الخاصة وتكشف أسرار أصولها. مع الإثارة والتشويق ولمسة من الرومانسية، تنسج الرواية', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 258, 40, '16914025126516.pdf', NULL, '2023-08-07 04:01:52', '2023-08-07 04:01:52'),
(4, 'Children of Avalon', 'S.E. Wright', '2016-01-01', '16914026902513.png', '\"Children of Avalon\" by S.E. Wright is a captivating fantasy novel that transports readers to the mystical realm of Avalon. Set against a backdrop of ancient legends and magical beings, the story follows a group of young heroes on a quest to protect their land from a looming threat. With elements of courage, friendship, and destiny, the novel weaves a tale of epic proportions. As the characters navigate challenges and forge unbreakable bonds, they uncover their own hidden powers and embrace their roles as protectors of Avalon.', 'رواية خيالية جذابة تنقل القرّاء إلى عالم سحري من آفالون. تدور القصة ضد خلفية من الأساطير القديمة والكائنات السحرية، وتتبع مجموعة من الأبطال الشبان في مهمة لحماية أرضهم من تهديد قادم. مع عناصر الشجاعة والصداقة والمصير، تنسج الرواية حكاية ذات أبعاد ملحمية. أثناء التنقل في التحديات وتكوين روابط لا يمكن كسرها، يكتشف الشخصيات قوىهم الخفية الخاصة ويتقبلون دورهم كحماة لآفالون.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 188, 45, '16914026909715.pdf', NULL, '2023-08-07 04:04:50', '2023-08-07 04:04:50'),
(5, 'The Dark Tetrad', 'A.P. Rawls', '2021-01-01', '16914032098615.png', '\"The Dark Tetrad\" by A.P. Rawls is a riveting psychological thriller that delves into the intricacies of the human mind. Set in a world shrouded in mystery and intrigue, the story follows characters entangled in a web of secrets, manipulation, and concealed motives. As the layers of deception unravel, the true nature of the dark tetrad - narcissism, Machiavellianism, psychopathy, and sadism - is unveiled. With chilling twists and a sense of unease, the novel challenges perceptions and explores the darkness that can reside within us all.', 'رواية إثارة نفسية مثيرة تغوص في تفاصيل العقل البشري. تدور القصة في عالم مليء بالغموض والتشويق، حيث تتبع الشخصيات المتورطة في شبكة من الأسرار والتلاعب والدوافع المخفية. مع كشف الطبقات من الخداع، يتم الكشف عن الطبيعة الحقيقية للرباعية المظلمة - النرجسية والمكيافيلية والسيكوباتيا والسادية. مع تطورات مرعبة وشعور بعدم الارتياح، تتحدى الرواية التصورات وتستكشف الظلام الذي قد يكمن داخلنا جميعًا.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 241, 40, '16914032099145.pdf', NULL, '2023-08-07 04:13:29', '2023-08-07 04:13:29'),
(6, 'Infinity: The Fifth Bride of Pharaoh', 'Catalina DuBois', '2021-01-01', '16914048651647.png', '\"Infinity: The Fifth Bride of Pharaoh\" by Catalina DuBois is an enthralling historical romance that transports readers to the ancient world of Egypt. Set against the backdrop of royalty and intrigue, the story follows the journey of a young woman who becomes the unexpected fifth bride of Pharaoh. As she navigates the complexities of palace life, she discovers secrets that intertwine her fate with the destiny of the kingdom. With vivid descriptions and heartfelt emotions, the novel explores love, loyalty, and the profound impact of choices made in the shadows of power.', 'رواية رومانسية تاريخية مثيرة تنقل القرّاء إلى عالم مصر القديمة. تدور ضد خلفية من العائلات الحاكمة والتداول، تتبع القصة رحلة امرأة شابة تصبح العروس الخامسة غير المتوقعة للفرعون. أثناء تنقلها في تعقيدات حياة القصر، تكتشف أسرارًا تربط بين مصيرها ومصير المملكة. بوصفات واضحة وعواطف مؤثرة، تستكشف الرواية الحب والولاء، وتأثير القوى الصادرة عن الخيارات المُتخذة في ظلال القوة.', 'History', 'تاريخ', 'English', 'الإنجليزية', 121, 45, '16914048659762.pdf', NULL, '2023-08-07 04:41:05', '2023-08-07 04:41:05'),
(7, 'High Plains Holiday', 'Simone Beaudelaire', '2018-01-01', '16914051494083.png', '\"High Plains Holiday\" by Simone Beaudelaire is a heartwarming Western romance that transports readers to the rugged landscapes of the high plains. Set against the backdrop of untamed nature and a small town, the story follows the unexpected romance between two individuals from different worlds. As they navigate their differences and the challenges of the frontier, they find solace and love in each other\'s company. With genuine emotions and a touch of adventure, the novel captures the essence of finding unexpected connections in the most unlikely of places.', 'قصة رومانسية غربية دافئة تنقل القرّاء إلى مناظر الطبيعة الوعرة  في السهول العالية. تدور ضد خلفية طبيعة برية غير مروضة وبلدة صغيرة، تتبع القصة الرومانسية غير المتوقعة بين شخصين من عوالم مختلفة. أثناء التنقل في اختلافاتهما وتحديات الحدود، يجدون الراحة والحب في شركة بعضهما. مع عواطف حقيقية ولمسة من المغامرة، تلتقط الرواية جوهر العثور على اتصالات غير متوقعة في أغرب الأماكن.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 147, 45, '16914051492156.pdf', NULL, '2023-08-07 04:45:49', '2023-08-07 04:45:49'),
(8, 'If Not For The Knight', 'Debbie Boek', '2017-01-01', '16914053433013.png', '\"If Not For The Knight\" by Debbie Boek is a captivating historical romance that sweeps readers back in time to a world of chivalry and passion. Set against the backdrop of a bygone era, the story follows the unlikely romance between a courageous knight and a spirited woman. As they navigate the challenges of their society and their hearts\' desires, they find themselves drawn to each other in ways they never expected. With rich historical detail and heartfelt emotions, the novel captures the essence of love and bravery in a time of knights and castles.', 'قصة رومانسية تاريخية جذابة تأخذ القرّاء بالزمن إلى عالم الشهامة والعاطفة. تدور ضد خلفية حقبة زمنية مضت، تتبع القصة الرومانسية غير المتوقعة بين فارس شجاع وامرأة متحمسة. أثناء التنقل في تحديات مجتمعهما ورغبات قلوبهما، يجدون أنفسهما مجذوبين نحو بعضهما بطرق لم يتوقعوها. بتفاصيل تاريخية غنية وعواطف مؤثرة، تلتقط الرواية جوهر الحب والشجاعة في زمن الفرسان والقلاع.', 'History', 'تاريخ', 'English', 'الإنجليزية', 261, 45, '16914053431547.pdf', NULL, '2023-08-07 04:49:03', '2023-08-07 04:49:03'),
(9, 'From Across the Room', 'Gina L. Mulligan', '2020-01-01', '16914055527745.png', '\"From Across the Room\" by Gina L. Mulligan is a captivating historical romance that transports readers to a bygone era. Set against the backdrop of a changing world, the story follows the unexpected romance between two individuals from different walks of life. As they navigate societal expectations and their own desires, their connection deepens. With rich historical detail and heartfelt emotions, the novel captures the essence of love\'s ability to bridge the gaps between social classes and bring two hearts together.', 'قصة رومانسية تاريخية جذابة تنقل القرّاء إلى حقبة زمنية مضت. تدور ضد خلفية عالم يتغير، تتبع القصة الرومانسية غير المتوقعة بين شخصين من خلفيات حياتية مختلفة. أثناء التنقل في توقعات المجتمع ورغباتهم الخاصة، يتعمق ارتباطهما. بتفاصيل تاريخية غنية وعواطف مؤثرة، تلتقط الرواية جوهر قدرة الحب على تجاوز الفوارق بين الطبقات الاجتماعية وجمع قلبين معًا.', 'History', 'تاريخ', 'English', 'الإنجليزية', 154, 45, '16914055525670.pdf', 1, '2023-08-07 04:52:32', '2024-01-08 12:36:24'),
(10, 'Death Magic', 'CS Quinn', '2018-01-01', '1691405848149.png', '\"Death Magic\" by C.S. Quinn is an intriguing historical mystery that immerses readers in a world of intrigue and danger. Set in a tumultuous era, the story follows a character\'s journey as they unravel a complex web of secrets, betrayal, and dark magic. As they navigate treacherous paths, they uncover shocking truths that challenge their understanding of reality. With a blend of historical accuracy and suspense, the novel offers a captivating exploration of the darker aspects of human nature and the mysteries that lie hidden beneath the surface.', 'قصة غموض تاريخي مثير ينغمس القرّاء في عالم من الألغاز والخطر. يُعيد القصة رواية الشخصية خلال فترة مضطربة حيث يقومون بكشف شبكة معقدة من الأسرار والخيانات والسحر المظلم. فيما يخوضون طرقًا خطيرة، يكشفون حقائق صادمة تعيد تشكيل تصوّرهم للواقع. بمزيج من الدقة التاريخية والإثارة، تقدم الرواية استكشافًا جذابًا لجوانب مظلمة من الطبيعة البشرية والأسرار المكمنة تحت السطح.', 'History', 'رومانسية', 'English', 'الإنجليزية', 139, 40, '16914058486287.pdf', NULL, '2023-08-07 04:57:28', '2023-08-07 04:57:28'),
(11, 'The Lamp of Darkness', 'Dave Mason', '2014-01-01', '16914060095613.png', '\"The Lamp of Darkness\" by Dave Mason is a captivating historical novel that transports readers to ancient times. Set against the backdrop of biblical events, the story follows the journey of a young man living in a turbulent era. As he navigates challenges and encounters pivotal moments, he finds himself entwined with the stories of faith and destiny. With rich historical detail and deep themes, the novel offers a unique perspective on the events that shaped humanity\'s spiritual journey.', 'رواية تاريخية جذابة تنقل القرّاء إلى أزمان قديمة. تدور ضد خلفية أحداث دينية، تتبع القصة رحلة شاب يعيش في فترة مضطربة. أثناء التنقل في التحديات ومواجهة لحظات محورية، يجد نفسه متشابكًا مع قصص الإيمان والمصير. بتفاصيل تاريخية غنية ومواضيع عميقة، تقدم الرواية منظورًا فريدًا حول الأحداث التي شكلت رحلة الإنسانية الروحية.', 'History', 'تاريخ', 'English', 'الإنجليزية', 388, 45, '16914060096822.pdf', NULL, '2023-08-07 05:00:09', '2023-08-07 05:00:09'),
(12, 'Mail Order Bride: Westward Winds', 'Linda Bridey', '2014-01-01', '16914062296961.png', '\"Mail Order Bride: Westward Winds\" by Linda Bridey is a captivating historical romance that takes readers on a journey of love and adventure in the Old West. Set against the backdrop of the untamed frontier, the story follows the path of a mail-order bride as she travels west in search of a new life and love. Amid challenges and unexpected twists, she discovers the strength within herself and the potential for a brighter future. With heartfelt emotions and a sense of hope, the novel captures the spirit of forging connections in the midst of adversity.', 'رواية رومانسية تاريخية مثيرة تأخذ القرّاء في رحلة من الحب والمغامرة في الغرب القديم. تدور ضد خلفية الحدود البرية الغير مروضة، تتبع القصة مسار عروس البريد بينما تسافر نحو الغرب بحثًا عن حياة وحب جديدين. وسط التحديات والمفاجآت غير المتوقعة، تكتشف القوة داخل نفسها وإمكانية مستقبل أفضل. بعواطف مؤثرة وشعور بالأمل، تلتقط الرواية روح تكوين الروابط في وسط الصعاب.', 'History', 'تاريخ', 'English', 'الإنجليزية', 173, 45, '16914062298137.pdf', 1, '2023-08-07 05:03:49', '2023-08-07 09:29:14'),
(13, 'A Queen\'s Spy', 'Sam Burnell', '2017-01-01', '16914064397951.png', '\"A Queen\'s Spy\" by Sam Burnell is a captivating historical mystery that transports readers to a world of intrigue and espionage. Set in the court of Queen Elizabeth I, the story follows the journey of a young man who becomes embroiled in political conspiracies and secrets. As he navigates the treacherous paths of power, he discovers the depth of loyalty and the price of his choices. With vivid historical detail and suspenseful twists, the novel offers a thrilling glimpse into a time of hidden agendas and royal intrigue.', 'رواية غموض تاريخي جذاب ينقل القرّاء إلى عالم من التآمر والجاسوسية. تدور في أروقة محكمة الملكة إليزابيث الأولى، تتبع القصة رحلة شاب يتورط في المؤامرات السياسية والأسرار. أثناء التنقل في طرق القوة الخطيرة، يكتشف عمق الولاء وثمن اختياراته. بتفاصيل تاريخية واقعية ومفارقات مشوقة، تقدم الرواية نظرة مثيرة إلى زمن يعج بالأجندات الخفية والمؤامرات الملكية.', 'History', 'تاريخ', 'English', 'الإنجليزية', 328, 45, '16914064391814.pdf', NULL, '2023-08-07 05:07:19', '2023-08-07 05:07:19'),
(14, 'Russian Roulette', 'May Freighter', '2016-01-01', '16914068473306.png', '\"Russian Roulette\" by May Freighter is a gripping paranormal mystery that takes readers on a journey into the world of the supernatural. Set against the backdrop of a mysterious and dangerous underworld, the story follows a character who becomes entangled in a web of secrets, magic, and intrigue. As they navigate the shadows, they uncover shocking truths that challenge their perception of reality. With a blend of supernatural elements and suspense, the novel offers a captivating exploration of the unknown and the hidden forces that shape our world.', 'رواية غموض خارق يثير الإعجاب يأخذ القرّاء في رحلة إلى عالم خارق. تدور ضد خلفية عالم سفلي غامض وخطير، تتبع القصة شخصية تتشابك في شبكة من الأسرار والسحر والتشويق. أثناء التنقل في الظلال، يكتشفون حقائق صادمة تتحدى تصوّرهم للواقع. بمزيج من العناصر الخارقة والإثارة، تقدم الرواية استكشافًا جذابًا للغموض والقوى الخفية التي تشكل عالمنا.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 328, 40, '16914068475983.pdf', NULL, '2023-08-07 05:14:07', '2023-08-07 05:14:07'),
(15, 'The Black Bag', 'P. H. Solomon', '2014-01-01', '16914070992707.png', '\"The Black Bag\" by P.H. Solomon is an enthralling epic fantasy that delves into a world of magic and adventure. Set in a realm where dark forces and hidden agendas collide, the story follows characters who are drawn into a quest for a powerful artifact. As they journey through treacherous landscapes and face mythical creatures, they must confront their own fears and uncover the mysteries that lie within the black bag. With a blend of magic and high-stakes challenges, the novel offers an immersive exploration of a fantastical realm.', 'رواية ملحمية مثيرة يغوص في عالم السحر والمغامرة. تدور ضد خلفية حيث تتصادم القوى الظلامية والأجندات الخفية، تتبع القصة شخصيات يجذبون إلى سعي للبحث عن قطعة فنية قوية. أثناء رحلتهم عبر مناظر خطرة ومواجهة مخلوقات أسطورية، يجب عليهم مواجهة مخاوفهم الخاصة وكشف الأسرار المكمنة داخل الحقيبة السوداء. بمزيج من السحر والتحديات ذات الرهان العالي، تقدم الرواية استكشافًا متعمقًا لعالم خيالي.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 54, 40, '16914070995146.pdf', NULL, '2023-08-07 05:18:19', '2023-08-07 05:18:19'),
(16, 'Trading Knives', 'P. H. Solomon', '2015-01-01', '16914073472639.png', '\"Trading Knives\" by P.H. Solomon is a captivating epic fantasy that immerses readers in a world of intrigue and conflict. Set in a realm where alliances and betrayals shape destinies, the story follows characters who navigate a complex web of political and magical tensions. As they trade knives both literally and metaphorically, they must uncover truths that challenge their loyalties and reveal the power struggles at play. With a blend of intricate world-building and high-stakes challenges, the novel offers a thrilling exploration of a realm teetering on the edge of chaos.', 'رواية ملحمية جذابة يغوص القرّاء في عالم من التآمر والصراع. تدور ضد خلفية حيث تشكل التحالفات والخيانات مصائر، تتبع القصة شخصيات تجاوزها شبكة معقدة من التوترات السياسية والسحرية. أثناء تداولهم السكاكين حرفيًا ومجازيًا، يجب عليهم كشف الحقائق التي تتحدى ولائاتهم وتكشف عن صراعات القوى المحدثة. بمزيج من بناء عالم معقد وتحديات ذات الرهان العالي، تقدم الرواية استكشافًا مثيرًا لعالم يترنح على حافة الفوضى.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 78, 40, '16914073478375.pdf', NULL, '2023-08-07 05:22:27', '2023-08-07 05:22:27'),
(17, 'The Trials of the Core', 'Michael E. Thies', '2015-01-01', '16914082297218.png', '\"The Trials of the Core\" by Michael E. Thies is an enthralling epic fantasy that plunges readers into a world of magic and challenges. Set in a realm where magical abilities define destinies, the story follows characters who must undergo trials to prove their worthiness. As they navigate dangerous tests and uncover ancient secrets, they realize that the core of their world holds hidden truths and immense power. With a blend of fantastical elements and high-stakes challenges, the novel offers an immersive journey into a realm where courage and determination are put to the ultimate test.', 'رواية خيالية ملحمية مثير يغمر القرّاء في عالم من السحر والتحديات. تدور ضد خلفية حيث تحدد القدرات السحرية المصائر، تتبع القصة شخصيات يجب أن تخضع لمحاكمات لإثبات جدارتها. أثناء التنقل في اختبارات خطيرة وكشف أسرار قديمة، يدركون أن نواة عالمهم تحمل حقائق مخفية وقوة هائلة. بمزيج من العناصر الخيالية والتحديات ذات الرهان العالي، تقدم الرواية رحلة مغامرة في عالم حيث يتم وضع الشجاعة والإصرار في اختبار نهائي.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 461, 40, '16914082294081.pdf', NULL, '2023-08-07 05:37:09', '2023-08-07 05:37:09'),
(18, 'Forever Warriors', 'M.J. Sewall', '2016-01-01', '16914084826958.png', '\"Forever Warriors\" by M.J. Sewall is a captivating young adult fantasy that transports readers to a world of bravery and magic. Set in a realm where battles between light and darkness rage on, the story follows young warriors who are thrust into a quest to save their world. As they face supernatural challenges and confront their own fears, they discover the strength within themselves and the bonds of friendship that guide them. With a blend of fantastical elements and coming-of-age themes, the novel offers an exciting journey of self-discovery and heroism.', 'رواية خيالية شاب مثير ينقل القرّاء إلى عالم شجاعة وسحر. تدور ضد خلفية حيث تدور المعارك بين النور والظلام، تتبع القصة محاربين شبان يُلقى بهم في مهمة لإنقاذ عالمهم. أثناء مواجهتهم لتحديات خارقة ومواجهة مخاوفهم الخاصة، يكتشفون القوة داخل أنفسهم ورباط الصداقة الذي يوجّههم. بمزيج من العناصر الخيالية والمواضيع الشابة، تقدم الرواية رحلة مثيرة لاكتشاف الذات والبطولة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 230, 45, '16914084827715.pdf', NULL, '2023-08-07 05:41:22', '2023-08-07 05:41:22'),
(19, 'Dolor and Shadow', 'Angela B. Chrysler', '2015-01-01', '1691408798804.png', '\"Dolor and Shadow\" by Angela B. Chrysler is a mesmerizing dark fantasy that follows Princess Kallan\'s journey in a world of mystery and magic. Set in a realm where ancient secrets and powerful forces intertwine, the story unfolds as Kallan becomes entangled in a web of intrigue and danger. As she navigates a landscape of darkness and deception, she must confront her own inner demons and the shadows that haunt her. With a blend of rich imagery and intense emotions, the novel offers an immersive journey into the depths of a fantastical realm.', 'رواية خيالية مظلمة ساحر يتبع رحلة الأميرة كالان في عالم من الغموض والسحر. تدور ضد خلفية حيث تتداخل الأسرار القديمة والقوى القوية، تكشف القصة عن كالان وهي تُلقى بنفسها في شبكة من التشويق والخطر. أثناء التنقل في مناظر الظلام والخداع، يجب عليها مواجهة شياطينها الداخلية والظلال التي تطاردها. بمزيج من الصور الغنية والعواطف الشديدة، تقدم الرواية رحلة غامرة إلى أعماق عالم خيالي.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 456, 40, '16914087988042.pdf', NULL, '2023-08-07 05:46:38', '2023-08-07 05:46:38'),
(20, 'Dream of Empty Crowns', 'M.J. Sewall', '2015-01-01', '16914089923842.png', '\"Dream of Empty Crowns\" by M.J. Sewall is an immersive epic fantasy that takes readers on a journey through a world of power struggles and magic. Set in a realm where dynasties clash and destinies intertwine, the story follows characters who must navigate treacherous waters of politics and alliances. As they dream of ruling empty thrones and untangling a web of secrets, they discover that the pursuit of power comes with a high price. With intricate world-building and intense character development, the novel offers an exploration of ambition, sacrifice, and the complexities of leadership.', 'رواية خيالية ملحمية غامر يأخذ القرّاء في رحلة عبر عالم من صراعات القوى والسحر. تدور ضد خلفية حيث تصطدم الأسر ببعضها وتتداخل المصائر، تتبع القصة شخصيات يجب أن تتنقل في مياه خطيرة من السياسة والتحالفات. أثناءما يحلمون بالحكم على عروش فارغة وفك تشابك أسرار، يكتشفون أن السعي وراء السلطة يأتي بثمنٍ باهظ. ببنية عالم معقدة وتطور شخصيات مكثف، تقدم الرواية استكشافًا للطموح، والتضحية، وتعقيدات القيادة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 226, 45, '16914089922425.pdf', 2, '2023-08-07 05:49:52', '2023-10-30 08:03:24'),
(21, 'The Secret of Poppyridge Cove', 'Rimmy London', '2020-01-01', '1691409545854.png', '\"The Secret of Poppyridge Cove\" by Rimmy London is a charming cozy mystery that immerses readers in a world of intrigue and small-town charm. Set in the picturesque Poppyridge Cove, the story follows characters who uncover a hidden mystery that shakes their peaceful community. A hauntingly beautiful seaside mansion, abandoned for decades, holds secrets that have been shrouded in darkness for years. As they dig into the enigma of the mansion and navigate through a labyrinth of clues, they discover that the idyllic surface of their town conceals deeper, more ominous secrets. With a blend of mystery and a touch of nostalgia, the novel offers a delightful exploration of secrets, friendships, and unexpected twists.', 'رواية غموض ساحرة يغمر القرّاء في عالم من التشويق وسحر البلدة الصغيرة. تدور ضد خلفية خليج بوبيريدج الجميل، تتبع القصة شخصيات يكتشفون لغزًا مخفيًا يهز مجتمعهم السلمي. قصر على الشاطئ يبهر بجماله وترك مهجورًا لعقود، يحمل أسرارًا غامضة تغطيها الظلام لسنوات. أثناءما يعبُرون عن غموض القصر ويتنقلون عبر متاهة من الدلائل، يكتشفون أن السطح الساحر لبلدتهم يخفي أسرارًا أعمق وأكثر قسوة. بمزيج من الغموض ولمسة من الحنين، تقدم الرواية استكشافًا ممتعًا للأسرار، والصداقات، والمفاجآت غير المتوقعة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 163, 45, '16914095458811.pdf', NULL, '2023-08-07 05:59:05', '2023-08-07 05:59:05'),
(22, 'Daredevils', 'T.K. Eldridge', '2021-01-01', '16914098836910.png', '\"Daredevils\" by T.K. Eldridge is a captivating mystery that introduces readers to the Hughes Investigations Series. In the prologue, Caela and Ian, new to the world of private investigation, uncover a pattern that shakes their assumptions. Cases that initially appear isolated and random may reveal a hidden connection. As Caela takes daring risks in her pursuit of truth, she soon realizes that the mysteries she unravels might lead to unexpected and regrettable consequences. With intrigue and suspense, the novel delves into the complexities of investigative work and the dangers of chasing after elusive answers.', 'قصة غموض جذابة تقدم القرّاء لسلسلة تحقيقات هيوز. في فصل مقدمي القصة، تكتشف سيلا وإيان، اللذان هما جديدان في مجال التحقيقات الخاصة، نمطًا يهز افتراضاتهم. القضايا التي تبدو في البداية منفصلة وعشوائية قد تكشف عن اتصال مخفي. بينما تتخذ سيلا مخاطر جريئة في سعيها للحقيقة، تدرك قريبًا أن الألغاز التي تكشفها قد تؤدي إلى عواقب غير متوقعة وقابلة للندم. مع الغموض والتشويق، تغوص الرواية في تعقيدات العمل التحقيقي ومخاطر ملاحقة إجابات غامضة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 41, 45, '1691409883476.pdf', 1, '2023-08-07 06:04:43', '2023-10-20 05:15:13'),
(23, 'Jericho', 'T.K. Eldridge', '2020-01-01', '16914102704541.png', '\"Jericho\" by T.K. Eldridge is a gripping science fiction novel that delves into the world of sacrifices and government manipulation. After making the ultimate sacrifice and faking his own death, he finds himself treated as less than human in a secret Facility. Known as Jericho, he and his team are used as government assets, targeting individuals deemed threats. But their next target isn\'t a criminal; it\'s a teenage girl and the woman he loves. Despite their roles, Jericho and his team hold to their morals and honor, even if it means going against orders. In a world where nothing is normal, their journey explores loyalty, rebellion, and the complexities of morality.', 'رواية خيال علمي مثيرة تستكشف عالم التضحيات والتلاعب الحكومي. بعد أن قام بأعظم تضحية وجعلها مزيفة بإعلان وفاته، يجد نفسه معاملاً على أنه أقل من البشر في منشأة سرية. يعرف بجيريكو، هو وفريقه يُستخدمون كأصول حكومية لاستهداف الأفراد المعتبرين تهديدًا. لكن هدفهم التالي ليس إجراميًا؛ إنها فتاة في سن المراهقة وامرأة يحبها. على الرغم من أدوارهم، يحافظ جيريكو وفريقه على أخلاقهم وشرفهم، حتى لو تطلب الأمر العصيان. في عالم لا يعتبر فيه شيء طبيعيًا، تستكشف رحلتهم الولاء والتمرد وتعقيدات الأخلاق.', 'Science-Fiction', 'خيال علمي', 'English', 'الإنجليزية', 184, 45, '16914102706939.pdf', NULL, '2023-08-07 06:11:10', '2023-08-07 06:11:10'),
(24, 'Dead and Buried', 'T.K. Eldridge', '2021-01-01', '16914107477397.png', '\"Dead & Buried\" by T.K. Eldridge presents a gripping supernatural mystery featuring Detectives Kennedy and Donovan. Partners even after Donovan\'s death, Kennedy must solve his murder with an unusual twist - Donovan\'s ghost aids him discreetly. Navigating a world where he converses with thin air and uncovers hidden clues, Kennedy walks a delicate line. Can he maintain his badge, solve the enigma, and keep his sanity intact? A captivating start to the \"Partners in Crime\" series, blending mystery and the supernatural.', 'غموض جذاب يقدم القرّاء لعالم خارق للطبيعة للمحققين كينيدي ودونوفان. شركاء لعدة سنوات، لم ينهِ موت دونوفان شراكتهما. الآن، يتعين على كينيدي حل جريمة قتل دونوفان، ولكن مع لمسة غير متوقعة - شبح شريكه يساعده، على نحو ما. يجب أن يكشف كينيدي عن الغموض مع الحفاظ على مصدر نصائحه سريًا وإخفاء حقيقة أنه يتحدث مع الهواء الخفيف. أثناءما يتنقل في هذه القضية المحيرة، يكافح للحفاظ على شارته وحل الجريمة قبل أن يلتقي بنفس المصير - أن ينتهي مدفونًا أيضًا. تفتتح الرواية سلسلة \"شركاء في الجريمة\"، وتقدم مزيجًا جذابًا من الغموض والعناصر الخارقة للطبيعة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 190, 45, '16914107475159.pdf', 1, '2023-08-07 06:19:07', '2023-08-07 09:43:01'),
(25, 'Becoming Bader', 'T.K. Eldridge', '2022-01-01', '16914108855780.png', '\"Becoming Bader\" by T.K. Eldridge follows the journey of Bader, who puts her dreams of law school on hold after a tragic house fire claims her parents\' lives. She takes over the family bookstore. Five years later, as the world shifts once again, Bader\'s life transforms alongside it. The question arises: Does she possess the strength to embrace the changes? Will she venture beyond her comfort zone and open her heart to risks, uncovering her own truth in the process? This fantasy short story delves into personal growth, courage, and the pursuit of one\'s authentic pat', 'يسلّط الضوء على رحلة بادر التي أجلت أحلامها في الالتحاق بالمدرسة القانونية بعد حادث حريق منزلي مأساوي أودى بحياة والديها. تتولى مسؤولية مكتبة العائلة. بعد خمس سنوات، ومع تغيرات تطرأ على العالم مرة أخرى، يتحوّل حياة بادر بالتوازي مع هذه التغييرات. تطرح الأسئلة: هل لديها ما يلزم؟ هل ستخوض مخاطر بقلبها وتبحث عن حقيقتها؟ تستكشف هذه القصة القصيرة بعنوان تحول بادر النمو الشخصي، الشجاعة، وسعي الإنسان للوصول إلى مساره الأصيل.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 85, 40, '1691410885649.pdf', NULL, '2023-08-07 06:21:25', '2023-08-07 06:21:25'),
(26, 'Induction', 'T.K. Eldridge', '2019-01-01', '16914110413763.png', '\"Induction\" by T.K. Eldridge follows Sidonie and Sinclair Boudreau, the extraordinary offspring of a witch and a shifter. Despite the odds, they\'ve thrived and evaded their family\'s supernatural legacy. When their parents vanish, a cryptic message and an ancient prophecy propel them into a perilous mystery. As they strive to rescue their loved ones, they confront an unknown adversary. The twins must decide how far they\'re willing to go to unravel secrets and confront danger. This fast-paced paranormal mystery promises a riveting ride for fans of the genre.', 'يقدم لنا سيدوني وسينكلير بودرو، وُلِدَا من ساحرة ومحوّل شكل. هذا الوجود غالبًا ما يعتبر مستحيلاً. نجوا وتجنّبوا إرث عائلتهم من شرطة خارقة. لكن اختفاء والديهما يغير كل شيء. رسالة غامضة، نبوءة قديمة، ولغزٌ يجب فكّه لإعادة والديهما يضعان التوأمين في مرمى عدو لم يكونوا يعرفونه. في مواجهة تحديات غير متوقعة، يجب على سيد وسين أن يقررا مدى استعدادهما للذهاب إلى أقصى الحدود لإنقاذ أحبائهما. تقدم هذه الرواية سريعة الإيقاع والغامضة رحلة مثيرة لعشّاق ألغاز الخوارق', 'Mystery', 'غموض', 'English', 'الإنجليزية', 85, 40, '16914110411168.pdf', 1, '2023-08-07 06:24:01', '2023-10-30 04:08:13'),
(27, 'Remembrance', 'T.K. Eldridge', '2019-01-01', '16914114087725.png', '\"Remembrance\" by T.K. Eldridge unravels the life of a protagonist haunted by their mother\'s death. Returning to Muckle Cove, they delve into her murder, unveiling a complex tapestry of ancient magic, modern politics, and spectral encounters. As their mother\'s ghost guides them, buried truths emerge, promising to reshape their present. Yet, danger lurks, and the quest for answers becomes a treacherous journey. This debut installment in a highly acclaimed series seamlessly blends mystery and the supernatural, captivating readers with its spellbinding narrative.', 'قصة مثيرة عن بطل يراوده وفاة والدته منذ طفولته. بعد العودة إلى بلدة مكل كوف، ينطلق في رحلة لكشف حقيقة جريمة قتلها. ومع ذلك، تتجاوز الرحلة التوقعات وتتشابك بين سحر قديم وسياسة حديثة وظهورات أشباح. يشير ظهور أم البطل وأسرار الماضي إلى كشف يمكن أن يغيّر حاضرهما. مع وجود الخطر، يجب عليهما أن يتنقلا عبر طريق خطير لكشف أسرار قد تؤدي إما إلى تحول أو لزوالهما. يمزج هذا الجزء الأول من سلسلة محبوبة بين الغموض وعناصر الخوارق، مدعوًا القرّاء إلى عالم يجمع بين الواقع والخارق للطبيعة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 189, 40, '16914114082225.pdf', 1, '2023-08-07 06:30:08', '2023-10-12 13:47:21'),
(28, 'Emma', 'Jane Austen', '1815-01-01', '16914119012313.png', '\"Emma\" by Jane Austen introduces Emma Woodhouse, described as both beautiful and intelligent. Emma\'s fascination with matchmaking arises from her governess\'s recent marriage. She takes on the task of finding a partner for orphan Harriet Smith, dismissing more suitable matches. As the story unfolds, Emma\'s well-intentioned efforts result in misunderstandings and revelations about love and society. The novel explores class, personal growth, and relationship complexities. Through Emma\'s journey, Austen delivers wit and insight into human emotions and societal norms.', 'قصة مثيرة عن بطل يراوده وفاة والدته منذ طفولته. بعد العودة إلى بلدة مكل كوف، ينطلق في رحلة لكشف حقيقة جريمة قتلها. ومع ذلك، تتجاوز الرحلة التوقعات وتتشابك بين سحر قديم وسياسة حديثة وظهورات أشباح. يشير ظهور أم البطل وأسرار الماضي إلى كشف يمكن أن يغيّر حاضرهما. مع وجود الخطر، يجب عليهما أن يتنقلا عبر طريق خطير لكشف أسرار قد تؤدي إما إلى تحول أو لزوالهما. يمزج هذا الجزء الأول من سلسلة محبوبة بين الغموض وعناصر الخوارق، مدعوًا القرّاء إلى عالم يجمع بين الواقع والخارق للطبيعة.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 381, 40, '16914119017633.pdf', NULL, '2023-08-07 06:38:21', '2023-08-07 06:38:21'),
(29, 'The Unveiling', 'Tamara Leigh', '2013-01-01', '16914121685869.png', '\" The Unveiling\" by Tamara Leigh is a historical romance set in 12th century England. Amid the power struggle for the throne between King Stephen and Duke Henry, alliances shift, betrayals occur, and marriages are arranged. Lady Annyn Bretanne, driven by vengeance for her brother\'s murder, disguises herself as a squire to seek revenge on Wulfrith. However, as she holds his fate, doubt creeps in, and her heart questions their enmity. Renowned knight trainer Baron Wulfrith, who forbids women\'s presence, faces an unexpected challenge when he discovers the squire sent to him is a woman out for revenge. Their encounter tests his faith and mission, adding depth to this captivating romance.', 'يقع أحداثها في إنجلترا في القرن 12 خلال الصراع بين الملك ستيفن ودوق هنري الشاب على العرش. في ظل الحروب المدنية والخصومات الخاصة، تُجلِب الروابط التحالفية التحالفات، والولاءات تُخوَن، والزيجات تُعقَد. تدرب ليدي آنين بريتان على استخدام السيوف لمدة أربع سنوات، مدفوعةً برغبتها في الانتقام لمقتل شقيقها. متنكرةً كسارية، تنطلق لتنفيذ انتقامها من رجل تُعرفه بلقبه فقط، وُلفريث. لكن عندما تجعل مصيره في يديها، تتردَّد إرادتها ويتساءل قلبها ممكن ألا يكون عدوًا على الإطلاق. البارون وُلفريث، المشهور بتدريب الفرسان، لا يسمح بوجود النساء ضمن جدران قصره بسبب التشويش الذي يسببونه. لكن ما لم يكن يتوقعه أبدًا هو أن الشاب الفوضوي المُرسل للتدريب تحت إشرافه هو امرأة تسعى لقتله، ولم يكن يتوقع أن تُختبر كشفته لها إيمانه وتشتت المحارب عن هدفه', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 252, 40, '16914121681398.pdf', NULL, '2023-08-07 06:42:48', '2023-08-07 06:42:48'),
(30, 'Persuasion', 'Jane Austen', '1818-01-01', '16914125051005.png', '\"Persuasion\" by Jane Austen, published posthumously in 1818, narrates the story of Anne Elliot, who eight years ago fell in love with Captain Frederick Wentworth, a naval officer. Her family, dissatisfied with Wentworth\'s lack of fortune, persuaded Anne to end the engagement. Now approaching spinsterhood, Anne encounters Wentworth again as he courts their spirited neighbor, Louisa Musgrove. The novel explores themes of regret, second chances, and societal expectations as Anne navigates her feelings and societal pressures. Austen\'s poignant prose delves into the complexities of love and the consequences of persuasion.', 'قصة آن إيليوت التي وقعت في حب الضابط البحري المتطلع فريدريك وينتوورث قبل ثماني سنوات. عائلة آن عارضت هذا الاختيار. تقنع ليدي راسل، صديقة آن ومعلمتها، آن بفسخ الخطوبة. الآن، وبالقرب من سنوات العزوبية، تواجه آن فريدريك مرة أخرى عندما يتقدم لجارتها النشيطة لويزا ماسجروف. الرواية تستكشف مواضيع الندم والفرص الثانية وتوقعات المجتمعات حيث تجتاز آن مشاعرها والضغوط المجتمعية. بروز أوستن في الكتابة يعبّر عن تعقيدات الحب وآثار الإقناع.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 152, 45, '16914125057359.pdf', NULL, '2023-08-07 06:48:25', '2023-08-07 06:48:25'),
(32, 'The Demon Girl', 'Penelope Fletcher', '2010-01-01', '16914141167662.png', '\"The Demon Girl\" by Penelope Fletcher introduces Rae Wilder, thrust into a world of dark magic, fierce creatures, and ritual sacrifice. Tasked with guarding a potent magical amulet, Rae faces brutality and a fateful choice: remain human and perish, or embrace her birthright and wield uncontrollable magics. The novel delves into her struggle, exploring identity, power, and the consequences of her decisions. As she grapples with her destiny, the story unfolds with twists that challenge her path and reveal the untamed forces within.', 'بينيلوب فليتشر تقدم للقراء راي وايلدر، التي تُلقى في عالم من السحر الداكن، والكائنات الشرسة، والطقوس التضحية. تُكلف بحراسة عقد سحري قوي. تجد نفسها تتعرض للضرب مرارًا وتكرارًا، ومجبرة على اتخاذ قرار: أن تعيش وتموت كإنسانة، أو أن تحتضن ولادتها وتستخدم السحر الذي قد يحوّلها إلى شيء شرير، قوة طبيعية لا يمكن لأي شيء السيطرة عليها.', 'Fantasy', 'خيال علمي', 'English', 'الإنجليزية', 208, 35, '1691414116859.pdf', 1, '2023-08-07 07:15:16', '2023-08-09 11:42:47'),
(33, 'Mademoiselle At Arms', 'Elizabeth Bailey', '2012-01-01', '16914143233436.png', '\"Mademoiselle At Arms\" by Elizabeth Bailey is a traditional historical romance set in the late Georgian era. The story follows Major Gerald Alderley, who is captivated by a pistol-wielding young lady he discovers in a deserted mansion. Intrigued by her unconventional behavior, he delves into her mystery. The girl\'s disguise as a nun and her French accent hint at secrets, but she insists she\'s English. As Gerald relentlessly pursues the truth, tensions rise between them. When danger looms from the villainous émigré Valade, Gerald races against time to protect the spirited and self-sufficient Mademoiselle Melusine, determined to prove her identity and fight her battles.', 'رواية رومانسية تاريخية تقع أحداثها في العصر الجورجي المتأخر. تتبع القصة الكبير جيرالد ألدرلي الذي ينبهر بالسيدة الشابة التي تحمل مسدسًا ويكتشفها في قصر مهجور. يثير سلوكها غير التقليدي فضوله، ويبدأ في فحص لغزها. تنكشف الفتاة بزي الراهبة ولهجتها الفرنسية تلميحًا للأسرار، لكنها تصر على أنها إنجليزية. مع متابعة جيرالد للحقيقة بلا هوادة، تتصاعد التوترات بينهما. وعندما يهدد خطر من الفارين الشرير فالاد، يتسابق جيرالد ضد الزمن لحماية مادموازيل ميلوزين، العفوية والقادرة على رعاية نفسها، مصممة على إثبات هويتها ومواجهة تحدياتها.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 189, 40, '16914143231405.pdf', NULL, '2023-08-07 07:18:43', '2023-08-07 07:18:43'),
(34, 'Lost to You', 'A. L. Jackson', '2012-01-01', '16914147042282.png', 'In \"Lost to You\" by A. L. Jackson, people enter our lives, some to stay and some to leave. They can build us up or tear us down, becoming friends, enemies, lovers, or tormentors. Christian Davison\'s entrance into Elizabeth Ayers\' life changes her forever. Elizabeth\'s dream is New York City, a city she\'s worked hard to reach. Christian, groomed for his father\'s law firm, is destined for Columbia University. When they become study partners, their intense attraction grows, though Elizabeth resists. The magnetic pull becomes hard to ignore. \"Lost to You\" is a standalone novel, part of a series that explores love, longing, and the complexities of relationships.', 'يسلط الضوء على كيفية دخول الناس إلى حياتنا، بعضهم يبقى والبعض الآخر يرحل. قد يبنوننا أو يهدموننا، يصبحون أصدقاءً، أعداءً، عشاقًا أو مُنَمِّينا. دخل كريستيان ديفيسون حياة إليزابيث أيرز وغيّرها إلى الأبد. نيويورك كانت دائمًا حُلم إليزابيث. عملت بجد طوال حياتها الشابة لتحقيقه. أما كريستيان، الذي تم تدريبه ليتولى شركة والده، فكانت الدراسة في جامعة كولومبيا هي الخيار الوحيد. عندما يتواصلون كشركاء دراسة، تزداد جاذبيتهم بشكل مكثف، على الرغم من مقاومة إليزابيث. يصبح من الصعب تجاهل الجاذبية المغناطيسية. \"Lost to You\" هو رواية مستقلة، جزء من سلسلة تبحر في عالم الحب والشوق وتعقيدات العلاقات.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 172, 40, '16914147045142.pdf', NULL, '2023-08-07 07:25:04', '2023-08-07 07:25:04'),
(35, 'Mother\'s Black Book', 'H. H. Fowler', '2013-01-01', '16914150404942.png', '\"Mother\'s Black Book\" by H. H. Fowler explores the clash between mothers and their children\'s partners. Tara, engaged to Wynton, faces Doreen\'s hostility. Jasmine, linked to Wynton, returns to confront her past. Marcia, a blind woman, pursues Brian\'s heart. The women\'s pursuit of desires unveils sacrifices, challenges, and unexpected turns.', 'يستكشف التصادم بين الأمهات وشركاء أولادهم. تارا، مخطوبة لوينتون، تواجه عداء دورين. جاسمين، مرتبطة بوينتون، تعود لمواجهة ماضيها. مارسيا، امرأة كفيفة، تسعى لقلب براين. سعي النساء للرغبات يكشف تضحيات وتحديات ومنعطفات غير متوقعة.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 254, 50, '16914150405608.pdf', NULL, '2023-08-07 07:30:40', '2023-08-07 07:30:40'),
(39, 'Luna Azul', 'Francine Zapater', '2010-01-01', '16914162789629.png', '\"Luna Azul\" by Francine Zapater is a tale of love and mystery. During her final year of high school, Estela, a graduating teenager, experiences the magic of love for the first time as she meets the boy of her dreams and falls in love with him. Erik, the attractive exchange student who turns Estela\'s life upside down, is a mysterious and distant boy harboring a significant secret.', 'قصة حب وغموض. خلال العام الأخير في المدرسة الثانوية، تعيش إستيلا، المراهقة القريبة من التخرج، تجربة سحر الحب لأول مرة عندما تلتقي بالشاب الذي يجسد أحلامها وتقع في حبه. إريك، الطالب الوسيم القادم في تبادل ثقافي، يقلب حياة إستيلا رأسًا على عقب، فهو شاب غامض وبعيد يكتنفه سر كبير.', 'Romance', 'رومانسية', 'Spanish', 'الإسبانية', 147, 40, '16914162787016.pdf', NULL, '2023-08-07 07:51:18', '2023-08-07 07:51:18'),
(40, 'Where Angels Tread', 'Clare Kenna', '2015-01-01', '16914164553546.png', '\"Where Angels Tread\" by Clare Kenna introduces readers to the Kensington siblings, taking them on a rollercoaster of emotions through a contemporary romance series. Shane Kensington, a devoted police officer haunted by a past mistake, meets Heidi Griffin, a single mother with her own share of struggles. Their undeniable connection sparks a new hope, but the scars of their pasts threaten their chance at love. As they navigate grief and secrets, their journey tugs at heartstrings, showing the power of love to heal even the deepest wounds.', 'رواية رومانسية معاصرة مؤثرة. يتقاطع مصير شين، ضابط شرطة ملتف حول ماضيه المؤلم، مع هايدي، أم عازبة تواجه تحدياتها. تشعل رابطتهما اللافتة أملاً، لكن الجروح الخفية تهدد حبهما. تستكشف هذه القصة العاطفية الشفاء، وفرص الثانية، وقوة الارتباط.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 172, 45, '16914164553353.pdf', NULL, '2023-08-07 07:54:15', '2023-08-07 07:54:15'),
(41, 'Fly Away Home', 'Dave Cenker', '2019-01-01', '16914168011880.png', '\"Fly Away Home\" by Dave Cenker explores the journey of Claire Perkins, a woman grappling with her past and seeking a fresh start. Attending her mother\'s funeral unearths deeper emotional wounds, prompting Claire to escape to Pigeon Grove, a seemingly tranquil town. However, the close-knit community has other plans, guiding Claire toward unexpected connections and a path of healing. As she navigates newfound relationships, Claire learns that it\'s never too late to find a place to call home.', 'امرأة تكافح مع ماضيها وتسعى لبداية جديدة. حضور جنازة والدتها يكشف جروحاً عاطفية أعمق، مما يدفع كلير للهروب إلى بيجن جروف، بلدة هادئة على ما يبدو. ومع ذلك، تمتلك المجتمع الوثيق خططًا أخرى، يوجهون كلير نحو اتصالات غير متوقعة وطريق شفاء. أثناء تجاوزها للعلاقات الجديدة، تتعلم كلير أنه ليس هناك وقت متأخر أبدًا للعثور على مكان يسمونه بالمنزل.', 'Science-Fiction', 'خيال علمي', 'English', 'الإنجليزية', 95, 40, '16914168018470.pdf', NULL, '2023-08-07 08:00:01', '2023-08-07 08:00:01'),
(42, 'Dark Desire', 'Summer Cooper', '2019-01-01', '1691417052333.png', 'In \"Dark Desire\" by Summer Cooper, Emily\'s forgotten birthday sparks a rebellion against her family. Seeking love and adventure, she enters an unconventional club where she meets a mysterious billionaire who stirs emotions she\'s never known. His proposal, while enticing, challenges her good-girl image. Emily must decide between embracing the exhilarating passion he offers or adhering to her family\'s expectations. Cooper\'s captivating tale explores the thrilling journey of a sheltered heiress as she navigates the alluring world of desire and decision.', 'قصة إميلي التي نُسيَ عيد ميلادها، مما دفعها للتمرد ضد عائلتها. تبحث عن الحب والمغامرة، فتدخل ناديًا غير تقليدي حيث تلتقي برجل ثري غامض يثير فيها عواطف لم تعرفها من قبل. اقتراحه، على الرغم من جاذبيته، يتحدى صورتها كفتاة جيدة. يجب على إميلي أن تقرر بين قبول شغفه المثير أو التمسك بتوقعات عائلتها. تستكشف القصة الجذابة لكوبر رحلة مثيرة للفتاة الثرية المحمية وهي تتنقل في عالم الرغبة واتخاذ القرارات.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 147, 40, '16914170529483.pdf', NULL, '2023-08-07 08:04:12', '2023-08-07 08:04:12'),
(43, 'Underground', 'Suelette Dreyfus', '1997-01-01', '16914179642973.png', '\"Underground\" by Suelette Dreyfus delves into the captivating true story of the computer underground\'s emergence and the activities of a skilled group of hackers who challenged the establishment\'s power. Through meticulous research, Dreyfus presents the gripping narrative of these hackers\' exploits, exposing their audacious confrontations with authority. This enthralling account, co-authored with Julian Assange, reveals the audacious world of hacking and its complex dynamics within society.', 'القصة الحقيقية المثيرة لظهور العالم السفلي للكمبيوتر ونشاط مجموعة متميزة من الهاكرز الذين تحدوا سلطات النظام. من خلال أبحاث دقيقة، تقدم درايفوس السرد المثير لمغامرات هؤلاء الهاكرز، كاشفة عن مواجهاتهم الجريئة مع السلطات. تظهر هذه السردية المذهلة، المشتركة مع جوليان أسانج، عالم القرصنة الجريئة والديناميات المعقدة لها داخل المجتمع.', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 451, 50, '16914179645190.pdf', NULL, '2023-08-07 08:19:24', '2023-08-07 08:19:24'),
(44, 'From Silicon Valley to Swaziland', 'Rick & Wendy Walleigh', '2015-01-01', '16914181363304.png', '\"From Silicon Valley to Swaziland\" by Rick & Wendy Walleigh chronicles their unconventional retirement journey. Leaving behind their successful Silicon Valley careers, they embark on a new chapter by moving to Africa to engage in volunteer work. Rejecting a typical retirement, they seek purpose and meaning in contributing to sustainable development. The book captures their challenges adapting to a new culture and the fulfillment they find in aiding impoverished communities to establish their businesses. A source of inspiration for those considering a meaningful career shift.', 'ريك وويندي واليغ يروي قصة تقاعدهما غير التقليدية. بتركهما مسيرتيهما المهنية الناجحة في وادي السيليكون، يبدآن فصلاً جديداً من حياتهما بالانتقال إلى أفريقيا للقيام بعمل تطوعي. مستبعدين مفهوم التقاعد التقليدي، يسعيان لإيجاد الهدف والمعنى من خلال المساهمة في التنمية المستدامة. يأخذ الكتاب القارئين في رحلة معهما، يوثق التحديات التي واجهوها في التكيف مع ثقافة جديدة والشعور بالارتياح من مساعدة المجتمعات المحرومة في إقامة أعمالها. مصدر إلهام لأولئك الذين يفكرون في تغيير معنوي في مسارهم المهني.', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 235, 45, '16914181365474.pdf', NULL, '2023-08-07 08:22:16', '2023-08-07 08:22:16'),
(45, 'Love for a Deaf Rebel', 'Derrick King', '2021-01-01', '16914183961979.png', '\n\"Love for a Deaf Rebel\" by Derrick King is a poignant true story of a passionate but turbulent romance. The author takes us on a journey through his tumultuous relationship with Pearl, a spirited deaf individual who secretly battles paranoid schizophrenia. Their journey is marked by notes exchanged before he learns sign language, a motorcycle adventure to Mexico and Guatemala, and the establishment of their dream life on Bowen Island. As they navigate obstacles, Pearl\'s mental health challenges strain their love and perceptions of reality. This memoir captures the trials of loving unconditionally, encompassing both joy and heartache.', 'قصة حقيقية مؤثرة عن علاقة عاطفية شديدة التقلبات. يأخذنا الكاتب في رحلة عبر علاقته المضطربة مع بيرل، الشخصية الصماء الحية الروحية التي تعاني سراً من الفصام الوهمي. يتميز مسارهما بالملاحظات المبادلة قبل أن يتعلم لغة الإشارة، ومغامرة على دراجة نارية إلى المكسيك وجواتيمالا، وبناء حياتهما الحلمية على جزيرة بوين، حيث يقومان بإنشاء منزلهما الذي يحلمان به. مع مواجهتهما لعقبات مستمرة، تبدأ تحديات الصحة النفسية التي تواجهها بيرل في تشدد حبهما ومفاهيم واقعهما. تلخص هذه السيرة الذاتية تحديات الحب اللاشروطي بكل ما يحمله من فرح وألم.', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 195, 40, '16914183961171.pdf', NULL, '2023-08-07 08:26:36', '2023-08-07 08:26:36'),
(46, 'Fearsome', 'S. A. Wolfe', '2013-01-01', '16914189528076.png', '\"Fearsome\" by S. A. Wolfe presents a stand-alone story in the Fearsome Series. Geeky prodigy Jessica Channing\'s life lacks excitement until a phone call disrupts her routine. Visiting a small town for a relative\'s death, she encounters the enigmatic Blackard brothers. Dylan\'s pursuit awakens her desires, while Carson\'s mysterious demeanor intrigues her. Jess, who has battled fears and obsessions, embraces an affair with newfound confidence. However, she learns that passion brings complexity, forcing her to confront her truths about love and navigate the challenges posed by the troubled Blackard brothers', 'حياة العبقرية الغريبة جيسيكا تشانينغ تفتقر إلى الإثارة حتى يقاطعها اتصال هاتفي. بزيارة بلدة صغيرة بسبب وفاة أحد الأقرباء، تواجه الإخوة بلاكارد الغامضين. جمال ديلان يثير رغباتها، بينما يثير الظلام والجاذبية كارسون اهتمامها. تجاوزت جيس، التي كانت تكافح مخاوفها وهوسها، الحدود واستعرضت علاقة مع الثقة المستعادة. ومع ذلك، تكتشف أن العاطفة تأتي بتعقيدات،', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 769, 40, '16914189525650.pdf', NULL, '2023-08-07 08:35:52', '2023-08-07 08:35:52'),
(47, 'Chess History and Reminiscences', 'Henry Edward Bird', '1893-01-01', '16914191934224.png', '\"Chess History and Reminiscences\" by Henry Edward Bird is a remarkable work that delves into the world of chess through the eyes of a seasoned player. Published in 1893, Bird\'s book provides a historical account of the development of chess, offering insights into its evolution, notable players, and significant games. With personal anecdotes and reflections, Bird brings to life the excitement and challenges of the game. His passion for chess shines through as he shares his experiences, making this book an invaluable resource for both chess enthusiasts and those curious about its rich history.', 'عمل مميز يغوص في عالم الشطرنج من خلال عيون لاعب ذو خبرة. نشرت في عام 1893، تقدم كتاب بيرد تاريخًا مفصلًا لتطور الشطرنج، وتقديم نظرة عميقة إلى تطوره ولاعبيه المميزين والألعاب الهامة. من خلال الحكايات الشخصية والتأملات، يجسد بيرد إثارة وتحديات اللعبة. يتألق اهتمامه بالشطرنج أثناء مشاركته تجاربه، مما يجعل هذا الكتاب موردًا قيمًا لكل من عشاق الشطرنج والفضوليين حيال تاريخه الغني', 'History', 'تاريخ', 'English', 'الإنجليزية', 176, 45, '16914191936210.pdf', NULL, '2023-08-07 08:39:53', '2023-08-07 08:39:53');
INSERT INTO `books` (`id`, `name`, `author`, `publication_date`, `cover_image`, `description`, `description_arabic`, `category`, `category_arabic`, `language`, `language_arabic`, `pages`, `world_rate`, `pdf`, `download_count`, `created_at`, `updated_at`) VALUES
(48, 'A Brief History of the Internet', 'Maxwell Fuller Michael Hart', '1995-01-01', '16914195976012.png', '\"A Brief History of the Internet\" by Maxwell Fuller and Michael Hart is a concise exploration of the revolutionary technological advancement that has reshaped the modern world. Published in 1995, the book takes readers on a journey through the origins and evolution of the internet, from its early beginnings as a research project to its transformation into a global network that has transformed communication, commerce, and culture. Fuller and Hart provide insight into the key milestones, technologies, and individuals that contributed to the internet\'s development, offering a comprehensive overview of its impact on society.', 'تاريخ موجز للإنترنت\" للكتّاب ماكسويل فولر ومايكل هارت هو استكشاف موجز للتقدم التكنولوجي الثوري الذي قام بإعادة تشكيل العالم الحديث. نُشر الكتاب في عام 1995، ويأخذ القراء في رحلة عبر أصول وتطور الإنترنت، من بداياته المبكرة كمشروع بحثي إلى تحوله إلى شبكة عالمية غيرت التواصل والتجارة والثقافة. يقدم فولر وهارت رؤية للأحداث الرئيسية والتقنيات والأفراد الذين ساهموا في تطوير الإنترنت، مقدمين نظرة شاملة على تأثيره على المجتمع', 'History', 'تاريخ', 'English', 'الإنجليزية', 73, 35, '16914195978311.pdf', NULL, '2023-08-07 08:46:37', '2023-08-07 08:46:37'),
(49, 'Hacker Crackdown', 'Bruce Sterling', '1994-01-01', '16914197948898.png', '\"Hacker Crackdown\" by Bruce Sterling delves into the fascinating world of computer hackers and the legal battles that ensued in the early 1990s. Published in 1994, the book explores the clash between hackers, law enforcement, and the burgeoning digital age. Sterling examines the rise of hacking subcultures, the exploits of notable hackers, and the evolving concept of cyberspace. Against the backdrop of high-profile cases, the book sheds light on the complex intersection of technology, civil liberties, and law enforcement strategies during a pivotal era of digital transformation.', 'التحقق من هويات القراصنة\" للكاتب بروس ستيرلنج يتناول عالم القراصنة الحاسوبية والصراعات القانونية التي نشأت في أوائل التسعينيات. نُشر الكتاب في عام 1994، ويستكشف الكتاب التصادم بين القراصنة وأجهزة الإنفاذ وعصر الرقمنة المتنامي. يحلل ستيرلنج صعود ثقافات القراصنة، وإنجازات القراصنة الملحوظين، وتطور مفهوم السايبرسبيس. في سياق القضايا المهمة، يسلط الكتاب الضوء على التقاطع المعقد بين التكنولوجيا والحريات المدنية واستراتيجيات إنفاذ القانون خلال فترة حاسمة من التحول الرقمي.', 'History', 'تاريخ', 'English', 'الإنجليزية', 303, 45, '16914197944961.pdf', 1, '2023-08-07 08:49:54', '2023-10-12 13:47:10'),
(50, 'Collected Works of Poe', 'Edgar Allan Poe', '0001-01-01', '1691420081336.png', '\"Collected Works of Poe\" brings together the timeless and haunting tales of Edgar Allan Poe. From the eerie psychological depth of \"The Tell-Tale Heart\" to the mysterious unraveling of \"The Fall of the House of Usher,\" Poe\'s stories explore the dark corners of human nature and the boundaries between reality and the supernatural. This collection includes renowned works such as \"The Gold Bug\" and \"The Murders in the Rue Morgue,\" showcasing Poe\'s mastery in crafting intricate plots and captivating atmospheres that continue to captivate readers today.', 'أعمال بو\" للكاتب إدغار آلان بو يجمع بين قصص المؤلف المشوقة والمرعبة. من العمق النفسي الغامض لقصة \"قلب الشخص الذي يحكي\" إلى تفكيك غامض في \"سقوط بيت أشر\"، تستكشف قصص بو الزوايا المظلمة في الطبيعة البشرية والحدود بين الواقع والخوارق. تتضمن هذه المجموعة أعمالًا مشهورة مثل \"الخنفساء الذهبية\" و\"جرائم القتل في شارع مورغ\"، مما يظهر مهارة بو في صياغة حبكات معقدة وأجواء جاذبة تستمر في جذب القراء حتى اليوم.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 208, 40, '16914200811268.pdf', NULL, '2023-08-07 08:54:41', '2023-08-07 08:54:41'),
(51, 'Leaves of Grass', 'Walt Whitman', '1891-01-01', '16914202456870.png', '\"Leaves of Grass\" by Walt Whitman is a timeless collection of poetry that celebrates the beauty and diversity of the human experience. With its revolutionary free verse style, Whitman\'s poems explore themes of nature, individuality, democracy, and the interconnectedness of all living beings. Through vivid imagery and emotional depth, he captures the essence of life\'s joys and struggles, inviting readers to reflect on their own existence and the world around them. This seminal work continues to inspire and influence generations with its profound exploration of the human spirit.', 'مجموعة شعرية خالدة تحتفي بجمال وتنوع تجربة الإنسان. من خلال أسلوبه الحر في الشعر، يستكشف ويتمان مواضيع الطبيعة والفردية والديمقراطية والترابط بين جميع الكائنات الحية. من خلال صوره البديعة والعمق العاطفي، يلتقط جوهر أفراح الحياة وصراعاتها، مدعوًا القراء إلى التفكير في وجودهم والعالم من حولهم. هذا العمل الرئيسي ما زال يلهم ويؤثر على الأجيال بتفكيره العميق حول روح الإنسان.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 697, 45, '16914202452112.pdf', NULL, '2023-08-07 08:57:25', '2023-08-07 08:57:25'),
(54, 'Unscrambled Eggs', 'Nadia Brown', '2013-01-01', '16914210819542.png', '\"Unscrambled Eggs\" by Nadia Brown is a captivating collection of 60 poems that delve into profound themes of life, purpose, and the world. Written over five years, these enlightening verses offer a universal perspective on the human experience. With honesty and thought-provoking insights, Brown\'s poetry addresses everyday life issues and resonates with readers seeking meaning and understanding. The collection is a stirring compilation that encourages readers to pursue their dreams and discover their true purpose.', 'هو مجموعة مذهلة من 60 قصيدة تغوص في مواضيع عميقة حول الحياة والهدف والعالم. كتبت هذه الأبيات المفيدة على مدى خمس سنوات، وتقدم وجهة نظر عالمية حول تجربة الإنسان. بصدق وأفكار مثيرة للتأمل، تتناول شعر براون قضايا الحياة اليومية ويشدو بقراء يبحثون عن المعنى والفهم. تعتبر هذه المجموعة ملخصاً مؤثراً يشجع القراء على متابعة أحلامهم واكتشاف هدفهم الحقيقي.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 69, 40, '16914210815799.pdf', NULL, '2023-08-07 09:11:21', '2023-08-07 09:11:21'),
(55, 'Á Ventura', 'Teixeira de Pascoais', '1901-01-01', '16914213508208.png', 'Á Ventura\" by Teixeira de Pascoais, published in 1901, is a collection of poetry that explores themes of fate, destiny, and the human experience. Through eloquent verses, Pascoais delves into the complexities of life, touching on topics such as love, nature, and the passage of time. The poems in this collection evoke deep emotions and contemplation, inviting readers to reflect on their own journey and connection to the world around them. With its lyrical language and thought-provoking themes, \"Á Ventura\" remains a timeless work that continues to resonate with poetry enthusiasts.', 'مجموعة من القصائد التي تستكشف موضوعات القدر والمصير وتجربة الإنسان. من خلال أبياته البليغة، يتعمق باسكوايش في تعقيدات الحياة، ملامسًا مواضيع مثل الحب والطبيعة ومرور الوقت. تستحضر القصائد في هذه المجموعة عواطف عميقة وتأملات، مما يدعو القراء إلى التفكير في رحلتهم الشخصية وصلتهم بالعالم من حولهم. بلغته اللغوية اللامعة ومواضيعه التي تحفز التأمل، تظل \"آ فينتورا\" عملًا خالدًا يستمر في أن يتر resonatedمع عشاق الشعر.', 'Poetry', 'شعر', 'Portuguese', 'البرتغالية', 15, 30, '16914213501701.pdf', NULL, '2023-08-07 09:15:50', '2023-08-07 09:15:50'),
(56, 'Prufrock and Other Observations', 'T. S. Eliot', '1917-01-01', '16914215062855.png', '\"Prufrock and Other Observations\" is a collection of poems by T. S. Eliot, first published in 1917. The collection is notable for its modernist approach to poetry, exploring themes of urban alienation, existentialism, and the fragmentation of modern life. The title poem, \"The Love Song of J. Alfred Prufrock,\" presents the inner thoughts and doubts of its protagonist, reflecting the sense of disillusionment and unease in a rapidly changing world. With its vivid imagery and intricate language, the collection exemplifies Eliot\'s mastery of poetic expression and his contribution to modernist literature.', 'هو مجموعة من القصائد للشاعر تي. إس. إليوت، نُشرت لأول مرة في عام 1917. تتميز المجموعة بنهجها الحديثي في الشعر، حيث تستكشف مواضيع الاغتراب الحضري، والوجودية، وتشظي الحياة الحديثة. القصيدة التي تحمل العنوان نفسه، \"أغنية الحب لج. ألفريد بروفروك\"، تقدم أفكار وشكوك البطل الداخلية، معكسة الشعور بالإحباط وعدم الارتياح في عالم متغير بسرعة. من خلال صورها الزاهية ولغتها المعقدة، تجسد المجموعة إتقان إليوت للتعبير الشعري ومساهمته في الأدب الحديث.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 36, 45, '16914215069012.pdf', NULL, '2023-08-07 09:18:26', '2023-08-07 09:18:26'),
(57, 'Chamber Music', 'James Joyce', '1907-01-01', '16914216493143.png', '\"Chamber Music\" is a collection of poetry written by James Joyce and published in 1907. Comprising 36 short poems, the collection explores themes of love, desire, beauty, and the fleeting nature of human emotions. The poems are characterized by their lyrical and musical quality, with each poem functioning like a musical chamber piece, capturing moments of intimate emotions and experiences. Joyce\'s poetic language and imagery create a delicate interplay of emotions and sensations, making \"Chamber Music\" a significant work in his literary career.', 'هو مجموعة من القصائد كتبها جيمس جويس ونُشرت في عام 1907. تتألف المجموعة من 36 قصيدة قصيرة تستكشف مواضيع الحب والرغبة والجمال وطبيعة العواطف البشرية الزاهية. تتميز القصائد بطابعها الليري والموسيقي، حيث تعمل كل قصيدة مثل قطعة موسيقية تعبيرية، تلتقط لحظات من العواطف والتجارب الحميمة. تُطلق لغة جويس الشعرية والصور التشبيهية لعبة رقيقة من العواطف والإحساس، مما يجعل \"موسيقى الغرفة\" عملاً مهماً في مسيرته الأدبية.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 52, 40, '16914216497999.pdf', NULL, '2023-08-07 09:20:49', '2023-08-07 09:20:49'),
(58, 'A Boy\'s Will', 'Robert Frost', '1913-01-01', '16914218015945.png', '\"A Boy\'s Will\" is Robert Frost\'s debut collection of poetry, published in 1913. This collection marks the beginning of Frost\'s distinguished literary career. The poems reflect the themes of youth, nature, and personal reflection. Frost\'s language is simple yet profound, capturing the essence of rural life and the introspective musings of a young mind. Through his lyrical verses, Frost explores the connection between humans and the natural world, inviting readers to contemplate life\'s mysteries and the passage of time.', 'نُشر في عام 1913. تمثل هذه المجموعة بداية مسيرة فروست الأدبية المرموقة. تعكس القصائد مواضيع الشباب والطبيعة والتأمل الشخصي. يكون لغة فروست بسيطة وفي الوقت نفسه عميقة، حيث تأسر جوهر الحياة الريفية وتأملات العقل الشاب. من خلال أبياته اللامعة، يستكشف فروست الروابط بين الإنسان والعالم الطبيعي، مدعوًا القراء للتأمل في أسرار الحياة ومرور الزمن.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 55, 40, '16914218011475.pdf', NULL, '2023-08-07 09:23:21', '2023-08-07 09:23:21'),
(59, 'The Hunting of the Snark', 'Lewis Carroll', '1867-01-01', '16914223444292.png', '\"The Hunting of the Snark\" by Lewis Carroll, published in 1876, is a whimsical and nonsensical narrative poem. This poetic adventure follows a diverse group of characters as they embark on a quest to capture a creature called the Snark. Filled with Carroll\'s signature wordplay, humor, and imaginative language, the poem takes readers on a journey through strange landscapes and encounters with peculiar beings. While on the surface a light-hearted tale, \"The Hunting of the Snark\" also contains deeper philosophical and existential themes, inviting readers to ponder the nature of reality, truth, and the unknown.', '1876، هو قصيدة سردية غريبة ولا معنى لها. تتبع هذه المغامرة الشعرية مجموعة متنوعة من الشخصيات وهي تشرع في رحلة لالتقاط مخلوق يُدعى \"الغراب\". مليئة بلعب الكلمات، والفكاهة، واللغة المبتكرة التي يعرف بها كارول، تأخذ القصيدة القراء في رحلة عبر مناظر غريبة ولقاءات مع كائنات غريبة. على الرغم من أنها قصة خفيفة المزاج على السطح، إلا أن \"صيد الغراب\" يحمل أيضًا مواضيع فلسفية وجودية أعمق، تدعو القراء إلى التأمل في طبيعة الواقع، والحقيقة، وما هو غير معروف.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 35, 40, '16914223448982.pdf', NULL, '2023-08-07 09:32:24', '2023-08-07 09:32:24'),
(60, 'The Psychology of Beauty', 'Ethel D. Puffer', '1905-01-01', '16914228514644.png', '\"The Psychology of Beauty\" by Ethel D. Puffer, published in 1905, delves into the human experience of beauty in nature and art. Puffer explores the intricate relationship between beauty and human emotion, questioning the reasons behind the emotional response to beauty. The book examines the desire to uncover the essence of this emotional connection and the emergence of speculative theories about beauty\'s nature. Puffer also explores the study of concrete beauty and the intricate feelings it evokes. With insightful analysis, the author invites readers to contemplate the complex interplay between aesthetics, emotion, and human perception.', 'نُشر في عام 1905، يتناول تجربة الإنسان للجمال في الطبيعة والفن. تستكشف بوفر العلاقة المعقدة بين الجمال والعاطفة الإنسانية، وتسأل عن الأسباب وراء الاستجابة العاطفية للجمال. يتناول الكتاب الرغبة في اكتشاف جوهر هذه الروابط العاطفية وظهور النظريات المضاربة حول طبيعة الجمال. تستكشف بوفر أيضًا دراسة الجمال الملموس والمشاعر المعقدة التي يثيرها. من خلال تحليلها', 'Science', 'علوم', 'English', 'الإنجليزية', 157, 50, '16914228511132.pdf', NULL, '2023-08-07 09:40:51', '2023-08-07 09:40:51'),
(61, 'Helga: Out of Hedgelands', 'Rick Johnson', '2013-01-01', '16914804469999.png', 'In \"Helga: Out of Hedgelands\" (2013), first volume of the Wood Cow Chronicles, Helga faces danger—a Wrackshee slaver escape, brutal bandits, dragons, and rebelling against WooZan. She sparks a revolution by defying norms. Her quest for her past secrets transforms her and diverse companions, disrupting civilizations. The unconventional heroine challenges tyrants, setting a change precedent. The series, in three books, uncovers Wood Cow clan history and their tyranny and slavery struggle.', 'المجلد الأول من سلسلة سجلات البقرة الخشبية (2013)، تقف هيلغا، الوحشة الشابة، أمام خطر استثنائي، من الهروب من العبيد الراكشي، والنجاة من هجوم وحشي من قطاع طرق، والفرار من التنانين، إلى قيادة تمرد ضد الشرير ووزان. تتحدى هيلغا القوانين الطاغية، وتثير عرضياً ثورة. رحلتها لكشف أسرار ماضيها تقودها ورفاقها المتنوعين في رحلة تحولية تعكر الحضارات القديمة. البطلة غير التقليدية تتحدى الطغاة من خلال نهجها الفريد، مُؤسسةً سابقة للتغيير. المسلسل مقسم إلى ثلاثة كتب، يكشف عن تاريخ عشيرة البقرة الخشبية ونضالها للإطاحة بالاستبداد والعبودية.', 'Fantasy', 'غموض', 'English', 'الإنجليزية', 414, 40, '16914804465999.pdf', NULL, '2023-08-08 01:40:46', '2023-08-08 01:40:46'),
(63, 'Seven Swords', 'Michael E. Shea', '2008-01-01', '16914812895571.png', '\"Seven Swords\" by Michael E. Shea, published in 2008, portrays the dire threat of vampire cannibals to the tranquil town of Fena Dim. An elderly animal herder embarks on a quest to assemble a group of seven exceptional fighters, each a master in their own right. Their mission: to defend the village from impending demonic attacks. The ensemble includes a seasoned soldier, a cunning rogue, a former slave, a formidable barbarian, a enigmatic swordswoman, and a young girl whose role may hold the key to triumph. This thrilling fantasy tale weaves a gripping narrative of camaraderie, sacrifice, and the struggle against supernatural forces.', 'تصور تهديد مصاصي الدماء الكانيباليين لبلدة فينا ديم الهادئة. يبدأ راعي الحيوانات المسن رحلة لجمع مجموعة من سبع مقاتلين استثنائيين، كل منهم سيد في مجاله. مهمتهم: الدفاع عن القرية من الهجمات الشياطينية الوشيكة. تضم المجموعة جندي مخضرم، وساحر ماكر، وعبد سابق، وبربر قوي، وسيدة متسلحة غامضة، وفتاة صغيرة دورها قد يكون مفتاح النصر. تدمج هذه الحكاية الخيالية المثيرة سردًا مشوقًا عن الرفقة، والتضحية، والنضال ضد القوى الخارقة.', 'Fantasy', 'غموض', 'English', 'الإنجليزية', 167, 45, '16914812898893.pdf', NULL, '2023-08-08 01:54:49', '2023-08-08 01:54:49'),
(64, 'His Robot Girlfriend', 'Wesley Allison', '2009-01-01', '16914814626879.png', '\"His Robot Girlfriend\" by Wesley Allison, published in 2009, follows Mike Smith\'s desolate life after the loss of his wife and the departure of his children. Adrift and alone, he stumbles upon a commercial showcasing the Daffodil—an extraordinary robot capable of transforming into whatever he desires. Unlike other robots, the Daffodil holds the power to fulfill Mike\'s every wish. As he embraces this technological marvel, Mike\'s life is on the brink of a profound transformation', 'تسرد قصة مايك سميث الذي يعيش حياة مأساوية، وحيدًا، بعد وفاة زوجته وانتقال أطفاله بعيدًا. يتعثر عندما يشاهد إعلانًا عن دافوديل - روبوت استثنائي قادر على التحول إلى كل ما يرغب فيه. على عكس الروبوتات الأخرى، يمكن للدافوديل تحقيق كل أمنيات مايك. بينما يستقبل هذه المعجزة التكنولوجية، تتسنى لحياة مايك أن تكون على وشك تحول عميق.', 'Science-Fiction', 'خيال علمي', 'English', 'الإنجليزية', 121, 30, '16914814625188.pdf', NULL, '2023-08-08 01:57:42', '2023-08-08 01:57:42'),
(65, 'Awaking', 'Madeline freeman', '2013-01-01', '16914819122021.png', 'In \"Awaking\" by Madeline Freeman (2013), high school senior Morgan Abbey\'s life takes an unexpected turn when a stranger reveals that her assumed psychic abilities might be real, and her long-lost mother could still be alive. Drawn into a centuries-old conflict involving a powerful group called the Veneret, Morgan must navigate her newfound abilities and the challenges of a hidden world. As she uncovers the truth about her past and the shadowy forces at play, Morgan must decide whether she\'s willing to pay the price for victory. The story delves into secrets, powers, and the struggle for control.', 'الطالبة في السنة الأخيرة من الثانوية، منعطفًا غير متوقع عندما يكشف شخص غريب أن قدراتها النفسية التي اعتقدت أنها تتظاهر بها قد تكون حقيقية، وأن والدتها المفقودة منذ سنوات قد تكون على قيد الحياة. تجد نفسها مستدرجة إلى صراع قديم يمتد لقرون مع مجموعة قوية تُدعى \"الفينيرت\"، وعلى مورجان التنقل بين قدراتها الجديدة وتحديات عالم مخفي. مع اكتشافها للحقائق حول ماضيها والقوى الخفية المتورطة، على مورجان أن تقرر ما إذا كانت مستعدة لدفع ثمن النصر. تستكشف القصة الأسرار والقوى وصراع السيطرة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 145, 40, '16914819126390.pdf', NULL, '2023-08-08 02:05:12', '2023-08-08 02:05:12'),
(66, 'The Bloodbaths', 'Steve Libbey', '2007-01-01', '16914821916170.png', 'In \"The Bloodbaths\" by Steve Libbey (2007), Crixus Oraan is a skilled water artesan who designs aqueducts for the empire of Rond. Entrusted with his guild\'s gold, Crixus loses it in a card game while trying to win a lavish house for his fiancé. Seeking work, he joins the Lamiae of Nistru, a brutal society where the elite bathe in the lifeblood of the powerless. As part of the Aqua Pura Trilogy, the novel follows Crixus as he navigates moral dilemmas and life-threatening situations. Will he complete his task for the Lamiae, or will his conscience prevent him from aiding their cruelty?', 'ماهر في الأنابيب والمواسير، يقوم ببناء الأكوادكت والأنابيب للحمامات والقصور في إمبراطورية روند. تم تكليف نقابته بمبلغ كبير من الذهب، ولكنه يخسره في لعبة ورق بجهد للفوز بمنزل فاخر لخطيبته الجديدة خارينا. بحثًا عن عمل، ينضم إلى لاميي نيسترو، مجتمع قاسي حيث يستحم الطبقة العليا في دماء أولئك في القاع. كجزء من ثلاثية أكوا بورا، يتبع الرواية مغامرات كريكسوس وسط تفاصيل أخلاقية ومواقف تهدد حياته. هل سينجز مهمته مع اللاميي، أم ستمنعه ضميره من مساعدتهم في وحشيتهم؟', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 347, 40, '16914821913390.pdf', NULL, '2023-08-08 02:09:51', '2023-08-08 02:09:51'),
(68, 'Anais of Brightshire', 'Jamie Wilson', '2013-01-01', '16914835654590.png', 'In \"Anais of Brightshire\" by Jamie Wilson (2013), rumors of rising monsters trouble Brightshire as Anais settles into her role as a scullery maid. Struggling with her position, Anais stumbles upon a forbidden magic book, leading her to experiment with spells and uncover hidden powers. As she delves deeper into magic, she begins to find her place. When a fellow kitchen worker goes missing, Anais uses her newfound abilities to search for her, only to unravel a world of trouble instead. This tale weaves mystery, magic, and self-discovery in a captivating fantasy world.', 'تُثير شائعات انتشار وحوش في جنوب برايتشاير قلقًا في القرية. تستقر آنيس في دورها كخادمة في المطبخ الكبير. تكافح لقبول وضعها، حتى تتعثر بكتاب سحر محظور، ما يدفعها لتجربة العديد من الأقنعة واكتشاف قوى مخفية. بينما تتعمق في عالم السحر، تبدأ آنيس في العثور على مكانها. عندما تختفي زميلة عمل لها من المطبخ، تستخدم آنيس قواها الجديدة للبحث عنها، لتجد نفسها في عالم من المشاكل بدلاً من ذلك. يجمع هذا الحكاية بين الغموض والسحر واكتشاف الذات في عالم خيالي مشوق.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 77, 40, '16914835656532.pdf', NULL, '2023-08-08 02:32:45', '2023-08-08 02:32:45'),
(69, 'Deviations: Appetite', 'Elissa Malcohn', '2009-01-01', '16914839612975.png', 'In \"Deviations: Appetite\" by Elissa Malcohn (2009), The Covenant\'s destruction disrupts Crossroads\' way of life. As winter nears, the Masari starve, and Basc Yata suffer without Crossroads\' tithes. Amidst famine, Promontory and Destiny Farm aim to conquer, prompting a secret alliance. Forced into leadership, HigherBrook trusts Gria, who once led a hunter massacre. Gria and TripStone plot to destroy Destiny Farm, expanding a fringe militia into a Yata army. Destiny Farm\'s meat saves Crossroads but threatens it. TripStone uses meat trader BrushBurn to enter Promontory, manipulating him with mutual attraction. Unaware of Crossroads\' fate, Ghost and pregnant Piri seek safety for their hybrid child, facing danger and risking childbirth in the process.', 'تدمر انهيار العهد طريق حياة Crossroads. مع اقتراب فصل الشتاء، يواجه الـMasari المجاعة، والـBasc Yata يعانون بلا مساعدة Crossroads. في وسط الجدب، تستعد Promontory ومزرعة Destiny لاحتلال الوادي، مما يدفع إلى تكوين تحالف سري. يتم دفعها إلى قيادة HigherBrook بشكل غير رغبي، حيث تثق الآن بـGria، الشخص الذي قاد في وقت سابق مجزرة الصيادين في Crossroads. تخطط Gria وTripStone لتدمير مزرعة Destiny، مما يؤدي إلى توسيع ميليشيا طرفية إلى جيش Yata كامل. لحم مزرعة Destiny ينقذ Crossroads ولكنه يهدد. يستخدم TripStone تاجر اللحوم BrushBurn للدخول إلى Promontory، مستغلة إياه بجاذبية متبادلة. غير واعين لمصير Crossroads، يبحث Ghost وPiri الحوامل عن مكان آمن لطفلهما الهجين، يواجهان الخطر ويخاطران بالولادة في أعماق الخطر.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 282, 40, '16914839617970.pdf', 1, '2023-08-08 02:39:21', '2023-10-12 13:46:35'),
(70, 'The Frights of Fiji', 'Sunayna Prasad', '2018-01-01', '16914842642282.png', '\"The Frights of Fiji\" by Sunayna Prasad (2018) follows twelve-year-old Alyssa, an orphan living with an uncaring uncle after her parents\' death. A magical message on her window during a stormy night changes her life. Kidnapped by Master Beau, a banished sorcerer, Alyssa enters a world of wizardry, facing fantastical beasts and technology. To return home, she must defeat Master Beau, even if it means endangering her friends. This enchanting story is the first in the \"Magical Missions\" series.', 'تتبع أليسا، البالغة من العمر اثنتي عشرة عامًا، التي تعيش مع عمها البارد بعد وفاة والديها. تغير حياتها رسالة سحرية ظهرت على نافذتها في ليلة ممطرة. يُختطفها الساحر المطرود ماستر بو، مُلقيةً في عالم السحر مع وحوش وتقنيات رائعة. للعودة إلى المنزل، يجب على أليسا هزيمة ماستر بو، حتى إذا تعنَّت على أصدقائها. هذه القصة الساحرة هي الأولى في سلسلة \"مهام سحرية\".', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 141, 40, '16914842642321.pdf', 1, '2023-08-08 02:44:24', '2024-01-05 10:21:24'),
(71, 'Nefertiti\'s Heart', 'A. W. Exley', '2015-01-01', '16914849152925.png', 'In \"Nefertiti\'s Heart\" by A. W. Exley (2015), Cara Devon\'s curiosity and impulsiveness lead her into a deadly encounter with a serial killer. In 1861 London, Cara\'s plan to settle her father\'s estate takes a dangerous turn as a killer targets the nobility for an ancient Egyptian relic with the power of immortality. Nathaniel Trent, the villainous viscount, pursues Cara and the artifact relentlessly. Amidst society\'s masks of deception, Cara searches for Nefertiti\'s Heart to protect herself, questioning who to trust and confronting her own demons.', 'يقود فضول كارا ديفون واندفاعها إلى لقاء مميت مع قاتل متسلسل. في لندن عام 1861، تأخذ خطتها لتسوية ممتلكات والده منعطفًا خطيرًا عندما يستهدف قاتل النبلاء من أجل أثر قديم مصري يقال إنه يحمل مفتاح الخلود. ناثانيال ترينت، الذي يُعرف بلقب النبيل الشرير، يلاحق كارا والقطعة الثمينة بلا هوادة. في مجتمع يرتدي فيه الجميع أقنعة لإخفاء نواياهم الحقيقية، تبحث كارا عن \"قلب نفرتيتي\" لحماية نفسها، وتسأل من تثق به وتواجه شياطينها الخاصة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 391, 40, '16914849156612.pdf', 1, '2023-08-08 02:55:15', '2023-10-12 13:47:05'),
(72, 'Marked', 'Katrina Cope', '2019-01-01', '16914871588523.png', 'In \"Marked\" by Katrina Cope (2019), Kara faces challenges as a wingless Valkyrie. However, her perception changes when she discovers a dragon\'s nest, realizing the imminent danger of encountering a protective mother dragon. Despite her combat skills, she comes to understand that her abilities might not be enough to ensure her safety from becoming the dragon\'s meal.', 'تواجه كارا تحديات ككائن فالكيري بدون أجنحة. لكن تغيرت نظرتها عندما عثرت على عش تنين، فأدركت الخطر الوشيك لمواجهة أم تنين حازمة. بالرغم من مهاراتها في القتال، أدركت أن تلك القدرات قد لا تكون كافية لضمان سلامتها من أن تصبح وجبة للتنين.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 24, 45, '16914871581151.pdf', 2, '2023-08-08 03:32:38', '2023-12-21 15:53:38'),
(74, 'Ice Crown', 'Kay L. Moody', '2019-01-01', '16914878906121.png', 'In \"Ice Crown\" by Kay L. Moody (2019), Talise wields elemental powers in the treacherous land of the Storm. To escape its perils, she competes for the coveted role of Master Shaper—a ticket to a better life. But Aaden, an unparalleled talent from the privileged Crown, stands in her way. As her loved ones\' lives hang in the balance, Talise grapples with duty, freedom, and a choice that could reshape her destiny. A tale of elemental magic and high-stakes competition, this fantasy novel is perfect for fans of \"Throne of Glass\" and the Grishaverse.', 'تاليس تمتلك قوى العناصر في أرض العاصفة الخطرة. للهروب من مخاطرها، تتنافس للحصول على دور مرشح الأشكال المتميز - تذكرة إلى حياة أفضل. لكن آدن، موهبة لا مثيل لها من الطبقة المترفة \"التاج\"، يقف في طريقها. بينما تتدلى حياة أحبائها بالتوازي، تتصارع تاليس مع الواجب والحرية واختيار يمكن أن يعيد تشكيل مصيرها. حكاية للسحر العنصري والمنافسة ذات التحدي العالي، هذه الرواية الخيالية مثالية لعشاق \"عرش الزجاج\" و\"الجريشافيرس\".', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 78, 45, '16914878901511.pdf', NULL, '2023-08-08 03:44:50', '2023-08-08 03:44:50'),
(75, 'Prophecy\'s Queen', 'Timothy Bond', '2015-01-01', '16914880763026.png', '\"Prophecy\'s Queen\" by Timothy Bond (2015) offers a prequel to The Triadine Saga, immersing readers in the journey of Elven Princess Rozlynn. She grapples with her role in The Prophecy, striving to prevent the world from descending into darkness. Love, conflict, personal growth, and the power to shape one\'s destiny are central themes. In a realm of Elves, Dwarves, humans, magic, wizards, and dragons, the eternal battle of good and evil unfolds. Will Rozlynn\'s choices align with The Prophecy\'s path, or will her sister, the Elven Queen, intervene? With elements of David Eddings and Brandon Sanderson, this tale captivates as it navigates love, duty, and destiny', 'نقدم للقراء مقدمة لسلسلة ملحمية خيالية تريادين ساغا، حيث نتابع أميرة الجن الروزلين وهي تكابد دورها في النبوءة وما عليها فعله لمنع العالم من الوقوع في ظلمة. هذه قصة عن الحب والصراع، النمو الشخصي وحرية اختيار مصيرك. يرتبط عالم الجن والأقزام والبشر بالسحر والسحرة والتنانين، حيث تدور معركة الخير مقابل الشر، الضوء مقابل الظلام. هل ستقوم روزلين بالتضحيات والاختيارات الضرورية لضمان أن تبقى النبوءة على الطريق الصحيح؟ هل ستمنعها شقيقتها، ملكة الجن، من اتخاذ اختيارها الخاص؟ هل ستخونها حبها لصياد الجن وتضل طريقها؟ انضموا لنا لتكتشفوا ذلك وأكثر في \"ملكة النبوءة\".', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 106, 40, '16914880763281.pdf', 2, '2023-08-08 03:47:56', '2023-12-31 10:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `book_comments`
--

CREATE TABLE `book_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_users`
--

CREATE TABLE `book_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('read','unread','replied') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_07_16_144054_create_contacts_table', 1),
(5, '2023_07_21_114526_create__user_privacy_table', 1),
(6, '2023_07_30_101602_create_books_table', 1),
(7, '2023_08_04_151144_create_book_users_table', 1),
(8, '2023_08_05_144517_create_book_comments_table', 1),
(9, '2023_12_23_132724_add_status_to_contacts_table', 1),
(10, '2023_12_23_160049_update_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '0',
  `ProfileImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favorite_book_genre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worst_book` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_book` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `ProfileImage`, `language`, `country`, `city`, `phone`, `birthday`, `gender`, `description`, `age`, `fav_author`, `favorite_book_genre`, `worst_book`, `fav_book`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Yasmin Moore', 'vbartoletti@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(2, 'Clemmie Schmidt', 'kamren.metz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(3, 'Jarrett Becker', 'keeling.tomasa@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(4, 'Reggie Schaden II', 'rau.katlynn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(5, 'Coty Flatley', 'mike93@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(6, 'Kevin O\'Conner', 'heidi.kulas@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(7, 'Jedediah Roberts', 'schaefer.orval@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(8, 'Miss Marlee Gibson DVM', 'shanahan.kianna@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(9, 'Elvie Corwin', 'renner.rafaela@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(10, 'Mr. Everett Harber', 'reginald12@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(11, 'Coy Cormier', 'lenora.johnston@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(12, 'Keara Walker', 'van.ritchie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(13, 'Dr. Ariane Halvorson IV', 'aspencer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(14, 'Darrel Waelchi', 'ariane.collier@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(15, 'Dr. Vella Ortiz', 'rherzog@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(16, 'Prof. Karianne Fadel', 'cassin.lawrence@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(17, 'Ms. Trisha Goldner', 'oreilly.sanford@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(18, 'Edwin Marquardt', 'hintz.cicero@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(19, 'Amelia Beatty', 'stracke.chaz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(20, 'Jillian Altenwerth', 'gage.leffler@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(21, 'Ruthe Wehner', 'florence68@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(22, 'Estel Heller', 'rachel16@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(23, 'Marilou Jaskolski', 'nitzsche.adrien@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(24, 'Lenora Dooley', 'rschiller@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(25, 'Lowell Hilpert', 'cormier.mathew@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(26, 'Prof. Peyton Beahan', 'roxane24@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(27, 'Archibald Zieme', 'chester.predovic@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(28, 'Dr. Deron Bosco DDS', 'tamia.hansen@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(29, 'Dr. Monserrat Mante', 'nkris@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(30, 'Dr. Mallory Gibson II', 'karine74@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(31, 'Dr. Jaeden Reichert', 'doris18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(32, 'Santiago Barton', 'emmanuel59@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(33, 'Mr. Triston Witting Sr.', 'okshlerin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(34, 'Margarita Wisozk', 'ondricka.benedict@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(35, 'Alec Krajcik', 'ohowell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(36, 'Dianna Shields IV', 'hellen.smitham@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(37, 'Prof. Juvenal Batz IV', 'arnulfo.prohaska@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(38, 'Mr. Harold Cruickshank IV', 'sweissnat@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(39, 'Eden Volkman', 'lkuphal@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(40, 'Jennifer Walker', 'schuppe.kenna@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(41, 'Nova Kassulke', 'wdare@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(42, 'Clint Mann Jr.', 'zschmidt@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(43, 'Antoinette Nitzsche', 'olga.mosciski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(44, 'Spencer Bogisich', 'lauretta77@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(45, 'Miss Marilou Gulgowski', 'lew.leannon@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(46, 'Norma Fahey', 'barbara22@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(47, 'Prof. Camille Marquardt', 'daphne49@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(48, 'Zack McLaughlin', 'chad.nienow@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(49, 'Eleazar Becker MD', 'roman.funk@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(50, 'Tia Rodriguez', 'mario31@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(51, 'Dr. Lauryn Satterfield DVM', 'connie.green@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(52, 'King Lynch II', 'neva.herman@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(53, 'Mrs. Mya Torphy IV', 'mking@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(54, 'Marlen Borer', 'stanton.whitney@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(55, 'Nat Hauck', 'yrogahn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(56, 'Lily Kessler', 'harmony.pollich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(57, 'Freddy Reynolds PhD', 'felix76@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(58, 'Destini Schiller', 'waldo.mccullough@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(59, 'Koby Dibbert Jr.', 'goodwin.malika@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(60, 'Dr. Herminia Vandervort MD', 'brooks.mcclure@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(61, 'Rachelle Reinger', 'ykovacek@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(62, 'Leonie Gusikowski', 'rath.celia@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(63, 'Rollin Bergnaum', 'dena.krajcik@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(64, 'Prof. Grady Kling', 'rosamond68@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(65, 'Jakayla Greenfelder', 'maurice.kozey@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(66, 'Verla Anderson', 'arne50@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(67, 'Milford Dibbert DVM', 'lafayette04@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(68, 'Miss Allison Feil III', 'wcorwin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(69, 'Tyrese Lowe', 'bart24@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(70, 'Ms. Billie Bins', 'yvonne.beahan@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(71, 'Wilber Veum', 'senger.sarina@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(72, 'Vada Heidenreich', 'duane.mertz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(73, 'Mrs. Dorris Koepp', 'collier.deborah@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(74, 'Regan Weissnat', 'herman.grant@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(75, 'Stanley Lakin', 'matteo.mann@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(76, 'Mr. Tyree Rau DVM', 'gusikowski.shirley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(77, 'Cortney Crooks', 'cora.schmitt@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(78, 'Damian Bailey', 'russel.mallie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(79, 'Maymie Klocko', 'hunter27@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(80, 'Lucy Schumm', 'eichmann.flavie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(81, 'Kareem Vandervort Jr.', 'carlee.okuneva@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(82, 'Lilyan Medhurst', 'ritchie.haleigh@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(83, 'Dr. Marquis Herman', 'schuppe.winifred@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(84, 'Vesta Spinka', 'breitenberg.sarina@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(85, 'Stanley Aufderhar', 'davon.hartmann@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(86, 'Cornelius Maggio', 'legros.berta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(87, 'Dr. Rosalinda Gaylord III', 'julian63@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(88, 'Emelia Braun', 'cloyd.morar@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(89, 'Delbert Gottlieb', 'mattie.okon@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(90, 'Prof. Noe Mayert', 'brody25@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(91, 'Keyshawn Tillman Jr.', 'urice@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(92, 'Dr. Alvis Littel DDS', 'mikel.kuphal@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(93, 'Valentin Stokes', 'francesco.vandervort@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(94, 'Hazle Wisozk', 'margarete56@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(95, 'Willy Crist MD', 'rosella31@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(96, 'Dr. Gladys D\'Amore V', 'mckayla.bechtelar@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(97, 'Ms. Aisha Russel', 'else29@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(98, 'Logan Terry', 'uskiles@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(99, 'Edward Spencer', 'bahringer.mikel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(100, 'Prof. Elda Satterfield', 'arch.toy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(101, 'Admin', 'admin@admin.com', '$2y$10$mR5h8TQwmp4ybRDuwXnfNu0pc.6KWLx5C0Qpnt3VnlJ4SvqOdts/u', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-06-27 14:52:34', '2024-06-27 14:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_privacy`
--

CREATE TABLE `user_privacy` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `show_language` tinyint(1) NOT NULL DEFAULT '0',
  `show_country` tinyint(1) NOT NULL DEFAULT '0',
  `show_city` tinyint(1) NOT NULL DEFAULT '0',
  `show_phone` tinyint(1) NOT NULL DEFAULT '0',
  `show_birthday` tinyint(1) NOT NULL DEFAULT '0',
  `show_gender` tinyint(1) NOT NULL DEFAULT '0',
  `show_fav_auth` tinyint(1) NOT NULL DEFAULT '0',
  `show_favorite_book_genre` tinyint(1) NOT NULL DEFAULT '0',
  `show_worst_book` tinyint(1) NOT NULL DEFAULT '0',
  `show_fav_book` tinyint(1) NOT NULL DEFAULT '0',
  `show_description` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_privacy`
--

INSERT INTO `user_privacy` (`id`, `user_id`, `show_language`, `show_country`, `show_city`, `show_phone`, `show_birthday`, `show_gender`, `show_fav_auth`, `show_favorite_book_genre`, `show_worst_book`, `show_fav_book`, `show_description`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(19, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(21, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(23, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(27, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(28, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(29, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(31, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(36, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(39, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(41, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(43, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(44, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(46, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(47, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(48, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(49, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(51, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(52, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(54, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(55, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(56, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(57, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(58, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(59, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(61, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(62, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(63, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(64, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(65, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(66, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(67, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(68, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(69, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(70, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(71, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(72, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(73, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(74, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(75, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(77, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(78, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(79, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(81, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(82, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(84, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(85, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(87, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(88, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(89, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(90, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(91, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(93, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(94, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(95, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(96, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(97, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(98, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(99, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34'),
(101, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-06-27 14:52:34', '2024-06-27 14:52:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_comments`
--
ALTER TABLE `book_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_comments_user_id_foreign` (`user_id`),
  ADD KEY `book_comments_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_users`
--
ALTER TABLE `book_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_users_user_id_foreign` (`user_id`),
  ADD KEY `book_users_book_id_foreign` (`book_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_privacy`
--
ALTER TABLE `user_privacy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_privacy_user_id_unique` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `book_comments`
--
ALTER TABLE `book_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_users`
--
ALTER TABLE `book_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user_privacy`
--
ALTER TABLE `user_privacy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_comments`
--
ALTER TABLE `book_comments`
  ADD CONSTRAINT `book_comments_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_users`
--
ALTER TABLE `book_users`
  ADD CONSTRAINT `book_users_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_privacy`
--
ALTER TABLE `user_privacy`
  ADD CONSTRAINT `user_privacy_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
