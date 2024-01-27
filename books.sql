-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2024 at 12:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_date` date NOT NULL,
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_arabic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_arabic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_arabic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int NOT NULL,
  `world_rate` tinyint NOT NULL,
  `pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `publication_date`, `cover_image`, `description`, `description_arabic`, `category`, `category_arabic`, `language`, `language_arabic`, `pages`, `world_rate`, `pdf`, `download_count`, `created_at`, `updated_at`) VALUES
(1, 'Bound by Family', 'Ryan Michele', '2017-01-01', '16914019689200.png', '\"Bound by Family\" by Ryan Michele is an enchanting romance that delves into the intricate connections between characters from diverse backgrounds. As they navigate challenges and emotional growth, the story explores the strength of family bonds and the power of love. With well-crafted characters and heartfelt moments, the novel blends passion and camaraderie. Readers are immersed in a world where relationships are tested, finding solace and strength in each other\'s presence.', 'رواية رومانسية جذابة تستكشف الروابط المعقدة بين شخصيات من خلفيات حياتية مختلفة. أثناء التنقل في التحديات والنمو العاطفي، تستكشف القصة قوة روابط العائلة وقوة الحب. مع شخصيات متطورة جيدًا ولحظات مؤثرة، تقدم الرواية مزيجًا من الشغف وروح الأخوة. يجد القراء أنفسهم في عالم حيث يتم اختبار العلاقات ويجد الشخصيات الراحة والقوة في وجود بعضهم البعض.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 231, 40, '16914019681237.pdf', NULL, '2023-08-07 06:52:48', '2023-08-07 06:52:48'),
(2, 'Celestial Magic', 'Emma L. Adams', '2017-01-01', '16914023035694.png', '\"Celestial Magic\" by Emma L. Adams is an engaging urban fantasy novel that immerses readers in a world of magic and intrigue. Set in a realm where celestial beings walk among humans, the story follows a young woman\'s discovery of her own magical abilities. As she navigates this newfound world, she uncovers secrets that challenge her perception of reality. With a blend of enchanting elements and hidden truths, the novel weaves a captivating tale of self-discovery, celestial forces, and the uncharted territories of her destiny.', 'رواية فانتازيا حضرية جذابة تغمر القرّاء في عالم من السحر والغموض. تدور في عالم حيث تتجول الكائنات السماوية بين البشر، تتبع القصة اكتشاف امرأة شابة لقدراتها السحرية الخاصة. أثناء تنقلها في هذا العالم الجديد، تكتشف أسرارًا تتحدى تصوّرها للواقع. بمزيج من العناصر الساحرة والحقائق المخفية، تنسج الرواية قصة جاذبة عن اكتشاف الذات، والقوى السماوية، والمناطق غير المستكشفة من مصيرها.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 226, 45, '16914023033417.pdf', NULL, '2023-08-07 06:58:23', '2023-08-07 06:58:23'),
(3, 'Adamant', 'Emma L. Adams', '2015-11-11', '16914025126366.png', '\"Adamant\" by Emma L. Adams is a gripping urban fantasy novel that transports readers into a world where magic and danger collide. Set in a realm of mythical creatures and hidden powers, the story follows a young woman\'s journey as she uncovers her own magical abilities and unravels the mysteries of her heritage. With action, intrigue, and a touch of romance, the novel weaves a tale of self-discovery, unexpected alliances, and the battle between darkness and light.', 'رواية فانتازيا حضرية مثيرة تنقل القرّاء إلى عالم حيث يتلاقى السحر والخطر. تدور في عالم مليء بالكائنات الأسطورية والقوى المخفية، تتبع القصة رحلة امرأة شابة وهي تكتشف قدراتها السحرية الخاصة وتكشف أسرار أصولها. مع الإثارة والتشويق ولمسة من الرومانسية، تنسج الرواية', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 258, 40, '16914025126516.pdf', NULL, '2023-08-07 07:01:52', '2023-08-07 07:01:52'),
(4, 'Children of Avalon', 'S.E. Wright', '2016-01-01', '16914026902513.png', '\"Children of Avalon\" by S.E. Wright is a captivating fantasy novel that transports readers to the mystical realm of Avalon. Set against a backdrop of ancient legends and magical beings, the story follows a group of young heroes on a quest to protect their land from a looming threat. With elements of courage, friendship, and destiny, the novel weaves a tale of epic proportions. As the characters navigate challenges and forge unbreakable bonds, they uncover their own hidden powers and embrace their roles as protectors of Avalon.', 'رواية خيالية جذابة تنقل القرّاء إلى عالم سحري من آفالون. تدور القصة ضد خلفية من الأساطير القديمة والكائنات السحرية، وتتبع مجموعة من الأبطال الشبان في مهمة لحماية أرضهم من تهديد قادم. مع عناصر الشجاعة والصداقة والمصير، تنسج الرواية حكاية ذات أبعاد ملحمية. أثناء التنقل في التحديات وتكوين روابط لا يمكن كسرها، يكتشف الشخصيات قوىهم الخفية الخاصة ويتقبلون دورهم كحماة لآفالون.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 188, 45, '16914026909715.pdf', NULL, '2023-08-07 07:04:50', '2023-08-07 07:04:50'),
(5, 'The Dark Tetrad', 'A.P. Rawls', '2021-01-01', '16914032098615.png', '\"The Dark Tetrad\" by A.P. Rawls is a riveting psychological thriller that delves into the intricacies of the human mind. Set in a world shrouded in mystery and intrigue, the story follows characters entangled in a web of secrets, manipulation, and concealed motives. As the layers of deception unravel, the true nature of the dark tetrad - narcissism, Machiavellianism, psychopathy, and sadism - is unveiled. With chilling twists and a sense of unease, the novel challenges perceptions and explores the darkness that can reside within us all.', 'رواية إثارة نفسية مثيرة تغوص في تفاصيل العقل البشري. تدور القصة في عالم مليء بالغموض والتشويق، حيث تتبع الشخصيات المتورطة في شبكة من الأسرار والتلاعب والدوافع المخفية. مع كشف الطبقات من الخداع، يتم الكشف عن الطبيعة الحقيقية للرباعية المظلمة - النرجسية والمكيافيلية والسيكوباتيا والسادية. مع تطورات مرعبة وشعور بعدم الارتياح، تتحدى الرواية التصورات وتستكشف الظلام الذي قد يكمن داخلنا جميعًا.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 241, 40, '16914032099145.pdf', NULL, '2023-08-07 07:13:29', '2023-08-07 07:13:29'),
(6, 'Infinity: The Fifth Bride of Pharaoh', 'Catalina DuBois', '2021-01-01', '16914048651647.png', '\"Infinity: The Fifth Bride of Pharaoh\" by Catalina DuBois is an enthralling historical romance that transports readers to the ancient world of Egypt. Set against the backdrop of royalty and intrigue, the story follows the journey of a young woman who becomes the unexpected fifth bride of Pharaoh. As she navigates the complexities of palace life, she discovers secrets that intertwine her fate with the destiny of the kingdom. With vivid descriptions and heartfelt emotions, the novel explores love, loyalty, and the profound impact of choices made in the shadows of power.', 'رواية رومانسية تاريخية مثيرة تنقل القرّاء إلى عالم مصر القديمة. تدور ضد خلفية من العائلات الحاكمة والتداول، تتبع القصة رحلة امرأة شابة تصبح العروس الخامسة غير المتوقعة للفرعون. أثناء تنقلها في تعقيدات حياة القصر، تكتشف أسرارًا تربط بين مصيرها ومصير المملكة. بوصفات واضحة وعواطف مؤثرة، تستكشف الرواية الحب والولاء، وتأثير القوى الصادرة عن الخيارات المُتخذة في ظلال القوة.', 'History', 'تاريخ', 'English', 'الإنجليزية', 121, 45, '16914048659762.pdf', NULL, '2023-08-07 07:41:05', '2023-08-07 07:41:05'),
(7, 'High Plains Holiday', 'Simone Beaudelaire', '2018-01-01', '16914051494083.png', '\"High Plains Holiday\" by Simone Beaudelaire is a heartwarming Western romance that transports readers to the rugged landscapes of the high plains. Set against the backdrop of untamed nature and a small town, the story follows the unexpected romance between two individuals from different worlds. As they navigate their differences and the challenges of the frontier, they find solace and love in each other\'s company. With genuine emotions and a touch of adventure, the novel captures the essence of finding unexpected connections in the most unlikely of places.', 'قصة رومانسية غربية دافئة تنقل القرّاء إلى مناظر الطبيعة الوعرة  في السهول العالية. تدور ضد خلفية طبيعة برية غير مروضة وبلدة صغيرة، تتبع القصة الرومانسية غير المتوقعة بين شخصين من عوالم مختلفة. أثناء التنقل في اختلافاتهما وتحديات الحدود، يجدون الراحة والحب في شركة بعضهما. مع عواطف حقيقية ولمسة من المغامرة، تلتقط الرواية جوهر العثور على اتصالات غير متوقعة في أغرب الأماكن.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 147, 45, '16914051492156.pdf', NULL, '2023-08-07 07:45:49', '2023-08-07 07:45:49'),
(8, 'If Not For The Knight', 'Debbie Boek', '2017-01-01', '16914053433013.png', '\"If Not For The Knight\" by Debbie Boek is a captivating historical romance that sweeps readers back in time to a world of chivalry and passion. Set against the backdrop of a bygone era, the story follows the unlikely romance between a courageous knight and a spirited woman. As they navigate the challenges of their society and their hearts\' desires, they find themselves drawn to each other in ways they never expected. With rich historical detail and heartfelt emotions, the novel captures the essence of love and bravery in a time of knights and castles.', 'قصة رومانسية تاريخية جذابة تأخذ القرّاء بالزمن إلى عالم الشهامة والعاطفة. تدور ضد خلفية حقبة زمنية مضت، تتبع القصة الرومانسية غير المتوقعة بين فارس شجاع وامرأة متحمسة. أثناء التنقل في تحديات مجتمعهما ورغبات قلوبهما، يجدون أنفسهما مجذوبين نحو بعضهما بطرق لم يتوقعوها. بتفاصيل تاريخية غنية وعواطف مؤثرة، تلتقط الرواية جوهر الحب والشجاعة في زمن الفرسان والقلاع.', 'History', 'تاريخ', 'English', 'الإنجليزية', 261, 45, '16914053431547.pdf', NULL, '2023-08-07 07:49:03', '2023-08-07 07:49:03'),
(9, 'From Across the Room', 'Gina L. Mulligan', '2020-01-01', '16914055527745.png', '\"From Across the Room\" by Gina L. Mulligan is a captivating historical romance that transports readers to a bygone era. Set against the backdrop of a changing world, the story follows the unexpected romance between two individuals from different walks of life. As they navigate societal expectations and their own desires, their connection deepens. With rich historical detail and heartfelt emotions, the novel captures the essence of love\'s ability to bridge the gaps between social classes and bring two hearts together.', 'قصة رومانسية تاريخية جذابة تنقل القرّاء إلى حقبة زمنية مضت. تدور ضد خلفية عالم يتغير، تتبع القصة الرومانسية غير المتوقعة بين شخصين من خلفيات حياتية مختلفة. أثناء التنقل في توقعات المجتمع ورغباتهم الخاصة، يتعمق ارتباطهما. بتفاصيل تاريخية غنية وعواطف مؤثرة، تلتقط الرواية جوهر قدرة الحب على تجاوز الفوارق بين الطبقات الاجتماعية وجمع قلبين معًا.', 'History', 'تاريخ', 'English', 'الإنجليزية', 154, 45, '16914055525670.pdf', 1, '2023-08-07 07:52:32', '2024-01-08 14:36:24'),
(10, 'Death Magic', 'CS Quinn', '2018-01-01', '1691405848149.png', '\"Death Magic\" by C.S. Quinn is an intriguing historical mystery that immerses readers in a world of intrigue and danger. Set in a tumultuous era, the story follows a character\'s journey as they unravel a complex web of secrets, betrayal, and dark magic. As they navigate treacherous paths, they uncover shocking truths that challenge their understanding of reality. With a blend of historical accuracy and suspense, the novel offers a captivating exploration of the darker aspects of human nature and the mysteries that lie hidden beneath the surface.', 'قصة غموض تاريخي مثير ينغمس القرّاء في عالم من الألغاز والخطر. يُعيد القصة رواية الشخصية خلال فترة مضطربة حيث يقومون بكشف شبكة معقدة من الأسرار والخيانات والسحر المظلم. فيما يخوضون طرقًا خطيرة، يكشفون حقائق صادمة تعيد تشكيل تصوّرهم للواقع. بمزيج من الدقة التاريخية والإثارة، تقدم الرواية استكشافًا جذابًا لجوانب مظلمة من الطبيعة البشرية والأسرار المكمنة تحت السطح.', 'History', 'رومانسية', 'English', 'الإنجليزية', 139, 40, '16914058486287.pdf', NULL, '2023-08-07 07:57:28', '2023-08-07 07:57:28'),
(11, 'The Lamp of Darkness', 'Dave Mason', '2014-01-01', '16914060095613.png', '\"The Lamp of Darkness\" by Dave Mason is a captivating historical novel that transports readers to ancient times. Set against the backdrop of biblical events, the story follows the journey of a young man living in a turbulent era. As he navigates challenges and encounters pivotal moments, he finds himself entwined with the stories of faith and destiny. With rich historical detail and deep themes, the novel offers a unique perspective on the events that shaped humanity\'s spiritual journey.', 'رواية تاريخية جذابة تنقل القرّاء إلى أزمان قديمة. تدور ضد خلفية أحداث دينية، تتبع القصة رحلة شاب يعيش في فترة مضطربة. أثناء التنقل في التحديات ومواجهة لحظات محورية، يجد نفسه متشابكًا مع قصص الإيمان والمصير. بتفاصيل تاريخية غنية ومواضيع عميقة، تقدم الرواية منظورًا فريدًا حول الأحداث التي شكلت رحلة الإنسانية الروحية.', 'History', 'تاريخ', 'English', 'الإنجليزية', 388, 45, '16914060096822.pdf', NULL, '2023-08-07 08:00:09', '2023-08-07 08:00:09'),
(12, 'Mail Order Bride: Westward Winds', 'Linda Bridey', '2014-01-01', '16914062296961.png', '\"Mail Order Bride: Westward Winds\" by Linda Bridey is a captivating historical romance that takes readers on a journey of love and adventure in the Old West. Set against the backdrop of the untamed frontier, the story follows the path of a mail-order bride as she travels west in search of a new life and love. Amid challenges and unexpected twists, she discovers the strength within herself and the potential for a brighter future. With heartfelt emotions and a sense of hope, the novel captures the spirit of forging connections in the midst of adversity.', 'رواية رومانسية تاريخية مثيرة تأخذ القرّاء في رحلة من الحب والمغامرة في الغرب القديم. تدور ضد خلفية الحدود البرية الغير مروضة، تتبع القصة مسار عروس البريد بينما تسافر نحو الغرب بحثًا عن حياة وحب جديدين. وسط التحديات والمفاجآت غير المتوقعة، تكتشف القوة داخل نفسها وإمكانية مستقبل أفضل. بعواطف مؤثرة وشعور بالأمل، تلتقط الرواية روح تكوين الروابط في وسط الصعاب.', 'History', 'تاريخ', 'English', 'الإنجليزية', 173, 45, '16914062298137.pdf', 1, '2023-08-07 08:03:49', '2023-08-07 12:29:14'),
(13, 'A Queen\'s Spy', 'Sam Burnell', '2017-01-01', '16914064397951.png', '\"A Queen\'s Spy\" by Sam Burnell is a captivating historical mystery that transports readers to a world of intrigue and espionage. Set in the court of Queen Elizabeth I, the story follows the journey of a young man who becomes embroiled in political conspiracies and secrets. As he navigates the treacherous paths of power, he discovers the depth of loyalty and the price of his choices. With vivid historical detail and suspenseful twists, the novel offers a thrilling glimpse into a time of hidden agendas and royal intrigue.', 'رواية غموض تاريخي جذاب ينقل القرّاء إلى عالم من التآمر والجاسوسية. تدور في أروقة محكمة الملكة إليزابيث الأولى، تتبع القصة رحلة شاب يتورط في المؤامرات السياسية والأسرار. أثناء التنقل في طرق القوة الخطيرة، يكتشف عمق الولاء وثمن اختياراته. بتفاصيل تاريخية واقعية ومفارقات مشوقة، تقدم الرواية نظرة مثيرة إلى زمن يعج بالأجندات الخفية والمؤامرات الملكية.', 'History', 'تاريخ', 'English', 'الإنجليزية', 328, 45, '16914064391814.pdf', NULL, '2023-08-07 08:07:19', '2023-08-07 08:07:19'),
(14, 'Russian Roulette', 'May Freighter', '2016-01-01', '16914068473306.png', '\"Russian Roulette\" by May Freighter is a gripping paranormal mystery that takes readers on a journey into the world of the supernatural. Set against the backdrop of a mysterious and dangerous underworld, the story follows a character who becomes entangled in a web of secrets, magic, and intrigue. As they navigate the shadows, they uncover shocking truths that challenge their perception of reality. With a blend of supernatural elements and suspense, the novel offers a captivating exploration of the unknown and the hidden forces that shape our world.', 'رواية غموض خارق يثير الإعجاب يأخذ القرّاء في رحلة إلى عالم خارق. تدور ضد خلفية عالم سفلي غامض وخطير، تتبع القصة شخصية تتشابك في شبكة من الأسرار والسحر والتشويق. أثناء التنقل في الظلال، يكتشفون حقائق صادمة تتحدى تصوّرهم للواقع. بمزيج من العناصر الخارقة والإثارة، تقدم الرواية استكشافًا جذابًا للغموض والقوى الخفية التي تشكل عالمنا.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 328, 40, '16914068475983.pdf', NULL, '2023-08-07 08:14:07', '2023-08-07 08:14:07'),
(15, 'The Black Bag', 'P. H. Solomon', '2014-01-01', '16914070992707.png', '\"The Black Bag\" by P.H. Solomon is an enthralling epic fantasy that delves into a world of magic and adventure. Set in a realm where dark forces and hidden agendas collide, the story follows characters who are drawn into a quest for a powerful artifact. As they journey through treacherous landscapes and face mythical creatures, they must confront their own fears and uncover the mysteries that lie within the black bag. With a blend of magic and high-stakes challenges, the novel offers an immersive exploration of a fantastical realm.', 'رواية ملحمية مثيرة يغوص في عالم السحر والمغامرة. تدور ضد خلفية حيث تتصادم القوى الظلامية والأجندات الخفية، تتبع القصة شخصيات يجذبون إلى سعي للبحث عن قطعة فنية قوية. أثناء رحلتهم عبر مناظر خطرة ومواجهة مخلوقات أسطورية، يجب عليهم مواجهة مخاوفهم الخاصة وكشف الأسرار المكمنة داخل الحقيبة السوداء. بمزيج من السحر والتحديات ذات الرهان العالي، تقدم الرواية استكشافًا متعمقًا لعالم خيالي.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 54, 40, '16914070995146.pdf', NULL, '2023-08-07 08:18:19', '2023-08-07 08:18:19'),
(16, 'Trading Knives', 'P. H. Solomon', '2015-01-01', '16914073472639.png', '\"Trading Knives\" by P.H. Solomon is a captivating epic fantasy that immerses readers in a world of intrigue and conflict. Set in a realm where alliances and betrayals shape destinies, the story follows characters who navigate a complex web of political and magical tensions. As they trade knives both literally and metaphorically, they must uncover truths that challenge their loyalties and reveal the power struggles at play. With a blend of intricate world-building and high-stakes challenges, the novel offers a thrilling exploration of a realm teetering on the edge of chaos.', 'رواية ملحمية جذابة يغوص القرّاء في عالم من التآمر والصراع. تدور ضد خلفية حيث تشكل التحالفات والخيانات مصائر، تتبع القصة شخصيات تجاوزها شبكة معقدة من التوترات السياسية والسحرية. أثناء تداولهم السكاكين حرفيًا ومجازيًا، يجب عليهم كشف الحقائق التي تتحدى ولائاتهم وتكشف عن صراعات القوى المحدثة. بمزيج من بناء عالم معقد وتحديات ذات الرهان العالي، تقدم الرواية استكشافًا مثيرًا لعالم يترنح على حافة الفوضى.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 78, 40, '16914073478375.pdf', NULL, '2023-08-07 08:22:27', '2023-08-07 08:22:27'),
(17, 'The Trials of the Core', 'Michael E. Thies', '2015-01-01', '16914082297218.png', '\"The Trials of the Core\" by Michael E. Thies is an enthralling epic fantasy that plunges readers into a world of magic and challenges. Set in a realm where magical abilities define destinies, the story follows characters who must undergo trials to prove their worthiness. As they navigate dangerous tests and uncover ancient secrets, they realize that the core of their world holds hidden truths and immense power. With a blend of fantastical elements and high-stakes challenges, the novel offers an immersive journey into a realm where courage and determination are put to the ultimate test.', 'رواية خيالية ملحمية مثير يغمر القرّاء في عالم من السحر والتحديات. تدور ضد خلفية حيث تحدد القدرات السحرية المصائر، تتبع القصة شخصيات يجب أن تخضع لمحاكمات لإثبات جدارتها. أثناء التنقل في اختبارات خطيرة وكشف أسرار قديمة، يدركون أن نواة عالمهم تحمل حقائق مخفية وقوة هائلة. بمزيج من العناصر الخيالية والتحديات ذات الرهان العالي، تقدم الرواية رحلة مغامرة في عالم حيث يتم وضع الشجاعة والإصرار في اختبار نهائي.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 461, 40, '16914082294081.pdf', NULL, '2023-08-07 08:37:09', '2023-08-07 08:37:09'),
(18, 'Forever Warriors', 'M.J. Sewall', '2016-01-01', '16914084826958.png', '\"Forever Warriors\" by M.J. Sewall is a captivating young adult fantasy that transports readers to a world of bravery and magic. Set in a realm where battles between light and darkness rage on, the story follows young warriors who are thrust into a quest to save their world. As they face supernatural challenges and confront their own fears, they discover the strength within themselves and the bonds of friendship that guide them. With a blend of fantastical elements and coming-of-age themes, the novel offers an exciting journey of self-discovery and heroism.', 'رواية خيالية شاب مثير ينقل القرّاء إلى عالم شجاعة وسحر. تدور ضد خلفية حيث تدور المعارك بين النور والظلام، تتبع القصة محاربين شبان يُلقى بهم في مهمة لإنقاذ عالمهم. أثناء مواجهتهم لتحديات خارقة ومواجهة مخاوفهم الخاصة، يكتشفون القوة داخل أنفسهم ورباط الصداقة الذي يوجّههم. بمزيج من العناصر الخيالية والمواضيع الشابة، تقدم الرواية رحلة مثيرة لاكتشاف الذات والبطولة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 230, 45, '16914084827715.pdf', NULL, '2023-08-07 08:41:22', '2023-08-07 08:41:22'),
(19, 'Dolor and Shadow', 'Angela B. Chrysler', '2015-01-01', '1691408798804.png', '\"Dolor and Shadow\" by Angela B. Chrysler is a mesmerizing dark fantasy that follows Princess Kallan\'s journey in a world of mystery and magic. Set in a realm where ancient secrets and powerful forces intertwine, the story unfolds as Kallan becomes entangled in a web of intrigue and danger. As she navigates a landscape of darkness and deception, she must confront her own inner demons and the shadows that haunt her. With a blend of rich imagery and intense emotions, the novel offers an immersive journey into the depths of a fantastical realm.', 'رواية خيالية مظلمة ساحر يتبع رحلة الأميرة كالان في عالم من الغموض والسحر. تدور ضد خلفية حيث تتداخل الأسرار القديمة والقوى القوية، تكشف القصة عن كالان وهي تُلقى بنفسها في شبكة من التشويق والخطر. أثناء التنقل في مناظر الظلام والخداع، يجب عليها مواجهة شياطينها الداخلية والظلال التي تطاردها. بمزيج من الصور الغنية والعواطف الشديدة، تقدم الرواية رحلة غامرة إلى أعماق عالم خيالي.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 456, 40, '16914087988042.pdf', NULL, '2023-08-07 08:46:38', '2023-08-07 08:46:38'),
(20, 'Dream of Empty Crowns', 'M.J. Sewall', '2015-01-01', '16914089923842.png', '\"Dream of Empty Crowns\" by M.J. Sewall is an immersive epic fantasy that takes readers on a journey through a world of power struggles and magic. Set in a realm where dynasties clash and destinies intertwine, the story follows characters who must navigate treacherous waters of politics and alliances. As they dream of ruling empty thrones and untangling a web of secrets, they discover that the pursuit of power comes with a high price. With intricate world-building and intense character development, the novel offers an exploration of ambition, sacrifice, and the complexities of leadership.', 'رواية خيالية ملحمية غامر يأخذ القرّاء في رحلة عبر عالم من صراعات القوى والسحر. تدور ضد خلفية حيث تصطدم الأسر ببعضها وتتداخل المصائر، تتبع القصة شخصيات يجب أن تتنقل في مياه خطيرة من السياسة والتحالفات. أثناءما يحلمون بالحكم على عروش فارغة وفك تشابك أسرار، يكتشفون أن السعي وراء السلطة يأتي بثمنٍ باهظ. ببنية عالم معقدة وتطور شخصيات مكثف، تقدم الرواية استكشافًا للطموح، والتضحية، وتعقيدات القيادة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 226, 45, '16914089922425.pdf', 2, '2023-08-07 08:49:52', '2023-10-30 10:03:24'),
(21, 'The Secret of Poppyridge Cove', 'Rimmy London', '2020-01-01', '1691409545854.png', '\"The Secret of Poppyridge Cove\" by Rimmy London is a charming cozy mystery that immerses readers in a world of intrigue and small-town charm. Set in the picturesque Poppyridge Cove, the story follows characters who uncover a hidden mystery that shakes their peaceful community. A hauntingly beautiful seaside mansion, abandoned for decades, holds secrets that have been shrouded in darkness for years. As they dig into the enigma of the mansion and navigate through a labyrinth of clues, they discover that the idyllic surface of their town conceals deeper, more ominous secrets. With a blend of mystery and a touch of nostalgia, the novel offers a delightful exploration of secrets, friendships, and unexpected twists.', 'رواية غموض ساحرة يغمر القرّاء في عالم من التشويق وسحر البلدة الصغيرة. تدور ضد خلفية خليج بوبيريدج الجميل، تتبع القصة شخصيات يكتشفون لغزًا مخفيًا يهز مجتمعهم السلمي. قصر على الشاطئ يبهر بجماله وترك مهجورًا لعقود، يحمل أسرارًا غامضة تغطيها الظلام لسنوات. أثناءما يعبُرون عن غموض القصر ويتنقلون عبر متاهة من الدلائل، يكتشفون أن السطح الساحر لبلدتهم يخفي أسرارًا أعمق وأكثر قسوة. بمزيج من الغموض ولمسة من الحنين، تقدم الرواية استكشافًا ممتعًا للأسرار، والصداقات، والمفاجآت غير المتوقعة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 163, 45, '16914095458811.pdf', NULL, '2023-08-07 08:59:05', '2023-08-07 08:59:05'),
(22, 'Daredevils', 'T.K. Eldridge', '2021-01-01', '16914098836910.png', '\"Daredevils\" by T.K. Eldridge is a captivating mystery that introduces readers to the Hughes Investigations Series. In the prologue, Caela and Ian, new to the world of private investigation, uncover a pattern that shakes their assumptions. Cases that initially appear isolated and random may reveal a hidden connection. As Caela takes daring risks in her pursuit of truth, she soon realizes that the mysteries she unravels might lead to unexpected and regrettable consequences. With intrigue and suspense, the novel delves into the complexities of investigative work and the dangers of chasing after elusive answers.', 'قصة غموض جذابة تقدم القرّاء لسلسلة تحقيقات هيوز. في فصل مقدمي القصة، تكتشف سيلا وإيان، اللذان هما جديدان في مجال التحقيقات الخاصة، نمطًا يهز افتراضاتهم. القضايا التي تبدو في البداية منفصلة وعشوائية قد تكشف عن اتصال مخفي. بينما تتخذ سيلا مخاطر جريئة في سعيها للحقيقة، تدرك قريبًا أن الألغاز التي تكشفها قد تؤدي إلى عواقب غير متوقعة وقابلة للندم. مع الغموض والتشويق، تغوص الرواية في تعقيدات العمل التحقيقي ومخاطر ملاحقة إجابات غامضة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 41, 45, '1691409883476.pdf', 1, '2023-08-07 09:04:43', '2023-10-20 08:15:13'),
(23, 'Jericho', 'T.K. Eldridge', '2020-01-01', '16914102704541.png', '\"Jericho\" by T.K. Eldridge is a gripping science fiction novel that delves into the world of sacrifices and government manipulation. After making the ultimate sacrifice and faking his own death, he finds himself treated as less than human in a secret Facility. Known as Jericho, he and his team are used as government assets, targeting individuals deemed threats. But their next target isn\'t a criminal; it\'s a teenage girl and the woman he loves. Despite their roles, Jericho and his team hold to their morals and honor, even if it means going against orders. In a world where nothing is normal, their journey explores loyalty, rebellion, and the complexities of morality.', 'رواية خيال علمي مثيرة تستكشف عالم التضحيات والتلاعب الحكومي. بعد أن قام بأعظم تضحية وجعلها مزيفة بإعلان وفاته، يجد نفسه معاملاً على أنه أقل من البشر في منشأة سرية. يعرف بجيريكو، هو وفريقه يُستخدمون كأصول حكومية لاستهداف الأفراد المعتبرين تهديدًا. لكن هدفهم التالي ليس إجراميًا؛ إنها فتاة في سن المراهقة وامرأة يحبها. على الرغم من أدوارهم، يحافظ جيريكو وفريقه على أخلاقهم وشرفهم، حتى لو تطلب الأمر العصيان. في عالم لا يعتبر فيه شيء طبيعيًا، تستكشف رحلتهم الولاء والتمرد وتعقيدات الأخلاق.', 'Science-Fiction', 'خيال علمي', 'English', 'الإنجليزية', 184, 45, '16914102706939.pdf', NULL, '2023-08-07 09:11:10', '2023-08-07 09:11:10'),
(24, 'Dead and Buried', 'T.K. Eldridge', '2021-01-01', '16914107477397.png', '\"Dead & Buried\" by T.K. Eldridge presents a gripping supernatural mystery featuring Detectives Kennedy and Donovan. Partners even after Donovan\'s death, Kennedy must solve his murder with an unusual twist - Donovan\'s ghost aids him discreetly. Navigating a world where he converses with thin air and uncovers hidden clues, Kennedy walks a delicate line. Can he maintain his badge, solve the enigma, and keep his sanity intact? A captivating start to the \"Partners in Crime\" series, blending mystery and the supernatural.', 'غموض جذاب يقدم القرّاء لعالم خارق للطبيعة للمحققين كينيدي ودونوفان. شركاء لعدة سنوات، لم ينهِ موت دونوفان شراكتهما. الآن، يتعين على كينيدي حل جريمة قتل دونوفان، ولكن مع لمسة غير متوقعة - شبح شريكه يساعده، على نحو ما. يجب أن يكشف كينيدي عن الغموض مع الحفاظ على مصدر نصائحه سريًا وإخفاء حقيقة أنه يتحدث مع الهواء الخفيف. أثناءما يتنقل في هذه القضية المحيرة، يكافح للحفاظ على شارته وحل الجريمة قبل أن يلتقي بنفس المصير - أن ينتهي مدفونًا أيضًا. تفتتح الرواية سلسلة \"شركاء في الجريمة\"، وتقدم مزيجًا جذابًا من الغموض والعناصر الخارقة للطبيعة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 190, 45, '16914107475159.pdf', 1, '2023-08-07 09:19:07', '2023-08-07 12:43:01'),
(25, 'Becoming Bader', 'T.K. Eldridge', '2022-01-01', '16914108855780.png', '\"Becoming Bader\" by T.K. Eldridge follows the journey of Bader, who puts her dreams of law school on hold after a tragic house fire claims her parents\' lives. She takes over the family bookstore. Five years later, as the world shifts once again, Bader\'s life transforms alongside it. The question arises: Does she possess the strength to embrace the changes? Will she venture beyond her comfort zone and open her heart to risks, uncovering her own truth in the process? This fantasy short story delves into personal growth, courage, and the pursuit of one\'s authentic pat', 'يسلّط الضوء على رحلة بادر التي أجلت أحلامها في الالتحاق بالمدرسة القانونية بعد حادث حريق منزلي مأساوي أودى بحياة والديها. تتولى مسؤولية مكتبة العائلة. بعد خمس سنوات، ومع تغيرات تطرأ على العالم مرة أخرى، يتحوّل حياة بادر بالتوازي مع هذه التغييرات. تطرح الأسئلة: هل لديها ما يلزم؟ هل ستخوض مخاطر بقلبها وتبحث عن حقيقتها؟ تستكشف هذه القصة القصيرة بعنوان تحول بادر النمو الشخصي، الشجاعة، وسعي الإنسان للوصول إلى مساره الأصيل.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 85, 40, '1691410885649.pdf', NULL, '2023-08-07 09:21:25', '2023-08-07 09:21:25'),
(26, 'Induction', 'T.K. Eldridge', '2019-01-01', '16914110413763.png', '\"Induction\" by T.K. Eldridge follows Sidonie and Sinclair Boudreau, the extraordinary offspring of a witch and a shifter. Despite the odds, they\'ve thrived and evaded their family\'s supernatural legacy. When their parents vanish, a cryptic message and an ancient prophecy propel them into a perilous mystery. As they strive to rescue their loved ones, they confront an unknown adversary. The twins must decide how far they\'re willing to go to unravel secrets and confront danger. This fast-paced paranormal mystery promises a riveting ride for fans of the genre.', 'يقدم لنا سيدوني وسينكلير بودرو، وُلِدَا من ساحرة ومحوّل شكل. هذا الوجود غالبًا ما يعتبر مستحيلاً. نجوا وتجنّبوا إرث عائلتهم من شرطة خارقة. لكن اختفاء والديهما يغير كل شيء. رسالة غامضة، نبوءة قديمة، ولغزٌ يجب فكّه لإعادة والديهما يضعان التوأمين في مرمى عدو لم يكونوا يعرفونه. في مواجهة تحديات غير متوقعة، يجب على سيد وسين أن يقررا مدى استعدادهما للذهاب إلى أقصى الحدود لإنقاذ أحبائهما. تقدم هذه الرواية سريعة الإيقاع والغامضة رحلة مثيرة لعشّاق ألغاز الخوارق', 'Mystery', 'غموض', 'English', 'الإنجليزية', 85, 40, '16914110411168.pdf', 1, '2023-08-07 09:24:01', '2023-10-30 06:08:13'),
(27, 'Remembrance', 'T.K. Eldridge', '2019-01-01', '16914114087725.png', '\"Remembrance\" by T.K. Eldridge unravels the life of a protagonist haunted by their mother\'s death. Returning to Muckle Cove, they delve into her murder, unveiling a complex tapestry of ancient magic, modern politics, and spectral encounters. As their mother\'s ghost guides them, buried truths emerge, promising to reshape their present. Yet, danger lurks, and the quest for answers becomes a treacherous journey. This debut installment in a highly acclaimed series seamlessly blends mystery and the supernatural, captivating readers with its spellbinding narrative.', 'قصة مثيرة عن بطل يراوده وفاة والدته منذ طفولته. بعد العودة إلى بلدة مكل كوف، ينطلق في رحلة لكشف حقيقة جريمة قتلها. ومع ذلك، تتجاوز الرحلة التوقعات وتتشابك بين سحر قديم وسياسة حديثة وظهورات أشباح. يشير ظهور أم البطل وأسرار الماضي إلى كشف يمكن أن يغيّر حاضرهما. مع وجود الخطر، يجب عليهما أن يتنقلا عبر طريق خطير لكشف أسرار قد تؤدي إما إلى تحول أو لزوالهما. يمزج هذا الجزء الأول من سلسلة محبوبة بين الغموض وعناصر الخوارق، مدعوًا القرّاء إلى عالم يجمع بين الواقع والخارق للطبيعة.', 'Mystery', 'غموض', 'English', 'الإنجليزية', 189, 40, '16914114082225.pdf', 1, '2023-08-07 09:30:08', '2023-10-12 16:47:21'),
(28, 'Emma', 'Jane Austen', '1815-01-01', '16914119012313.png', '\"Emma\" by Jane Austen introduces Emma Woodhouse, described as both beautiful and intelligent. Emma\'s fascination with matchmaking arises from her governess\'s recent marriage. She takes on the task of finding a partner for orphan Harriet Smith, dismissing more suitable matches. As the story unfolds, Emma\'s well-intentioned efforts result in misunderstandings and revelations about love and society. The novel explores class, personal growth, and relationship complexities. Through Emma\'s journey, Austen delivers wit and insight into human emotions and societal norms.', 'قصة مثيرة عن بطل يراوده وفاة والدته منذ طفولته. بعد العودة إلى بلدة مكل كوف، ينطلق في رحلة لكشف حقيقة جريمة قتلها. ومع ذلك، تتجاوز الرحلة التوقعات وتتشابك بين سحر قديم وسياسة حديثة وظهورات أشباح. يشير ظهور أم البطل وأسرار الماضي إلى كشف يمكن أن يغيّر حاضرهما. مع وجود الخطر، يجب عليهما أن يتنقلا عبر طريق خطير لكشف أسرار قد تؤدي إما إلى تحول أو لزوالهما. يمزج هذا الجزء الأول من سلسلة محبوبة بين الغموض وعناصر الخوارق، مدعوًا القرّاء إلى عالم يجمع بين الواقع والخارق للطبيعة.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 381, 40, '16914119017633.pdf', NULL, '2023-08-07 09:38:21', '2023-08-07 09:38:21'),
(29, 'The Unveiling', 'Tamara Leigh', '2013-01-01', '16914121685869.png', '\" The Unveiling\" by Tamara Leigh is a historical romance set in 12th century England. Amid the power struggle for the throne between King Stephen and Duke Henry, alliances shift, betrayals occur, and marriages are arranged. Lady Annyn Bretanne, driven by vengeance for her brother\'s murder, disguises herself as a squire to seek revenge on Wulfrith. However, as she holds his fate, doubt creeps in, and her heart questions their enmity. Renowned knight trainer Baron Wulfrith, who forbids women\'s presence, faces an unexpected challenge when he discovers the squire sent to him is a woman out for revenge. Their encounter tests his faith and mission, adding depth to this captivating romance.', 'يقع أحداثها في إنجلترا في القرن 12 خلال الصراع بين الملك ستيفن ودوق هنري الشاب على العرش. في ظل الحروب المدنية والخصومات الخاصة، تُجلِب الروابط التحالفية التحالفات، والولاءات تُخوَن، والزيجات تُعقَد. تدرب ليدي آنين بريتان على استخدام السيوف لمدة أربع سنوات، مدفوعةً برغبتها في الانتقام لمقتل شقيقها. متنكرةً كسارية، تنطلق لتنفيذ انتقامها من رجل تُعرفه بلقبه فقط، وُلفريث. لكن عندما تجعل مصيره في يديها، تتردَّد إرادتها ويتساءل قلبها ممكن ألا يكون عدوًا على الإطلاق. البارون وُلفريث، المشهور بتدريب الفرسان، لا يسمح بوجود النساء ضمن جدران قصره بسبب التشويش الذي يسببونه. لكن ما لم يكن يتوقعه أبدًا هو أن الشاب الفوضوي المُرسل للتدريب تحت إشرافه هو امرأة تسعى لقتله، ولم يكن يتوقع أن تُختبر كشفته لها إيمانه وتشتت المحارب عن هدفه', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 252, 40, '16914121681398.pdf', NULL, '2023-08-07 09:42:48', '2023-08-07 09:42:48'),
(30, 'Persuasion', 'Jane Austen', '1818-01-01', '16914125051005.png', '\"Persuasion\" by Jane Austen, published posthumously in 1818, narrates the story of Anne Elliot, who eight years ago fell in love with Captain Frederick Wentworth, a naval officer. Her family, dissatisfied with Wentworth\'s lack of fortune, persuaded Anne to end the engagement. Now approaching spinsterhood, Anne encounters Wentworth again as he courts their spirited neighbor, Louisa Musgrove. The novel explores themes of regret, second chances, and societal expectations as Anne navigates her feelings and societal pressures. Austen\'s poignant prose delves into the complexities of love and the consequences of persuasion.', 'قصة آن إيليوت التي وقعت في حب الضابط البحري المتطلع فريدريك وينتوورث قبل ثماني سنوات. عائلة آن عارضت هذا الاختيار. تقنع ليدي راسل، صديقة آن ومعلمتها، آن بفسخ الخطوبة. الآن، وبالقرب من سنوات العزوبية، تواجه آن فريدريك مرة أخرى عندما يتقدم لجارتها النشيطة لويزا ماسجروف. الرواية تستكشف مواضيع الندم والفرص الثانية وتوقعات المجتمعات حيث تجتاز آن مشاعرها والضغوط المجتمعية. بروز أوستن في الكتابة يعبّر عن تعقيدات الحب وآثار الإقناع.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 152, 45, '16914125057359.pdf', NULL, '2023-08-07 09:48:25', '2023-08-07 09:48:25'),
(31, 'Taking Chances', 'Ann Omasta', '2014-01-01', '16914132924746.png', '\"Taking Chances\" by Ann Omasta is a fun and fast-paced romance that explores the passionate journey of Abigail Brown, a 28-year-old divorcee living in Harbor Shores, Michigan. Abigail, despite her self-consciousness about her body, has built a fulfilling life for herself. She stumbles upon the perfect man who introduces her to intense bliss she\'s never experienced. As the story unfolds, unexpected surprises shake up Abigail\'s world, leading her on a path of unexpected twists. The novel balances naughty love triangles with contemporary romance, promising readers an exciting ride filled with surprises and the ultimate love triangle experience.', 'رواية رومانسية ممتعة وسريعة الوتيرة تستكشف رحلة الشغف لأبيجيل براون، الطلاقاء في الثامنة والعشرين من عمرها، تعيش في هاربور شورز بولاية ميشيغان. على الرغم من عدم واثقها من جسدها، نجحت أبيجيل في بناء حياة ممتازة لنفسها. تصادف الرجل المثالي الذي يعرّفها على النعيم الشديد الذي لم تعرفه من قبل. مع تطور القصة، تأتي مفاجآت غير متوقعة وتهز عالم أبيجيل، توجهها نحو مسار مليء بالمفاجآت غير المتوقعة. تمزج الرواية بين الثلاثيات العاطفية المثيرة والرومانسية المعاصرة، وتقدم للقرّاء رحلة مثيرة مليئة بالمفاجآت وتجربة ثلاثي الحب النهائي.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 164, 40, '16914132923942.pdf', NULL, '2023-08-07 10:01:32', '2023-08-07 10:01:32'),
(32, 'The Demon Girl', 'Penelope Fletcher', '2010-01-01', '16914141167662.png', '\"The Demon Girl\" by Penelope Fletcher introduces Rae Wilder, thrust into a world of dark magic, fierce creatures, and ritual sacrifice. Tasked with guarding a potent magical amulet, Rae faces brutality and a fateful choice: remain human and perish, or embrace her birthright and wield uncontrollable magics. The novel delves into her struggle, exploring identity, power, and the consequences of her decisions. As she grapples with her destiny, the story unfolds with twists that challenge her path and reveal the untamed forces within.', 'بينيلوب فليتشر تقدم للقراء راي وايلدر، التي تُلقى في عالم من السحر الداكن، والكائنات الشرسة، والطقوس التضحية. تُكلف بحراسة عقد سحري قوي. تجد نفسها تتعرض للضرب مرارًا وتكرارًا، ومجبرة على اتخاذ قرار: أن تعيش وتموت كإنسانة، أو أن تحتضن ولادتها وتستخدم السحر الذي قد يحوّلها إلى شيء شرير، قوة طبيعية لا يمكن لأي شيء السيطرة عليها.', 'Fantasy', 'خيال علمي', 'English', 'الإنجليزية', 208, 35, '1691414116859.pdf', 1, '2023-08-07 10:15:16', '2023-08-09 14:42:47'),
(33, 'Mademoiselle At Arms', 'Elizabeth Bailey', '2012-01-01', '16914143233436.png', '\"Mademoiselle At Arms\" by Elizabeth Bailey is a traditional historical romance set in the late Georgian era. The story follows Major Gerald Alderley, who is captivated by a pistol-wielding young lady he discovers in a deserted mansion. Intrigued by her unconventional behavior, he delves into her mystery. The girl\'s disguise as a nun and her French accent hint at secrets, but she insists she\'s English. As Gerald relentlessly pursues the truth, tensions rise between them. When danger looms from the villainous émigré Valade, Gerald races against time to protect the spirited and self-sufficient Mademoiselle Melusine, determined to prove her identity and fight her battles.', 'رواية رومانسية تاريخية تقع أحداثها في العصر الجورجي المتأخر. تتبع القصة الكبير جيرالد ألدرلي الذي ينبهر بالسيدة الشابة التي تحمل مسدسًا ويكتشفها في قصر مهجور. يثير سلوكها غير التقليدي فضوله، ويبدأ في فحص لغزها. تنكشف الفتاة بزي الراهبة ولهجتها الفرنسية تلميحًا للأسرار، لكنها تصر على أنها إنجليزية. مع متابعة جيرالد للحقيقة بلا هوادة، تتصاعد التوترات بينهما. وعندما يهدد خطر من الفارين الشرير فالاد، يتسابق جيرالد ضد الزمن لحماية مادموازيل ميلوزين، العفوية والقادرة على رعاية نفسها، مصممة على إثبات هويتها ومواجهة تحدياتها.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 189, 40, '16914143231405.pdf', NULL, '2023-08-07 10:18:43', '2023-08-07 10:18:43'),
(34, 'Lost to You', 'A. L. Jackson', '2012-01-01', '16914147042282.png', 'In \"Lost to You\" by A. L. Jackson, people enter our lives, some to stay and some to leave. They can build us up or tear us down, becoming friends, enemies, lovers, or tormentors. Christian Davison\'s entrance into Elizabeth Ayers\' life changes her forever. Elizabeth\'s dream is New York City, a city she\'s worked hard to reach. Christian, groomed for his father\'s law firm, is destined for Columbia University. When they become study partners, their intense attraction grows, though Elizabeth resists. The magnetic pull becomes hard to ignore. \"Lost to You\" is a standalone novel, part of a series that explores love, longing, and the complexities of relationships.', 'يسلط الضوء على كيفية دخول الناس إلى حياتنا، بعضهم يبقى والبعض الآخر يرحل. قد يبنوننا أو يهدموننا، يصبحون أصدقاءً، أعداءً، عشاقًا أو مُنَمِّينا. دخل كريستيان ديفيسون حياة إليزابيث أيرز وغيّرها إلى الأبد. نيويورك كانت دائمًا حُلم إليزابيث. عملت بجد طوال حياتها الشابة لتحقيقه. أما كريستيان، الذي تم تدريبه ليتولى شركة والده، فكانت الدراسة في جامعة كولومبيا هي الخيار الوحيد. عندما يتواصلون كشركاء دراسة، تزداد جاذبيتهم بشكل مكثف، على الرغم من مقاومة إليزابيث. يصبح من الصعب تجاهل الجاذبية المغناطيسية. \"Lost to You\" هو رواية مستقلة، جزء من سلسلة تبحر في عالم الحب والشوق وتعقيدات العلاقات.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 172, 40, '16914147045142.pdf', NULL, '2023-08-07 10:25:04', '2023-08-07 10:25:04'),
(35, 'Mother\'s Black Book', 'H. H. Fowler', '2013-01-01', '16914150404942.png', '\"Mother\'s Black Book\" by H. H. Fowler explores the clash between mothers and their children\'s partners. Tara, engaged to Wynton, faces Doreen\'s hostility. Jasmine, linked to Wynton, returns to confront her past. Marcia, a blind woman, pursues Brian\'s heart. The women\'s pursuit of desires unveils sacrifices, challenges, and unexpected turns.', 'يستكشف التصادم بين الأمهات وشركاء أولادهم. تارا، مخطوبة لوينتون، تواجه عداء دورين. جاسمين، مرتبطة بوينتون، تعود لمواجهة ماضيها. مارسيا، امرأة كفيفة، تسعى لقلب براين. سعي النساء للرغبات يكشف تضحيات وتحديات ومنعطفات غير متوقعة.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 254, 50, '16914150405608.pdf', NULL, '2023-08-07 10:30:40', '2023-08-07 10:30:40'),
(36, 'When We Let Go', 'Delancey Stewart', '2018-01-01', '16914152332971.png', '\"When We Let Go\" by Delancey Stewart follows a woman whose life takes unexpected turns after divorce. Living in a trailer in a mountain town wasn\'t her plan, neither was falling in love again. Connor Charles, with his intriguing yet intimidating demeanor, raises doubts, especially with rumors surrounding him. As she gets closer to Connor, the protagonist finds herself drawn to him despite police interest. The novel delivers a mix of suspense, humor, and a fulfilling happy ever after, capturing the essence of small-town romance.', 'قصة امرأة تأخذ حياتها منعطفات غير متوقعة بعد الطلاق. العيش في مقطورة في بلدة جبلية لم يكن في خططها، وكذلك الوقوع في الحب مجددًا. كونور تشارلز، بشعره الأحمر الداكن ومظهره المهيب، يثير الشكوك، خاصةً مع الشائعات المحيطة به. بينما تقترب من كونور، تجد البطلة نفسها مجذوبة إليه على الرغم من اهتمام الشرطة به. يقدم الرواية مزيجًا من التشويق والفكاهة ونهاية سعيدة مجدية، مما يلتقط جوهر الرومانسية في البلدة الصغيرة.\r\n\r\n(Note: The Arabic summary provid', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 280, 40, '16914152332625.pdf', 1, '2023-08-07 10:33:53', '2023-10-12 16:47:15'),
(39, 'Luna Azul', 'Francine Zapater', '2010-01-01', '16914162789629.png', '\"Luna Azul\" by Francine Zapater is a tale of love and mystery. During her final year of high school, Estela, a graduating teenager, experiences the magic of love for the first time as she meets the boy of her dreams and falls in love with him. Erik, the attractive exchange student who turns Estela\'s life upside down, is a mysterious and distant boy harboring a significant secret.', 'قصة حب وغموض. خلال العام الأخير في المدرسة الثانوية، تعيش إستيلا، المراهقة القريبة من التخرج، تجربة سحر الحب لأول مرة عندما تلتقي بالشاب الذي يجسد أحلامها وتقع في حبه. إريك، الطالب الوسيم القادم في تبادل ثقافي، يقلب حياة إستيلا رأسًا على عقب، فهو شاب غامض وبعيد يكتنفه سر كبير.', 'Romance', 'رومانسية', 'Spanish', 'الإسبانية', 147, 40, '16914162787016.pdf', NULL, '2023-08-07 10:51:18', '2023-08-07 10:51:18'),
(40, 'Where Angels Tread', 'Clare Kenna', '2015-01-01', '16914164553546.png', '\"Where Angels Tread\" by Clare Kenna introduces readers to the Kensington siblings, taking them on a rollercoaster of emotions through a contemporary romance series. Shane Kensington, a devoted police officer haunted by a past mistake, meets Heidi Griffin, a single mother with her own share of struggles. Their undeniable connection sparks a new hope, but the scars of their pasts threaten their chance at love. As they navigate grief and secrets, their journey tugs at heartstrings, showing the power of love to heal even the deepest wounds.', 'رواية رومانسية معاصرة مؤثرة. يتقاطع مصير شين، ضابط شرطة ملتف حول ماضيه المؤلم، مع هايدي، أم عازبة تواجه تحدياتها. تشعل رابطتهما اللافتة أملاً، لكن الجروح الخفية تهدد حبهما. تستكشف هذه القصة العاطفية الشفاء، وفرص الثانية، وقوة الارتباط.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 172, 45, '16914164553353.pdf', NULL, '2023-08-07 10:54:15', '2023-08-07 10:54:15'),
(41, 'Fly Away Home', 'Dave Cenker', '2019-01-01', '16914168011880.png', '\"Fly Away Home\" by Dave Cenker explores the journey of Claire Perkins, a woman grappling with her past and seeking a fresh start. Attending her mother\'s funeral unearths deeper emotional wounds, prompting Claire to escape to Pigeon Grove, a seemingly tranquil town. However, the close-knit community has other plans, guiding Claire toward unexpected connections and a path of healing. As she navigates newfound relationships, Claire learns that it\'s never too late to find a place to call home.', 'امرأة تكافح مع ماضيها وتسعى لبداية جديدة. حضور جنازة والدتها يكشف جروحاً عاطفية أعمق، مما يدفع كلير للهروب إلى بيجن جروف، بلدة هادئة على ما يبدو. ومع ذلك، تمتلك المجتمع الوثيق خططًا أخرى، يوجهون كلير نحو اتصالات غير متوقعة وطريق شفاء. أثناء تجاوزها للعلاقات الجديدة، تتعلم كلير أنه ليس هناك وقت متأخر أبدًا للعثور على مكان يسمونه بالمنزل.', 'Science-Fiction', 'خيال علمي', 'English', 'الإنجليزية', 95, 40, '16914168018470.pdf', NULL, '2023-08-07 11:00:01', '2023-08-07 11:00:01'),
(42, 'Dark Desire', 'Summer Cooper', '2019-01-01', '1691417052333.png', 'In \"Dark Desire\" by Summer Cooper, Emily\'s forgotten birthday sparks a rebellion against her family. Seeking love and adventure, she enters an unconventional club where she meets a mysterious billionaire who stirs emotions she\'s never known. His proposal, while enticing, challenges her good-girl image. Emily must decide between embracing the exhilarating passion he offers or adhering to her family\'s expectations. Cooper\'s captivating tale explores the thrilling journey of a sheltered heiress as she navigates the alluring world of desire and decision.', 'قصة إميلي التي نُسيَ عيد ميلادها، مما دفعها للتمرد ضد عائلتها. تبحث عن الحب والمغامرة، فتدخل ناديًا غير تقليدي حيث تلتقي برجل ثري غامض يثير فيها عواطف لم تعرفها من قبل. اقتراحه، على الرغم من جاذبيته، يتحدى صورتها كفتاة جيدة. يجب على إميلي أن تقرر بين قبول شغفه المثير أو التمسك بتوقعات عائلتها. تستكشف القصة الجذابة لكوبر رحلة مثيرة للفتاة الثرية المحمية وهي تتنقل في عالم الرغبة واتخاذ القرارات.', 'Romance', 'رومانسية', 'English', 'الإنجليزية', 147, 40, '16914170529483.pdf', NULL, '2023-08-07 11:04:12', '2023-08-07 11:04:12'),
(43, 'Underground', 'Suelette Dreyfus', '1997-01-01', '16914179642973.png', '\"Underground\" by Suelette Dreyfus delves into the captivating true story of the computer underground\'s emergence and the activities of a skilled group of hackers who challenged the establishment\'s power. Through meticulous research, Dreyfus presents the gripping narrative of these hackers\' exploits, exposing their audacious confrontations with authority. This enthralling account, co-authored with Julian Assange, reveals the audacious world of hacking and its complex dynamics within society.', 'القصة الحقيقية المثيرة لظهور العالم السفلي للكمبيوتر ونشاط مجموعة متميزة من الهاكرز الذين تحدوا سلطات النظام. من خلال أبحاث دقيقة، تقدم درايفوس السرد المثير لمغامرات هؤلاء الهاكرز، كاشفة عن مواجهاتهم الجريئة مع السلطات. تظهر هذه السردية المذهلة، المشتركة مع جوليان أسانج، عالم القرصنة الجريئة والديناميات المعقدة لها داخل المجتمع.', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 451, 50, '16914179645190.pdf', NULL, '2023-08-07 11:19:24', '2023-08-07 11:19:24'),
(44, 'From Silicon Valley to Swaziland', 'Rick & Wendy Walleigh', '2015-01-01', '16914181363304.png', '\"From Silicon Valley to Swaziland\" by Rick & Wendy Walleigh chronicles their unconventional retirement journey. Leaving behind their successful Silicon Valley careers, they embark on a new chapter by moving to Africa to engage in volunteer work. Rejecting a typical retirement, they seek purpose and meaning in contributing to sustainable development. The book captures their challenges adapting to a new culture and the fulfillment they find in aiding impoverished communities to establish their businesses. A source of inspiration for those considering a meaningful career shift.', 'ريك وويندي واليغ يروي قصة تقاعدهما غير التقليدية. بتركهما مسيرتيهما المهنية الناجحة في وادي السيليكون، يبدآن فصلاً جديداً من حياتهما بالانتقال إلى أفريقيا للقيام بعمل تطوعي. مستبعدين مفهوم التقاعد التقليدي، يسعيان لإيجاد الهدف والمعنى من خلال المساهمة في التنمية المستدامة. يأخذ الكتاب القارئين في رحلة معهما، يوثق التحديات التي واجهوها في التكيف مع ثقافة جديدة والشعور بالارتياح من مساعدة المجتمعات المحرومة في إقامة أعمالها. مصدر إلهام لأولئك الذين يفكرون في تغيير معنوي في مسارهم المهني.', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 235, 45, '16914181365474.pdf', NULL, '2023-08-07 11:22:16', '2023-08-07 11:22:16');
INSERT INTO `books` (`id`, `name`, `author`, `publication_date`, `cover_image`, `description`, `description_arabic`, `category`, `category_arabic`, `language`, `language_arabic`, `pages`, `world_rate`, `pdf`, `download_count`, `created_at`, `updated_at`) VALUES
(45, 'Love for a Deaf Rebel', 'Derrick King', '2021-01-01', '16914183961979.png', '\n\"Love for a Deaf Rebel\" by Derrick King is a poignant true story of a passionate but turbulent romance. The author takes us on a journey through his tumultuous relationship with Pearl, a spirited deaf individual who secretly battles paranoid schizophrenia. Their journey is marked by notes exchanged before he learns sign language, a motorcycle adventure to Mexico and Guatemala, and the establishment of their dream life on Bowen Island. As they navigate obstacles, Pearl\'s mental health challenges strain their love and perceptions of reality. This memoir captures the trials of loving unconditionally, encompassing both joy and heartache.', 'قصة حقيقية مؤثرة عن علاقة عاطفية شديدة التقلبات. يأخذنا الكاتب في رحلة عبر علاقته المضطربة مع بيرل، الشخصية الصماء الحية الروحية التي تعاني سراً من الفصام الوهمي. يتميز مسارهما بالملاحظات المبادلة قبل أن يتعلم لغة الإشارة، ومغامرة على دراجة نارية إلى المكسيك وجواتيمالا، وبناء حياتهما الحلمية على جزيرة بوين، حيث يقومان بإنشاء منزلهما الذي يحلمان به. مع مواجهتهما لعقبات مستمرة، تبدأ تحديات الصحة النفسية التي تواجهها بيرل في تشدد حبهما ومفاهيم واقعهما. تلخص هذه السيرة الذاتية تحديات الحب اللاشروطي بكل ما يحمله من فرح وألم.', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 195, 40, '16914183961171.pdf', NULL, '2023-08-07 11:26:36', '2023-08-07 11:26:36'),
(46, 'Fearsome', 'S. A. Wolfe', '2013-01-01', '16914189528076.png', '\"Fearsome\" by S. A. Wolfe presents a stand-alone story in the Fearsome Series. Geeky prodigy Jessica Channing\'s life lacks excitement until a phone call disrupts her routine. Visiting a small town for a relative\'s death, she encounters the enigmatic Blackard brothers. Dylan\'s pursuit awakens her desires, while Carson\'s mysterious demeanor intrigues her. Jess, who has battled fears and obsessions, embraces an affair with newfound confidence. However, she learns that passion brings complexity, forcing her to confront her truths about love and navigate the challenges posed by the troubled Blackard brothers', 'حياة العبقرية الغريبة جيسيكا تشانينغ تفتقر إلى الإثارة حتى يقاطعها اتصال هاتفي. بزيارة بلدة صغيرة بسبب وفاة أحد الأقرباء، تواجه الإخوة بلاكارد الغامضين. جمال ديلان يثير رغباتها، بينما يثير الظلام والجاذبية كارسون اهتمامها. تجاوزت جيس، التي كانت تكافح مخاوفها وهوسها، الحدود واستعرضت علاقة مع الثقة المستعادة. ومع ذلك، تكتشف أن العاطفة تأتي بتعقيدات،', 'Biography', 'سير ذاتية', 'English', 'الإنجليزية', 769, 40, '16914189525650.pdf', NULL, '2023-08-07 11:35:52', '2023-08-07 11:35:52'),
(47, 'Chess History and Reminiscences', 'Henry Edward Bird', '1893-01-01', '16914191934224.png', '\"Chess History and Reminiscences\" by Henry Edward Bird is a remarkable work that delves into the world of chess through the eyes of a seasoned player. Published in 1893, Bird\'s book provides a historical account of the development of chess, offering insights into its evolution, notable players, and significant games. With personal anecdotes and reflections, Bird brings to life the excitement and challenges of the game. His passion for chess shines through as he shares his experiences, making this book an invaluable resource for both chess enthusiasts and those curious about its rich history.', 'عمل مميز يغوص في عالم الشطرنج من خلال عيون لاعب ذو خبرة. نشرت في عام 1893، تقدم كتاب بيرد تاريخًا مفصلًا لتطور الشطرنج، وتقديم نظرة عميقة إلى تطوره ولاعبيه المميزين والألعاب الهامة. من خلال الحكايات الشخصية والتأملات، يجسد بيرد إثارة وتحديات اللعبة. يتألق اهتمامه بالشطرنج أثناء مشاركته تجاربه، مما يجعل هذا الكتاب موردًا قيمًا لكل من عشاق الشطرنج والفضوليين حيال تاريخه الغني', 'History', 'تاريخ', 'English', 'الإنجليزية', 176, 45, '16914191936210.pdf', NULL, '2023-08-07 11:39:53', '2023-08-07 11:39:53'),
(48, 'A Brief History of the Internet', 'Maxwell Fuller Michael Hart', '1995-01-01', '16914195976012.png', '\"A Brief History of the Internet\" by Maxwell Fuller and Michael Hart is a concise exploration of the revolutionary technological advancement that has reshaped the modern world. Published in 1995, the book takes readers on a journey through the origins and evolution of the internet, from its early beginnings as a research project to its transformation into a global network that has transformed communication, commerce, and culture. Fuller and Hart provide insight into the key milestones, technologies, and individuals that contributed to the internet\'s development, offering a comprehensive overview of its impact on society.', 'تاريخ موجز للإنترنت\" للكتّاب ماكسويل فولر ومايكل هارت هو استكشاف موجز للتقدم التكنولوجي الثوري الذي قام بإعادة تشكيل العالم الحديث. نُشر الكتاب في عام 1995، ويأخذ القراء في رحلة عبر أصول وتطور الإنترنت، من بداياته المبكرة كمشروع بحثي إلى تحوله إلى شبكة عالمية غيرت التواصل والتجارة والثقافة. يقدم فولر وهارت رؤية للأحداث الرئيسية والتقنيات والأفراد الذين ساهموا في تطوير الإنترنت، مقدمين نظرة شاملة على تأثيره على المجتمع', 'History', 'تاريخ', 'English', 'الإنجليزية', 73, 35, '16914195978311.pdf', NULL, '2023-08-07 11:46:37', '2023-08-07 11:46:37'),
(49, 'Hacker Crackdown', 'Bruce Sterling', '1994-01-01', '16914197948898.png', '\"Hacker Crackdown\" by Bruce Sterling delves into the fascinating world of computer hackers and the legal battles that ensued in the early 1990s. Published in 1994, the book explores the clash between hackers, law enforcement, and the burgeoning digital age. Sterling examines the rise of hacking subcultures, the exploits of notable hackers, and the evolving concept of cyberspace. Against the backdrop of high-profile cases, the book sheds light on the complex intersection of technology, civil liberties, and law enforcement strategies during a pivotal era of digital transformation.', 'التحقق من هويات القراصنة\" للكاتب بروس ستيرلنج يتناول عالم القراصنة الحاسوبية والصراعات القانونية التي نشأت في أوائل التسعينيات. نُشر الكتاب في عام 1994، ويستكشف الكتاب التصادم بين القراصنة وأجهزة الإنفاذ وعصر الرقمنة المتنامي. يحلل ستيرلنج صعود ثقافات القراصنة، وإنجازات القراصنة الملحوظين، وتطور مفهوم السايبرسبيس. في سياق القضايا المهمة، يسلط الكتاب الضوء على التقاطع المعقد بين التكنولوجيا والحريات المدنية واستراتيجيات إنفاذ القانون خلال فترة حاسمة من التحول الرقمي.', 'History', 'تاريخ', 'English', 'الإنجليزية', 303, 45, '16914197944961.pdf', 1, '2023-08-07 11:49:54', '2023-10-12 16:47:10'),
(50, 'Collected Works of Poe', 'Edgar Allan Poe', '0001-01-01', '1691420081336.png', '\"Collected Works of Poe\" brings together the timeless and haunting tales of Edgar Allan Poe. From the eerie psychological depth of \"The Tell-Tale Heart\" to the mysterious unraveling of \"The Fall of the House of Usher,\" Poe\'s stories explore the dark corners of human nature and the boundaries between reality and the supernatural. This collection includes renowned works such as \"The Gold Bug\" and \"The Murders in the Rue Morgue,\" showcasing Poe\'s mastery in crafting intricate plots and captivating atmospheres that continue to captivate readers today.', 'أعمال بو\" للكاتب إدغار آلان بو يجمع بين قصص المؤلف المشوقة والمرعبة. من العمق النفسي الغامض لقصة \"قلب الشخص الذي يحكي\" إلى تفكيك غامض في \"سقوط بيت أشر\"، تستكشف قصص بو الزوايا المظلمة في الطبيعة البشرية والحدود بين الواقع والخوارق. تتضمن هذه المجموعة أعمالًا مشهورة مثل \"الخنفساء الذهبية\" و\"جرائم القتل في شارع مورغ\"، مما يظهر مهارة بو في صياغة حبكات معقدة وأجواء جاذبة تستمر في جذب القراء حتى اليوم.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 208, 40, '16914200811268.pdf', NULL, '2023-08-07 11:54:41', '2023-08-07 11:54:41'),
(51, 'Leaves of Grass', 'Walt Whitman', '1891-01-01', '16914202456870.png', '\"Leaves of Grass\" by Walt Whitman is a timeless collection of poetry that celebrates the beauty and diversity of the human experience. With its revolutionary free verse style, Whitman\'s poems explore themes of nature, individuality, democracy, and the interconnectedness of all living beings. Through vivid imagery and emotional depth, he captures the essence of life\'s joys and struggles, inviting readers to reflect on their own existence and the world around them. This seminal work continues to inspire and influence generations with its profound exploration of the human spirit.', 'مجموعة شعرية خالدة تحتفي بجمال وتنوع تجربة الإنسان. من خلال أسلوبه الحر في الشعر، يستكشف ويتمان مواضيع الطبيعة والفردية والديمقراطية والترابط بين جميع الكائنات الحية. من خلال صوره البديعة والعمق العاطفي، يلتقط جوهر أفراح الحياة وصراعاتها، مدعوًا القراء إلى التفكير في وجودهم والعالم من حولهم. هذا العمل الرئيسي ما زال يلهم ويؤثر على الأجيال بتفكيره العميق حول روح الإنسان.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 697, 45, '16914202452112.pdf', NULL, '2023-08-07 11:57:25', '2023-08-07 11:57:25'),
(54, 'Unscrambled Eggs', 'Nadia Brown', '2013-01-01', '16914210819542.png', '\"Unscrambled Eggs\" by Nadia Brown is a captivating collection of 60 poems that delve into profound themes of life, purpose, and the world. Written over five years, these enlightening verses offer a universal perspective on the human experience. With honesty and thought-provoking insights, Brown\'s poetry addresses everyday life issues and resonates with readers seeking meaning and understanding. The collection is a stirring compilation that encourages readers to pursue their dreams and discover their true purpose.', 'هو مجموعة مذهلة من 60 قصيدة تغوص في مواضيع عميقة حول الحياة والهدف والعالم. كتبت هذه الأبيات المفيدة على مدى خمس سنوات، وتقدم وجهة نظر عالمية حول تجربة الإنسان. بصدق وأفكار مثيرة للتأمل، تتناول شعر براون قضايا الحياة اليومية ويشدو بقراء يبحثون عن المعنى والفهم. تعتبر هذه المجموعة ملخصاً مؤثراً يشجع القراء على متابعة أحلامهم واكتشاف هدفهم الحقيقي.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 69, 40, '16914210815799.pdf', NULL, '2023-08-07 12:11:21', '2023-08-07 12:11:21'),
(55, 'Á Ventura', 'Teixeira de Pascoais', '1901-01-01', '16914213508208.png', 'Á Ventura\" by Teixeira de Pascoais, published in 1901, is a collection of poetry that explores themes of fate, destiny, and the human experience. Through eloquent verses, Pascoais delves into the complexities of life, touching on topics such as love, nature, and the passage of time. The poems in this collection evoke deep emotions and contemplation, inviting readers to reflect on their own journey and connection to the world around them. With its lyrical language and thought-provoking themes, \"Á Ventura\" remains a timeless work that continues to resonate with poetry enthusiasts.', 'مجموعة من القصائد التي تستكشف موضوعات القدر والمصير وتجربة الإنسان. من خلال أبياته البليغة، يتعمق باسكوايش في تعقيدات الحياة، ملامسًا مواضيع مثل الحب والطبيعة ومرور الوقت. تستحضر القصائد في هذه المجموعة عواطف عميقة وتأملات، مما يدعو القراء إلى التفكير في رحلتهم الشخصية وصلتهم بالعالم من حولهم. بلغته اللغوية اللامعة ومواضيعه التي تحفز التأمل، تظل \"آ فينتورا\" عملًا خالدًا يستمر في أن يتر resonatedمع عشاق الشعر.', 'Poetry', 'شعر', 'Portuguese', 'البرتغالية', 15, 30, '16914213501701.pdf', NULL, '2023-08-07 12:15:50', '2023-08-07 12:15:50'),
(56, 'Prufrock and Other Observations', 'T. S. Eliot', '1917-01-01', '16914215062855.png', '\"Prufrock and Other Observations\" is a collection of poems by T. S. Eliot, first published in 1917. The collection is notable for its modernist approach to poetry, exploring themes of urban alienation, existentialism, and the fragmentation of modern life. The title poem, \"The Love Song of J. Alfred Prufrock,\" presents the inner thoughts and doubts of its protagonist, reflecting the sense of disillusionment and unease in a rapidly changing world. With its vivid imagery and intricate language, the collection exemplifies Eliot\'s mastery of poetic expression and his contribution to modernist literature.', 'هو مجموعة من القصائد للشاعر تي. إس. إليوت، نُشرت لأول مرة في عام 1917. تتميز المجموعة بنهجها الحديثي في الشعر، حيث تستكشف مواضيع الاغتراب الحضري، والوجودية، وتشظي الحياة الحديثة. القصيدة التي تحمل العنوان نفسه، \"أغنية الحب لج. ألفريد بروفروك\"، تقدم أفكار وشكوك البطل الداخلية، معكسة الشعور بالإحباط وعدم الارتياح في عالم متغير بسرعة. من خلال صورها الزاهية ولغتها المعقدة، تجسد المجموعة إتقان إليوت للتعبير الشعري ومساهمته في الأدب الحديث.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 36, 45, '16914215069012.pdf', NULL, '2023-08-07 12:18:26', '2023-08-07 12:18:26'),
(57, 'Chamber Music', 'James Joyce', '1907-01-01', '16914216493143.png', '\"Chamber Music\" is a collection of poetry written by James Joyce and published in 1907. Comprising 36 short poems, the collection explores themes of love, desire, beauty, and the fleeting nature of human emotions. The poems are characterized by their lyrical and musical quality, with each poem functioning like a musical chamber piece, capturing moments of intimate emotions and experiences. Joyce\'s poetic language and imagery create a delicate interplay of emotions and sensations, making \"Chamber Music\" a significant work in his literary career.', 'هو مجموعة من القصائد كتبها جيمس جويس ونُشرت في عام 1907. تتألف المجموعة من 36 قصيدة قصيرة تستكشف مواضيع الحب والرغبة والجمال وطبيعة العواطف البشرية الزاهية. تتميز القصائد بطابعها الليري والموسيقي، حيث تعمل كل قصيدة مثل قطعة موسيقية تعبيرية، تلتقط لحظات من العواطف والتجارب الحميمة. تُطلق لغة جويس الشعرية والصور التشبيهية لعبة رقيقة من العواطف والإحساس، مما يجعل \"موسيقى الغرفة\" عملاً مهماً في مسيرته الأدبية.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 52, 40, '16914216497999.pdf', NULL, '2023-08-07 12:20:49', '2023-08-07 12:20:49'),
(58, 'A Boy\'s Will', 'Robert Frost', '1913-01-01', '16914218015945.png', '\"A Boy\'s Will\" is Robert Frost\'s debut collection of poetry, published in 1913. This collection marks the beginning of Frost\'s distinguished literary career. The poems reflect the themes of youth, nature, and personal reflection. Frost\'s language is simple yet profound, capturing the essence of rural life and the introspective musings of a young mind. Through his lyrical verses, Frost explores the connection between humans and the natural world, inviting readers to contemplate life\'s mysteries and the passage of time.', 'نُشر في عام 1913. تمثل هذه المجموعة بداية مسيرة فروست الأدبية المرموقة. تعكس القصائد مواضيع الشباب والطبيعة والتأمل الشخصي. يكون لغة فروست بسيطة وفي الوقت نفسه عميقة، حيث تأسر جوهر الحياة الريفية وتأملات العقل الشاب. من خلال أبياته اللامعة، يستكشف فروست الروابط بين الإنسان والعالم الطبيعي، مدعوًا القراء للتأمل في أسرار الحياة ومرور الزمن.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 55, 40, '16914218011475.pdf', NULL, '2023-08-07 12:23:21', '2023-08-07 12:23:21'),
(59, 'The Hunting of the Snark', 'Lewis Carroll', '1867-01-01', '16914223444292.png', '\"The Hunting of the Snark\" by Lewis Carroll, published in 1876, is a whimsical and nonsensical narrative poem. This poetic adventure follows a diverse group of characters as they embark on a quest to capture a creature called the Snark. Filled with Carroll\'s signature wordplay, humor, and imaginative language, the poem takes readers on a journey through strange landscapes and encounters with peculiar beings. While on the surface a light-hearted tale, \"The Hunting of the Snark\" also contains deeper philosophical and existential themes, inviting readers to ponder the nature of reality, truth, and the unknown.', '1876، هو قصيدة سردية غريبة ولا معنى لها. تتبع هذه المغامرة الشعرية مجموعة متنوعة من الشخصيات وهي تشرع في رحلة لالتقاط مخلوق يُدعى \"الغراب\". مليئة بلعب الكلمات، والفكاهة، واللغة المبتكرة التي يعرف بها كارول، تأخذ القصيدة القراء في رحلة عبر مناظر غريبة ولقاءات مع كائنات غريبة. على الرغم من أنها قصة خفيفة المزاج على السطح، إلا أن \"صيد الغراب\" يحمل أيضًا مواضيع فلسفية وجودية أعمق، تدعو القراء إلى التأمل في طبيعة الواقع، والحقيقة، وما هو غير معروف.', 'Poetry', 'شعر', 'English', 'الإنجليزية', 35, 40, '16914223448982.pdf', NULL, '2023-08-07 12:32:24', '2023-08-07 12:32:24'),
(60, 'The Psychology of Beauty', 'Ethel D. Puffer', '1905-01-01', '16914228514644.png', '\"The Psychology of Beauty\" by Ethel D. Puffer, published in 1905, delves into the human experience of beauty in nature and art. Puffer explores the intricate relationship between beauty and human emotion, questioning the reasons behind the emotional response to beauty. The book examines the desire to uncover the essence of this emotional connection and the emergence of speculative theories about beauty\'s nature. Puffer also explores the study of concrete beauty and the intricate feelings it evokes. With insightful analysis, the author invites readers to contemplate the complex interplay between aesthetics, emotion, and human perception.', 'نُشر في عام 1905، يتناول تجربة الإنسان للجمال في الطبيعة والفن. تستكشف بوفر العلاقة المعقدة بين الجمال والعاطفة الإنسانية، وتسأل عن الأسباب وراء الاستجابة العاطفية للجمال. يتناول الكتاب الرغبة في اكتشاف جوهر هذه الروابط العاطفية وظهور النظريات المضاربة حول طبيعة الجمال. تستكشف بوفر أيضًا دراسة الجمال الملموس والمشاعر المعقدة التي يثيرها. من خلال تحليلها', 'Science', 'علوم', 'English', 'الإنجليزية', 157, 50, '16914228511132.pdf', NULL, '2023-08-07 12:40:51', '2023-08-07 12:40:51'),
(61, 'Helga: Out of Hedgelands', 'Rick Johnson', '2013-01-01', '16914804469999.png', 'In \"Helga: Out of Hedgelands\" (2013), first volume of the Wood Cow Chronicles, Helga faces danger—a Wrackshee slaver escape, brutal bandits, dragons, and rebelling against WooZan. She sparks a revolution by defying norms. Her quest for her past secrets transforms her and diverse companions, disrupting civilizations. The unconventional heroine challenges tyrants, setting a change precedent. The series, in three books, uncovers Wood Cow clan history and their tyranny and slavery struggle.', 'المجلد الأول من سلسلة سجلات البقرة الخشبية (2013)، تقف هيلغا، الوحشة الشابة، أمام خطر استثنائي، من الهروب من العبيد الراكشي، والنجاة من هجوم وحشي من قطاع طرق، والفرار من التنانين، إلى قيادة تمرد ضد الشرير ووزان. تتحدى هيلغا القوانين الطاغية، وتثير عرضياً ثورة. رحلتها لكشف أسرار ماضيها تقودها ورفاقها المتنوعين في رحلة تحولية تعكر الحضارات القديمة. البطلة غير التقليدية تتحدى الطغاة من خلال نهجها الفريد، مُؤسسةً سابقة للتغيير. المسلسل مقسم إلى ثلاثة كتب، يكشف عن تاريخ عشيرة البقرة الخشبية ونضالها للإطاحة بالاستبداد والعبودية.', 'Fantasy', 'غموض', 'English', 'الإنجليزية', 414, 40, '16914804465999.pdf', NULL, '2023-08-08 04:40:46', '2023-08-08 04:40:46'),
(63, 'Seven Swords', 'Michael E. Shea', '2008-01-01', '16914812895571.png', '\"Seven Swords\" by Michael E. Shea, published in 2008, portrays the dire threat of vampire cannibals to the tranquil town of Fena Dim. An elderly animal herder embarks on a quest to assemble a group of seven exceptional fighters, each a master in their own right. Their mission: to defend the village from impending demonic attacks. The ensemble includes a seasoned soldier, a cunning rogue, a former slave, a formidable barbarian, a enigmatic swordswoman, and a young girl whose role may hold the key to triumph. This thrilling fantasy tale weaves a gripping narrative of camaraderie, sacrifice, and the struggle against supernatural forces.', 'تصور تهديد مصاصي الدماء الكانيباليين لبلدة فينا ديم الهادئة. يبدأ راعي الحيوانات المسن رحلة لجمع مجموعة من سبع مقاتلين استثنائيين، كل منهم سيد في مجاله. مهمتهم: الدفاع عن القرية من الهجمات الشياطينية الوشيكة. تضم المجموعة جندي مخضرم، وساحر ماكر، وعبد سابق، وبربر قوي، وسيدة متسلحة غامضة، وفتاة صغيرة دورها قد يكون مفتاح النصر. تدمج هذه الحكاية الخيالية المثيرة سردًا مشوقًا عن الرفقة، والتضحية، والنضال ضد القوى الخارقة.', 'Fantasy', 'غموض', 'English', 'الإنجليزية', 167, 45, '16914812898893.pdf', NULL, '2023-08-08 04:54:49', '2023-08-08 04:54:49'),
(64, 'His Robot Girlfriend', 'Wesley Allison', '2009-01-01', '16914814626879.png', '\"His Robot Girlfriend\" by Wesley Allison, published in 2009, follows Mike Smith\'s desolate life after the loss of his wife and the departure of his children. Adrift and alone, he stumbles upon a commercial showcasing the Daffodil—an extraordinary robot capable of transforming into whatever he desires. Unlike other robots, the Daffodil holds the power to fulfill Mike\'s every wish. As he embraces this technological marvel, Mike\'s life is on the brink of a profound transformation', 'تسرد قصة مايك سميث الذي يعيش حياة مأساوية، وحيدًا، بعد وفاة زوجته وانتقال أطفاله بعيدًا. يتعثر عندما يشاهد إعلانًا عن دافوديل - روبوت استثنائي قادر على التحول إلى كل ما يرغب فيه. على عكس الروبوتات الأخرى، يمكن للدافوديل تحقيق كل أمنيات مايك. بينما يستقبل هذه المعجزة التكنولوجية، تتسنى لحياة مايك أن تكون على وشك تحول عميق.', 'Science-Fiction', 'خيال علمي', 'English', 'الإنجليزية', 121, 30, '16914814625188.pdf', NULL, '2023-08-08 04:57:42', '2023-08-08 04:57:42'),
(65, 'Awaking', 'Madeline freeman', '2013-01-01', '16914819122021.png', 'In \"Awaking\" by Madeline Freeman (2013), high school senior Morgan Abbey\'s life takes an unexpected turn when a stranger reveals that her assumed psychic abilities might be real, and her long-lost mother could still be alive. Drawn into a centuries-old conflict involving a powerful group called the Veneret, Morgan must navigate her newfound abilities and the challenges of a hidden world. As she uncovers the truth about her past and the shadowy forces at play, Morgan must decide whether she\'s willing to pay the price for victory. The story delves into secrets, powers, and the struggle for control.', 'الطالبة في السنة الأخيرة من الثانوية، منعطفًا غير متوقع عندما يكشف شخص غريب أن قدراتها النفسية التي اعتقدت أنها تتظاهر بها قد تكون حقيقية، وأن والدتها المفقودة منذ سنوات قد تكون على قيد الحياة. تجد نفسها مستدرجة إلى صراع قديم يمتد لقرون مع مجموعة قوية تُدعى \"الفينيرت\"، وعلى مورجان التنقل بين قدراتها الجديدة وتحديات عالم مخفي. مع اكتشافها للحقائق حول ماضيها والقوى الخفية المتورطة، على مورجان أن تقرر ما إذا كانت مستعدة لدفع ثمن النصر. تستكشف القصة الأسرار والقوى وصراع السيطرة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 145, 40, '16914819126390.pdf', NULL, '2023-08-08 05:05:12', '2023-08-08 05:05:12'),
(66, 'The Bloodbaths', 'Steve Libbey', '2007-01-01', '16914821916170.png', 'In \"The Bloodbaths\" by Steve Libbey (2007), Crixus Oraan is a skilled water artesan who designs aqueducts for the empire of Rond. Entrusted with his guild\'s gold, Crixus loses it in a card game while trying to win a lavish house for his fiancé. Seeking work, he joins the Lamiae of Nistru, a brutal society where the elite bathe in the lifeblood of the powerless. As part of the Aqua Pura Trilogy, the novel follows Crixus as he navigates moral dilemmas and life-threatening situations. Will he complete his task for the Lamiae, or will his conscience prevent him from aiding their cruelty?', 'ماهر في الأنابيب والمواسير، يقوم ببناء الأكوادكت والأنابيب للحمامات والقصور في إمبراطورية روند. تم تكليف نقابته بمبلغ كبير من الذهب، ولكنه يخسره في لعبة ورق بجهد للفوز بمنزل فاخر لخطيبته الجديدة خارينا. بحثًا عن عمل، ينضم إلى لاميي نيسترو، مجتمع قاسي حيث يستحم الطبقة العليا في دماء أولئك في القاع. كجزء من ثلاثية أكوا بورا، يتبع الرواية مغامرات كريكسوس وسط تفاصيل أخلاقية ومواقف تهدد حياته. هل سينجز مهمته مع اللاميي، أم ستمنعه ضميره من مساعدتهم في وحشيتهم؟', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 347, 40, '16914821913390.pdf', NULL, '2023-08-08 05:09:51', '2023-08-08 05:09:51'),
(67, 'Sound of Sirens', 'Jen Minkman', '2014-01-01', '16914833284425.png', 'In \"Sound of Sirens\" by Jen Minkman (2014), the island of Skylge is divided between the Currents, the wealthy ruling class, and the islanders who have no access to electricity. Enna, a Skylger girl, receives an electronic record as a gift from her brother, sparking the interest of Royce Bolton, a talented pianist from the Currents. They agree to secretly share the record in Royce\'s summer house, leading Enna to uncover the truth about Current society and Skylge\'s history. As she falls for Royce, she also faces the mystery of the Sirens and the origins of the Currents\' power monopoly. In this engaging YA fantasy, Enna\'s journey intertwines romance, intrigue, and the secrets of her island.', 'بين الشريحة الغنية والحاكمة المعروفة بـ \"التيارات\"، وسكان الجزيرة الذين لا يملكون الكهرباء. تتسلم إنا، فتاة من سكيلج، سجلًا إلكترونيًا كهدية من شقيقها، ما يثير اهتمام رويس بولتون، عازف البيانو الموهوب من التيارات. يتفقان على مشاركة السجل سرًا في منزل صيفي خاص برويس، مما يدفع إنا لاكتشاف حقائق عن مجتمع التيارات وتاريخ سكيلج. مع وقوعها في حب رويس، تواجه أيضًا غموض السيرينز وأصول احتكار التيارات للكهرباء. في هذه الرواية المشوقة للشبان البالغين، تتشابك رحلة إنا بين الرومانسية والغموض وأسرار جزيرتها.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 101, 40, '1691483328316.pdf', NULL, '2023-08-08 05:28:48', '2023-08-08 05:28:48'),
(68, 'Anais of Brightshire', 'Jamie Wilson', '2013-01-01', '16914835654590.png', 'In \"Anais of Brightshire\" by Jamie Wilson (2013), rumors of rising monsters trouble Brightshire as Anais settles into her role as a scullery maid. Struggling with her position, Anais stumbles upon a forbidden magic book, leading her to experiment with spells and uncover hidden powers. As she delves deeper into magic, she begins to find her place. When a fellow kitchen worker goes missing, Anais uses her newfound abilities to search for her, only to unravel a world of trouble instead. This tale weaves mystery, magic, and self-discovery in a captivating fantasy world.', 'تُثير شائعات انتشار وحوش في جنوب برايتشاير قلقًا في القرية. تستقر آنيس في دورها كخادمة في المطبخ الكبير. تكافح لقبول وضعها، حتى تتعثر بكتاب سحر محظور، ما يدفعها لتجربة العديد من الأقنعة واكتشاف قوى مخفية. بينما تتعمق في عالم السحر، تبدأ آنيس في العثور على مكانها. عندما تختفي زميلة عمل لها من المطبخ، تستخدم آنيس قواها الجديدة للبحث عنها، لتجد نفسها في عالم من المشاكل بدلاً من ذلك. يجمع هذا الحكاية بين الغموض والسحر واكتشاف الذات في عالم خيالي مشوق.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 77, 40, '16914835656532.pdf', NULL, '2023-08-08 05:32:45', '2023-08-08 05:32:45'),
(69, 'Deviations: Appetite', 'Elissa Malcohn', '2009-01-01', '16914839612975.png', 'In \"Deviations: Appetite\" by Elissa Malcohn (2009), The Covenant\'s destruction disrupts Crossroads\' way of life. As winter nears, the Masari starve, and Basc Yata suffer without Crossroads\' tithes. Amidst famine, Promontory and Destiny Farm aim to conquer, prompting a secret alliance. Forced into leadership, HigherBrook trusts Gria, who once led a hunter massacre. Gria and TripStone plot to destroy Destiny Farm, expanding a fringe militia into a Yata army. Destiny Farm\'s meat saves Crossroads but threatens it. TripStone uses meat trader BrushBurn to enter Promontory, manipulating him with mutual attraction. Unaware of Crossroads\' fate, Ghost and pregnant Piri seek safety for their hybrid child, facing danger and risking childbirth in the process.', 'تدمر انهيار العهد طريق حياة Crossroads. مع اقتراب فصل الشتاء، يواجه الـMasari المجاعة، والـBasc Yata يعانون بلا مساعدة Crossroads. في وسط الجدب، تستعد Promontory ومزرعة Destiny لاحتلال الوادي، مما يدفع إلى تكوين تحالف سري. يتم دفعها إلى قيادة HigherBrook بشكل غير رغبي، حيث تثق الآن بـGria، الشخص الذي قاد في وقت سابق مجزرة الصيادين في Crossroads. تخطط Gria وTripStone لتدمير مزرعة Destiny، مما يؤدي إلى توسيع ميليشيا طرفية إلى جيش Yata كامل. لحم مزرعة Destiny ينقذ Crossroads ولكنه يهدد. يستخدم TripStone تاجر اللحوم BrushBurn للدخول إلى Promontory، مستغلة إياه بجاذبية متبادلة. غير واعين لمصير Crossroads، يبحث Ghost وPiri الحوامل عن مكان آمن لطفلهما الهجين، يواجهان الخطر ويخاطران بالولادة في أعماق الخطر.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 282, 40, '16914839617970.pdf', 1, '2023-08-08 05:39:21', '2023-10-12 16:46:35'),
(70, 'The Frights of Fiji', 'Sunayna Prasad', '2018-01-01', '16914842642282.png', '\"The Frights of Fiji\" by Sunayna Prasad (2018) follows twelve-year-old Alyssa, an orphan living with an uncaring uncle after her parents\' death. A magical message on her window during a stormy night changes her life. Kidnapped by Master Beau, a banished sorcerer, Alyssa enters a world of wizardry, facing fantastical beasts and technology. To return home, she must defeat Master Beau, even if it means endangering her friends. This enchanting story is the first in the \"Magical Missions\" series.', 'تتبع أليسا، البالغة من العمر اثنتي عشرة عامًا، التي تعيش مع عمها البارد بعد وفاة والديها. تغير حياتها رسالة سحرية ظهرت على نافذتها في ليلة ممطرة. يُختطفها الساحر المطرود ماستر بو، مُلقيةً في عالم السحر مع وحوش وتقنيات رائعة. للعودة إلى المنزل، يجب على أليسا هزيمة ماستر بو، حتى إذا تعنَّت على أصدقائها. هذه القصة الساحرة هي الأولى في سلسلة \"مهام سحرية\".', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 141, 40, '16914842642321.pdf', 1, '2023-08-08 05:44:24', '2024-01-05 12:21:24'),
(71, 'Nefertiti\'s Heart', 'A. W. Exley', '2015-01-01', '16914849152925.png', 'In \"Nefertiti\'s Heart\" by A. W. Exley (2015), Cara Devon\'s curiosity and impulsiveness lead her into a deadly encounter with a serial killer. In 1861 London, Cara\'s plan to settle her father\'s estate takes a dangerous turn as a killer targets the nobility for an ancient Egyptian relic with the power of immortality. Nathaniel Trent, the villainous viscount, pursues Cara and the artifact relentlessly. Amidst society\'s masks of deception, Cara searches for Nefertiti\'s Heart to protect herself, questioning who to trust and confronting her own demons.', 'يقود فضول كارا ديفون واندفاعها إلى لقاء مميت مع قاتل متسلسل. في لندن عام 1861، تأخذ خطتها لتسوية ممتلكات والده منعطفًا خطيرًا عندما يستهدف قاتل النبلاء من أجل أثر قديم مصري يقال إنه يحمل مفتاح الخلود. ناثانيال ترينت، الذي يُعرف بلقب النبيل الشرير، يلاحق كارا والقطعة الثمينة بلا هوادة. في مجتمع يرتدي فيه الجميع أقنعة لإخفاء نواياهم الحقيقية، تبحث كارا عن \"قلب نفرتيتي\" لحماية نفسها، وتسأل من تثق به وتواجه شياطينها الخاصة.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 391, 40, '16914849156612.pdf', 1, '2023-08-08 05:55:15', '2023-10-12 16:47:05'),
(72, 'Marked', 'Katrina Cope', '2019-01-01', '16914871588523.png', 'In \"Marked\" by Katrina Cope (2019), Kara faces challenges as a wingless Valkyrie. However, her perception changes when she discovers a dragon\'s nest, realizing the imminent danger of encountering a protective mother dragon. Despite her combat skills, she comes to understand that her abilities might not be enough to ensure her safety from becoming the dragon\'s meal.', 'تواجه كارا تحديات ككائن فالكيري بدون أجنحة. لكن تغيرت نظرتها عندما عثرت على عش تنين، فأدركت الخطر الوشيك لمواجهة أم تنين حازمة. بالرغم من مهاراتها في القتال، أدركت أن تلك القدرات قد لا تكون كافية لضمان سلامتها من أن تصبح وجبة للتنين.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 24, 45, '16914871581151.pdf', 2, '2023-08-08 06:32:38', '2023-12-21 17:53:38'),
(73, 'Kept', 'Zoe Winters', '2008-01-01', '16914874699978.png', 'In \"Kept\" by Zoe Winters (2008), Greta, a werecat, faces impending sacrifice by her own tribe under the full moon. Her survival rests on Dayne, a sorcerer responsible for a past tribe massacre. The unlikely alliance forms based on the principle that the enemy of one\'s enemy can become an ally, leading to a riveting tale of unexpected collaboration.', 'تواجه غريتا، كائن فهرساني، تضحية محتملة من قبل قبيلتها تحت ضوء القمر الكامل. بقاؤها يعتمد على داين، ساحر قام بذبح معظم أفراد القبيلة في الماضي. التحالف غير المتوقع يتكون بناءً على مبدأ أن عدو عدوك قد يصبح حليفًا، مما يؤدي إلى قصة مثيرة عن تعاون غير متوقع.', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 68, 35, '16914874698571.pdf', 1, '2023-08-08 06:37:49', '2023-10-20 07:18:02'),
(74, 'Ice Crown', 'Kay L. Moody', '2019-01-01', '16914878906121.png', 'In \"Ice Crown\" by Kay L. Moody (2019), Talise wields elemental powers in the treacherous land of the Storm. To escape its perils, she competes for the coveted role of Master Shaper—a ticket to a better life. But Aaden, an unparalleled talent from the privileged Crown, stands in her way. As her loved ones\' lives hang in the balance, Talise grapples with duty, freedom, and a choice that could reshape her destiny. A tale of elemental magic and high-stakes competition, this fantasy novel is perfect for fans of \"Throne of Glass\" and the Grishaverse.', 'تاليس تمتلك قوى العناصر في أرض العاصفة الخطرة. للهروب من مخاطرها، تتنافس للحصول على دور مرشح الأشكال المتميز - تذكرة إلى حياة أفضل. لكن آدن، موهبة لا مثيل لها من الطبقة المترفة \"التاج\"، يقف في طريقها. بينما تتدلى حياة أحبائها بالتوازي، تتصارع تاليس مع الواجب والحرية واختيار يمكن أن يعيد تشكيل مصيرها. حكاية للسحر العنصري والمنافسة ذات التحدي العالي، هذه الرواية الخيالية مثالية لعشاق \"عرش الزجاج\" و\"الجريشافيرس\".', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 78, 45, '16914878901511.pdf', NULL, '2023-08-08 06:44:50', '2023-08-08 06:44:50'),
(75, 'Prophecy\'s Queen', 'Timothy Bond', '2015-01-01', '16914880763026.png', '\"Prophecy\'s Queen\" by Timothy Bond (2015) offers a prequel to The Triadine Saga, immersing readers in the journey of Elven Princess Rozlynn. She grapples with her role in The Prophecy, striving to prevent the world from descending into darkness. Love, conflict, personal growth, and the power to shape one\'s destiny are central themes. In a realm of Elves, Dwarves, humans, magic, wizards, and dragons, the eternal battle of good and evil unfolds. Will Rozlynn\'s choices align with The Prophecy\'s path, or will her sister, the Elven Queen, intervene? With elements of David Eddings and Brandon Sanderson, this tale captivates as it navigates love, duty, and destiny', 'نقدم للقراء مقدمة لسلسلة ملحمية خيالية تريادين ساغا، حيث نتابع أميرة الجن الروزلين وهي تكابد دورها في النبوءة وما عليها فعله لمنع العالم من الوقوع في ظلمة. هذه قصة عن الحب والصراع، النمو الشخصي وحرية اختيار مصيرك. يرتبط عالم الجن والأقزام والبشر بالسحر والسحرة والتنانين، حيث تدور معركة الخير مقابل الشر، الضوء مقابل الظلام. هل ستقوم روزلين بالتضحيات والاختيارات الضرورية لضمان أن تبقى النبوءة على الطريق الصحيح؟ هل ستمنعها شقيقتها، ملكة الجن، من اتخاذ اختيارها الخاص؟ هل ستخونها حبها لصياد الجن وتضل طريقها؟ انضموا لنا لتكتشفوا ذلك وأكثر في \"ملكة النبوءة\".', 'Fantasy', 'فانتازيا', 'English', 'الإنجليزية', 106, 40, '16914880763281.pdf', 2, '2023-08-08 06:47:56', '2023-12-31 12:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `book_comments`
--

CREATE TABLE `book_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_comments`
--

INSERT INTO `book_comments` (`id`, `user_id`, `book_id`, `comment`, `created_at`, `updated_at`) VALUES
(18, 6, 73, 'rtyrtyrtyrtyrty', '2023-10-20 07:20:19', '2023-10-20 07:20:19'),
(19, 7, 73, 'rtyrtyrtyrtytr', '2023-10-20 07:20:57', '2023-10-20 07:20:57'),
(20, 8, 73, '6546546546', '2023-10-20 07:21:20', '2023-10-20 07:21:20'),
(21, 9, 73, '646546456', '2023-10-20 07:21:33', '2023-10-20 07:21:33'),
(50, 117, 73, 'rewrewrwer', '2023-10-30 09:09:12', '2023-10-30 09:09:12'),
(51, 118, 73, 'feefgfgdfg', '2023-10-30 09:09:28', '2023-10-30 09:09:28'),
(52, 119, 73, 'sdfsdfsdfsdf', '2023-10-30 09:25:16', '2023-10-30 09:25:16'),
(55, 120, 73, 'dsfsdfsdfsdf', '2023-10-30 09:34:58', '2023-10-30 09:34:58'),
(64, 1, 75, 'dfsfsdfdsf', '2023-12-31 12:47:29', '2023-12-31 12:47:29'),
(65, 141, 75, 'ecefrveg', '2023-12-31 12:47:49', '2023-12-31 12:47:49'),
(67, 1, 7, 'fgsdfgdfg', '2023-12-31 14:17:46', '2023-12-31 14:17:46'),
(69, 1, 9, 'HJGJGHJ', '2024-01-08 14:41:18', '2024-01-08 14:41:18'),
(70, 1, 73, 'FGHGHGFH', '2024-01-08 14:43:24', '2024-01-08 14:43:24');

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

--
-- Dumping data for table `book_users`
--

INSERT INTO `book_users` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2023-08-07 12:29:14', '2023-08-07 12:29:14'),
(2, 1, 24, '2023-08-07 12:43:01', '2023-08-07 12:43:01'),
(6, 1, 20, '2023-08-09 14:34:39', '2023-08-09 14:34:39'),
(7, 1, 32, '2023-08-09 14:42:47', '2023-08-09 14:42:47'),
(8, 2, 72, '2023-10-12 16:29:57', '2023-10-12 16:29:57'),
(9, 2, 75, '2023-10-12 16:37:07', '2023-10-12 16:37:07'),
(10, 2, 69, '2023-10-12 16:46:35', '2023-10-12 16:46:35'),
(11, 2, 71, '2023-10-12 16:47:05', '2023-10-12 16:47:05'),
(12, 2, 49, '2023-10-12 16:47:10', '2023-10-12 16:47:10'),
(13, 2, 36, '2023-10-12 16:47:15', '2023-10-12 16:47:15'),
(14, 2, 27, '2023-10-12 16:47:21', '2023-10-12 16:47:21'),
(15, 1, 73, '2023-10-20 07:18:03', '2023-10-20 07:18:03'),
(16, 10, 22, '2023-10-20 08:15:13', '2023-10-20 08:15:13'),
(17, 116, 26, '2023-10-30 06:08:13', '2023-10-30 06:08:13'),
(18, 1, 72, '2023-12-21 17:53:38', '2023-12-21 17:53:38'),
(19, 141, 75, '2023-12-31 12:46:14', '2023-12-31 12:46:14'),
(20, 143, 70, '2024-01-05 12:21:24', '2024-01-05 12:21:24'),
(21, 1, 9, '2024-01-08 14:36:24', '2024-01-08 14:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('read','unread','replied') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `subject`, `message`, `created_at`, `updated_at`, `status`) VALUES
(23, 1, 'recommended_book', 'ytrtytyryrtyrty', '2024-01-08 14:32:50', '2024-01-08 14:44:59', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(143, '2014_10_12_000000_create_users_table', 1),
(144, '2019_08_19_000000_create_failed_jobs_table', 1),
(145, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(146, '2023_07_16_144054_create_contacts_table', 1),
(147, '2023_07_21_114526_create__user_privacy_table', 1),
(148, '2023_07_30_101602_create_books_table', 1),
(149, '2023_08_04_151144_create_book_users_table', 1),
(150, '2023_08_05_144517_create_book_comments_table', 1),
(151, '2023_10_14_141846_create_navbar_lists_table', 2),
(152, '2023_10_14_152342_drop_navbar_tables', 3),
(153, '2023_12_23_132724_add_status_to_contacts_table', 4),
(154, '2023_12_23_160049_update_contacts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 133, 'personal information', '3914e29617a86da6aed386f04bcdc8f31cf7872e61c558023ff427661054fe45', '[\"*\"]', NULL, NULL, '2023-12-28 11:00:24', '2023-12-28 11:00:24'),
(2, 'App\\Models\\User', 134, 'personal information', '4927bc3c1ea47fa3b616c0d8369368914b4b592dc65ca061ba347c972f8cf470', '[\"*\"]', NULL, NULL, '2023-12-28 12:00:46', '2023-12-28 12:00:46'),
(3, 'App\\Models\\User', 135, 'Create new account', '3ccffa630cb1341123472bacfb9c0d593187445aebaab7055f40fd232862129b', '[\"*\"]', NULL, NULL, '2023-12-28 12:14:54', '2023-12-28 12:14:54'),
(4, 'App\\Models\\User', 136, 'Create new account', '4a54f40db233b21f5c1804f7f7fcc7d7f408742af92a0a4d42002b3f1dc1ff6e', '[\"*\"]', NULL, NULL, '2023-12-28 12:15:07', '2023-12-28 12:15:07'),
(5, 'App\\Models\\User', 1, 'check credentials to login', 'ff54bdcf1eef8656de8c771c1de540fa6afbb2747782e15a585d0c2df8e635e7', '[\"*\"]', NULL, NULL, '2023-12-28 12:16:45', '2023-12-28 12:16:45'),
(6, 'App\\Models\\User', 1, 'check credentials to login', 'a1eb77f95bfb008ee45f192273911bfe547727873afd0abe7a5363a7caa0e23c', '[\"*\"]', NULL, NULL, '2023-12-28 12:17:31', '2023-12-28 12:17:31'),
(7, 'App\\Models\\User', 1, 'check credentials to login', 'f8acf04f6ebd755a199e46f37647a942ca375aa869efc3b2691884c4ef5e0b87', '[\"*\"]', NULL, NULL, '2023-12-28 12:19:08', '2023-12-28 12:19:08'),
(8, 'App\\Models\\User', 1, 'check credentials to login', 'edfd9a0a56c893280db2e87ace1829a6b291cf34a8131a63e6f8946c0570d5ec', '[\"*\"]', NULL, NULL, '2023-12-28 12:20:00', '2023-12-28 12:20:00'),
(9, 'App\\Models\\User', 1, 'check credentials to login', 'c0d06632a7a499f429989f0dce01e55fec7548bcd61feb4188c0002db5f2fe56', '[\"*\"]', NULL, NULL, '2023-12-28 12:20:50', '2023-12-28 12:20:50'),
(10, 'App\\Models\\User', 1, 'check credentials to login', '382536a8885a9702c8c30d4fadfef9885ca491a2a080974b3b422d269fe37658', '[\"*\"]', NULL, NULL, '2023-12-28 12:21:14', '2023-12-28 12:21:14'),
(11, 'App\\Models\\User', 1, 'check credentials to login', '3a929a7f80a931b576f3c18c0eefbdb077ca8a066fac40ab5c7f52c67bb5b7ab', '[\"*\"]', NULL, NULL, '2023-12-28 12:21:47', '2023-12-28 12:21:47'),
(12, 'App\\Models\\User', 1, 'check credentials to login', 'c6b58e68247ed7131ca549ad8507d54a2a92a9644fe64b5026e55177684d080e', '[\"*\"]', NULL, NULL, '2023-12-28 12:22:46', '2023-12-28 12:22:46'),
(13, 'App\\Models\\User', 1, 'check credentials to login', 'e5e821e9b5922195b558286fbae1124589f3ebdc2ae3ace3e8bb9e0787585b1d', '[\"*\"]', NULL, NULL, '2023-12-28 12:32:20', '2023-12-28 12:32:20'),
(14, 'App\\Models\\User', 137, 'Create new account', 'a6770390ca8fd903cceaf10d3319c67dfb9afa3cb442c453646a156b86c2277b', '[\"*\"]', NULL, NULL, '2023-12-29 13:54:54', '2023-12-29 13:54:54'),
(15, 'App\\Models\\User', 138, 'Create new account', '18080deafe73ffb908a5cf3cd3446db3b368a6a653016314a5bc80fc76805e39', '[\"*\"]', NULL, NULL, '2023-12-29 13:55:17', '2023-12-29 13:55:17'),
(16, 'App\\Models\\User', 139, 'Create new account', '1bf3654b6415801214b85b8d6cb49fe3924246e39d64eb3f4722bbceb1c50b7f', '[\"*\"]', NULL, NULL, '2023-12-29 14:48:30', '2023-12-29 14:48:30'),
(17, 'App\\Models\\User', 1, 'check credentials to login', '68156ccd0c828444360dc55b612dadceeb5ae849b6296d1953c40b8d08e2c56b', '[\"*\"]', NULL, NULL, '2023-12-30 12:19:11', '2023-12-30 12:19:11'),
(18, 'App\\Models\\User', 1, 'check credentials to login', 'c6422179647c94037cc1af2f6078516e6b1ab2dd6c92a73c29ce7b384be5fb89', '[\"*\"]', NULL, NULL, '2023-12-30 12:25:43', '2023-12-30 12:25:43'),
(19, 'App\\Models\\User', 1, 'check credentials to login', 'cb37b47f7d51437e5028fffe97b27bcf19ce113252e68666c0b00248994d5d14', '[\"*\"]', NULL, NULL, '2023-12-30 12:29:14', '2023-12-30 12:29:14'),
(20, 'App\\Models\\User', 1, 'check credentials to login', '13cd0d3ffaabd7314c9ddf0620d3e44e735be02fde3f7630a4f98dbe6e51be7c', '[\"*\"]', NULL, NULL, '2023-12-30 13:23:48', '2023-12-30 13:23:48'),
(21, 'App\\Models\\User', 1, 'check credentials to login', '4509b6cd1a223e1d0a19490236b53d5ab97fc25061e0a082c330a7fe014178d9', '[\"*\"]', NULL, NULL, '2023-12-31 12:21:46', '2023-12-31 12:21:46'),
(22, 'App\\Models\\User', 140, 'Create new account', 'ad6bd87cf34f2d9f1687c500bb544598e7f2971f7a5735eca92f47bcfe827e34', '[\"*\"]', NULL, NULL, '2023-12-31 12:22:22', '2023-12-31 12:22:22'),
(23, 'App\\Models\\User', 142, 'Create new account', '679df3351038a16a938ecd4a742d1da4615625d60279c862c4bf8648c6e7425f', '[\"*\"]', NULL, NULL, '2023-12-31 13:03:16', '2023-12-31 13:03:16'),
(24, 'App\\Models\\User', 142, 'check credentials to login', 'eadda21aeaa2364b9d9a97e3f582033bd2c4799f37cbb0f43040b2ff107db6fd', '[\"*\"]', NULL, NULL, '2023-12-31 13:05:14', '2023-12-31 13:05:14'),
(25, 'App\\Models\\User', 142, 'check credentials to login', 'e3528d8db6126ad0a7586853131c920fe2a6d9a3e87b9b4a1d2daac872ffd085', '[\"*\"]', NULL, NULL, '2023-12-31 13:05:53', '2023-12-31 13:05:53'),
(26, 'App\\Models\\User', 144, 'Create new account', '2d2d82b4965c68b734efaa907a54a7662120a0fba1c665d687539bd13bbb88cf', '[\"*\"]', NULL, NULL, '2024-01-08 14:23:38', '2024-01-08 14:23:38'),
(27, 'App\\Models\\User', 1, 'check credentials to login', 'c47c92ac87d1b886789b11e686a21a81d5e852dca1025821cedf0188e9cffa36', '[\"*\"]', NULL, NULL, '2024-01-10 17:40:32', '2024-01-10 17:40:32'),
(28, 'App\\Models\\User', 1, 'check credentials to login', 'c899818ae0144ef5282bd35e0439215af4432f9639038a0811117619a138c444', '[\"*\"]', NULL, NULL, '2024-01-13 14:31:26', '2024-01-13 14:31:26'),
(29, 'App\\Models\\User', 1, 'check credentials to login', 'f9ffec93b205555b354849e71c3d03c7dae11a47092c6598f46beb74d7aebe44', '[\"*\"]', NULL, NULL, '2024-01-13 14:38:31', '2024-01-13 14:38:31'),
(30, 'App\\Models\\User', 1, 'check credentials to login', '079e55f75995eb797f9d8a14cec6e5f248775eaa34ed18ee78d2b5585f7f573f', '[\"*\"]', NULL, NULL, '2024-01-13 14:39:22', '2024-01-13 14:39:22'),
(31, 'App\\Models\\User', 1, 'check credentials to login', '3b68ebfddae9cfbb4a12d2ecdf02301f36f8a4b1e96d68373643da52737f2491', '[\"*\"]', NULL, NULL, '2024-01-13 14:40:02', '2024-01-13 14:40:02'),
(32, 'App\\Models\\User', 1, 'check credentials to login', '915e5dcd730c7aafbcc497f13342065597db519240df813e342fc48f80d55269', '[\"*\"]', NULL, NULL, '2024-01-13 14:50:15', '2024-01-13 14:50:15'),
(33, 'App\\Models\\User', 1, 'check credentials to login', '84531c50d692f4f1e001e284cfa6d3ccd9561723ab9d3e6f58c567b3ccfbf9d9', '[\"*\"]', NULL, NULL, '2024-01-13 14:50:57', '2024-01-13 14:50:57'),
(34, 'App\\Models\\User', 1, 'check credentials to login', '3fa81279d29877aebbc51342b184bc565b2d2905eb43322d34ab6bdc363b2bf2', '[\"*\"]', NULL, NULL, '2024-01-13 14:52:53', '2024-01-13 14:52:53'),
(35, 'App\\Models\\User', 145, 'Create new account', '3e3d5ef2ea49ff6e87e77b80caa2a4bfbb5cd941180bf356191e81191d611d12', '[\"*\"]', NULL, NULL, '2024-01-13 14:55:11', '2024-01-13 14:55:11'),
(36, 'App\\Models\\User', 1, 'check credentials to login', '2730a30508f21956842be42f824c3f61f81de59def5bd9b4fd6a884580731914', '[\"*\"]', NULL, NULL, '2024-01-13 17:00:06', '2024-01-13 17:00:06'),
(37, 'App\\Models\\User', 1, 'check credentials to login', '4cc766006704f60b6f9f074d7327403ce545fb299555a2afbcc12bb6888c03bf', '[\"*\"]', NULL, NULL, '2024-01-13 17:00:06', '2024-01-13 17:00:06'),
(38, 'App\\Models\\User', 1, 'check credentials to login', 'f36630d685e12e81ffe44a0a4d8de064ab3f168edae92b189313b5e112af034f', '[\"*\"]', NULL, NULL, '2024-01-13 17:00:07', '2024-01-13 17:00:07'),
(39, 'App\\Models\\User', 1, 'check credentials to login', '755af70a6790475521afdd50ad270cfc770b50296730bc7d9216afef77ed5482', '[\"*\"]', NULL, NULL, '2024-01-13 17:00:56', '2024-01-13 17:00:56'),
(40, 'App\\Models\\User', 1, 'check credentials to login', '646f6ff39dd489c032a1c966d4bb9c29581837bad2dc15fa5e00edf4d36d70d8', '[\"*\"]', NULL, NULL, '2024-01-14 19:49:04', '2024-01-14 19:49:04'),
(41, 'App\\Models\\User', 1, 'check credentials to login', '72274480b3b3e5a00462d01fd620de301ebefaa478a9581aec7d80d9e2843d23', '[\"*\"]', NULL, NULL, '2024-01-14 20:31:37', '2024-01-14 20:31:37'),
(42, 'App\\Models\\User', 1, 'check credentials to login', '5b2f6d830474a1bd6d13c0d4298bf2df0dfdde4ca66ef67a68b2c2c8ecba4602', '[\"*\"]', NULL, NULL, '2024-01-14 21:04:03', '2024-01-14 21:04:03'),
(43, 'App\\Models\\User', 1, 'check credentials to login', 'c69517cf8995da42495121349a5983ab140aaed7ced82ea9dc7e71c05286be2f', '[\"*\"]', NULL, NULL, '2024-01-14 21:24:37', '2024-01-14 21:24:37'),
(44, 'App\\Models\\User', 1, 'check credentials to login', '2a06a9f168d5e55b4639ff3549a5dd3a98fcb75c1391e1d264090bb05b8fb05d', '[\"*\"]', NULL, NULL, '2024-01-14 21:26:01', '2024-01-14 21:26:01'),
(45, 'App\\Models\\User', 1, 'check credentials to login', 'f28248fc849f2c0e5c39250bdf61e92fa6a6459053456b59a31f204771c0ee42', '[\"*\"]', NULL, NULL, '2024-01-14 21:28:13', '2024-01-14 21:28:13'),
(46, 'App\\Models\\User', 1, 'check credentials to login', 'e00517e174e7b22f76cc0cbf336c4c1c72c32f9c17da5adc728d684261cbc1a6', '[\"*\"]', NULL, NULL, '2024-01-14 21:28:16', '2024-01-14 21:28:16'),
(47, 'App\\Models\\User', 1, 'check credentials to login', 'ce5dcfa7c0e462e79dec439c3743eabe6452fd844c46425396d17a1211ea2001', '[\"*\"]', NULL, NULL, '2024-01-14 21:28:17', '2024-01-14 21:28:17'),
(48, 'App\\Models\\User', 1, 'check credentials to login', 'c8121783bb3f3b5ef6de1ce151ce5c9177d4efcd90ce84c1874dc97a92bd126c', '[\"*\"]', NULL, NULL, '2024-01-14 21:28:18', '2024-01-14 21:28:18'),
(49, 'App\\Models\\User', 1, 'check credentials to login', '756cae1b128b2144a756c09bc87eb396850bb614d11901a3797e197f1f351332', '[\"*\"]', NULL, NULL, '2024-01-14 21:28:19', '2024-01-14 21:28:19'),
(50, 'App\\Models\\User', 1, 'check credentials to login', '20746f3f6491017aa58522377e613c9d8dae23e3672a0b850d1f3f3d0945e83b', '[\"*\"]', NULL, NULL, '2024-01-14 21:41:03', '2024-01-14 21:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '0',
  `ProfileImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favorite_book_genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worst_book` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_book` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `ProfileImage`, `language`, `country`, `city`, `phone`, `birthday`, `gender`, `description`, `age`, `fav_author`, `favorite_book_genre`, `worst_book`, `fav_book`, `active`, `created_at`, `updated_at`) VALUES
(1, 'dany', 'admin@gmail.com', '$2y$10$kTP6iUPrNk6dN.CQYD8u5OGyUe.fwWXx7i0008OFOIGxxfRrzgItK', 1, '17047315922470.jpg', 'Hindi', 'Andorra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'History', NULL, NULL, 'active', '2023-08-07 06:48:12', '2024-01-08 14:33:19'),
(2, 'dany', 'dany@gmail.com', '$2y$10$omklHBGjRlrsjMhRtod8gevLZU.VVvaxzd9QTxlJR2HRuqnqigAoG', 2, NULL, 'French', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-12 11:14:49', '2023-10-12 17:09:54'),
(3, 'Steel Morris', 'pizycigal@mailinator.com', '$2y$10$6fEwHZ9AW.lB10.4wZYCeeylqlMmojC.V90B1u6RH6GLciD1wXu8.', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2023-10-14 12:50:32', '2023-10-14 12:50:32'),
(4, 'dene', 'dene@gmail.com', '$2y$10$4t2j3ixL2aevz1oyYTvE7OOAyYUMlR69qAvcem1LoikLUOGhzsvyG', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-17 03:09:42', '2023-10-17 03:19:02'),
(5, 'dany', 'adminz@gmail.com', '$2y$10$lqU2tr3C0IAe7KP0837NZOlU/VojpJvLGdyLIJ7EMDqPkqt/Qnh/q', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-19 14:49:42', '2024-01-08 14:44:07'),
(6, 'Cameron Stone', 'boqahy@mailinator.com', '$2y$10$1Ab2auXpzttbMiF3.jrZIeAhaFiaQI/SlT5GOeCql/2IQ00Ko4aMS', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-20 07:20:12', '2023-10-20 07:20:12'),
(7, 'Belle Lindsay', 'rowene@mailinator.com', '$2y$10$Kdt/VZT81FDRf/9nF.7x6uF7voXzmf1jQV4NlgjYNGO1hYHwIJAfy', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-20 07:20:52', '2023-10-20 07:20:52'),
(8, 'Mcleod', 'xigyvaw@mailinator.com', '$2y$10$YoyJHfRpuUPsOdLKOMNreeb3PDHcVseU8boyrzDu3kw/0e7NAaHMq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-20 07:21:16', '2023-10-20 07:21:16'),
(9, 'Gay Mosley', 'kubafafo@mailinator.com', '$2y$10$7kDCyTRfsDnAv1zd5pQt7uqqC/vVVByyADt91P1OmpTtm21TaUuFq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-20 07:21:30', '2023-10-20 07:21:30'),
(10, 'Kelly Rose', 'lunig@mailinator.com', '$2y$10$aBBVcCUgClPfPaNa8iWmFu1A2CQZDQr.ZVSXk0B29YdVo7MeqC/LO', 0, '169779811055.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-20 07:21:43', '2023-10-20 07:35:10'),
(11, 'Connor Peters', 'xubib@mailinator.com', '$2y$10$8qM6Ifu.rcpGBO3nQeUg4OtfbFhr7B1X9yuYN0CUwdHyywh8Kf5qa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-20 11:21:31', '2023-10-20 11:21:31'),
(12, 'Prof. Kaylie Walter', 'dejon.howe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(13, 'Carey Ondricka', 'rossie.hoeger@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '1704732269671.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2024-01-08 14:44:29'),
(14, 'Abbigail VonRueden', 'ptorphy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(15, 'Dr. Theresia Donnelly V', 'edach@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(16, 'Samir Bins', 'merl37@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(17, 'Mrs. Rhianna Spinka IV', 'meghan44@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(18, 'Mac Mertz MD', 'obatz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(19, 'Prof. Lenore Ritchie', 'tbaumbach@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(20, 'Frederik Lemke Sr.', 'tsporer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(21, 'Prof. Howell Kunde Jr.', 'bashirian.nikita@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(22, 'Tianna Prosacco', 'yundt.riley@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(23, 'Mr. Lindsey Jerde', 'zmraz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(24, 'Pearline Brekke', 'pkub@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(25, 'Citlalli Bruen Jr.', 'kozey.florine@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(26, 'Dr. Alexandre Maggio', 'hilpert.libbie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(27, 'Aurelio Pfeffer', 'tritchie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(28, 'Odie Franecki', 'austen.rolfson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(29, 'Damion Marvin', 'annamae52@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(30, 'Ethan Legros', 'jerel43@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(31, 'Dr. Alden Moore', 'sanford.samantha@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(32, 'Arielle Fay I', 'gracie91@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(33, 'Favian Bahringer', 'erna.deckow@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(34, 'Dr. Haleigh Gorczany II', 'nnicolas@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(35, 'Helga Yundt', 'ptillman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(36, 'Lawson Strosin', 'cleora22@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(37, 'Kendrick Block', 'loma21@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(38, 'Alyce Aufderhar', 'dlehner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(39, 'Andreane Pagac', 'stanton.joey@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(40, 'Raul Legros', 'sandrine06@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(41, 'Mrs. Jessyca Dare DDS', 'celestino.kohler@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(42, 'Dr. Hershel Brakus', 'giovanny83@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(43, 'Amari Heaney I', 'kuhlman.loraine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(44, 'Gussie Hilpert', 'blanche91@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(45, 'Lucio Abbott', 'hmraz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(46, 'Catalina Gerhold', 'anitzsche@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(47, 'Mr. Floyd Bernier', 'allie18@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(48, 'Benjamin Mosciski PhD', 'trever.kunde@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(49, 'Ms. Kaela McLaughlin', 'rocky03@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(50, 'Richie Spinka', 'murphy.reilly@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(51, 'Prof. Chadd Raynor', 'gladyce28@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(52, 'Filomena Leuschke', 'elbert70@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(53, 'Christy Metz', 'ismitham@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(54, 'Kylie Grant', 'hhoppe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(55, 'Miss Reba McGlynn', 'miller90@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(56, 'Electa Von V', 'maude.johnson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(57, 'Logan Deckow', 'geo44@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(58, 'Giovani Wyman', 'pollich.madie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(59, 'Rhiannon Turcotte', 'gleason.ruthe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(60, 'Jazlyn Bode', 'adriana30@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(61, 'Prof. Aurelia Predovic', 'nella.wuckert@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(62, 'Blanche Hills', 'luis32@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(63, 'Morris Steuber', 'alvina.zulauf@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(64, 'Dr. Zachery Kutch PhD', 'emerald95@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(65, 'Crystal Will', 'baumbach.tre@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(66, 'Miss Kenyatta Olson', 'ilittle@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(67, 'Mrs. Marcella Torp V', 'oreilly.savannah@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(68, 'Ms. Hettie Carroll Sr.', 'lroberts@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(69, 'Prof. Jace Boehm', 'hsauer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(70, 'Kianna Toy', 'ustark@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(71, 'Dr. Theresa Halvorson', 'eriberto.streich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(72, 'Mrs. Valerie Schumm IV', 'bernier.micaela@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(73, 'Jordy Kreiger', 'lynch.gail@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(74, 'Antonetta Morar', 'fay.oleta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(75, 'Lucas Heathcote', 'ettie.hagenes@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(76, 'Ms. Bernadette Jerde', 'fmayer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(77, 'Domenic Murazik', 'qemard@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(78, 'Cali Morar', 'owen89@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(79, 'Letitia Ullrich', 'timothy62@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(80, 'Mr. Arnulfo Gaylord', 'kernser@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(81, 'Marcia Aufderhar', 'constantin39@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(82, 'Ozella Wilkinson', 'makenzie12@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(83, 'Alexandria Altenwerth', 'green.moen@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(84, 'Davon Abbott', 'sim89@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(85, 'Ms. Christiana Zieme', 'greenfelder.terrence@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(86, 'Samantha Dibbert', 'frankie29@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(87, 'Rosella Runolfsdottir', 'jamar36@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(88, 'Aliya Roberts', 'mayer.cruz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(89, 'Mr. Sim Gutkowski', 'pdavis@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(90, 'Dr. Trisha Rowe', 'renee48@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(91, 'Prof. Kathleen Pacocha PhD', 'bechtelar.judy@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(92, 'Libbie Senger', 'anna54@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(93, 'Dr. Lafayette Padberg', 'sarai40@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(94, 'Prof. Deonte Beahan I', 'sonny78@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(95, 'Mrs. Mina Erdman', 'qcorkery@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(96, 'Kieran O\'Reilly Sr.', 'qtromp@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(97, 'Rafaela West', 'grutherford@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(98, 'Mr. Bart Fahey', 'josefina53@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(99, 'Kiara Gerlach', 'lisandro67@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(100, 'Mabelle Windler', 'breitenberg.emerald@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(101, 'Aubrey Davis', 'jed16@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(102, 'Brandi Dickinson', 'gullrich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(103, 'Zackary Satterfield', 'qbode@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(104, 'Everardo Gutkowski', 'kovacek.brendon@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(105, 'Murl Jerde', 'hilpert.adeline@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(106, 'Hector Sauer', 'rfeeney@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-24 05:31:23'),
(107, 'Alysson Dach', 'hettinger.kiley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(108, 'Louvenia Larkin Sr.', 'emmerich.dorothea@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-23 06:59:41', '2023-10-24 05:31:21'),
(109, 'Dr. Ena Christiansen', 'pfannerstill.samanta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2023-10-23 06:59:41', '2023-10-24 05:31:30'),
(110, 'Ms. Reanna Block I', 'katelyn.wuckert@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2023-10-23 06:59:41', '2023-10-24 05:31:28'),
(111, 'Prof. Mathias Jaskolski', 'tevin59@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '17032613508882.jpg', NULL, 'Algeria', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'inactive', '2023-10-23 06:59:41', '2023-12-22 14:09:10'),
(112, 'Igor Huff', 'zakumi@mailinator.com', '$2y$10$b4A6DYU11cvP0jVHYbCeT.ovPvfPEdvaQc3leJWJ8jADS6jj1M3WG', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-29 09:22:20', '2023-10-29 09:22:20'),
(113, 'Byron Ewing', 'rypif@mailinator.com', '$2y$10$33vTeplWGfd0tEPTwAXsNuxugccby0aa0EHrfSPd5/G8lWUp8pc5q', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-29 09:22:58', '2023-10-29 09:22:58'),
(114, 'Willa Savage', 'losedy@mailinator.com', '$2y$10$ovjrfEAt6B83ncbpTXXo9uYWEYoY8t69NiR8.F1euFXlP4yNRzNcu', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-29 09:24:22', '2023-10-29 09:24:22'),
(115, 'Avye Golden', 'mofe@mailinator.com', '$2y$10$z9QINFGoY5wg6r98te4YKOKbphsKTUJNRwKl4PQ/YN70bYDYu14pO', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-29 09:25:27', '2023-10-29 09:25:27'),
(116, 'Andrew Chase', 'leruxy@mailinator.com', '$2y$10$4L6uGFGRky6HE/dUvgr9T.79E1G.R2/8bO8mxk2mIzfw0wwi.RIOW', 0, '16986539676286.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 06:04:45', '2023-10-30 06:19:27'),
(117, 'Maxwell Small', 'vewosip@mailinator.com', '$2y$10$QKGHjkiTx8Z/MWkPeSM.CuS70Or0oMP4KTcvU1IqB2B11WnGNbQW2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:09:08', '2023-10-30 09:09:08'),
(118, 'Jena Sloan', 'zoqa@mailinator.com', '$2y$10$iWelpkkp.sVV8Sa4lsz3IekkrgPswTj1Ojcw2o8mNx.Iv2Pw3ZVGq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:09:22', '2023-10-30 09:09:22'),
(119, 'Malik Melendez', 'pywekixy@mailinator.com', '$2y$10$L5MZ8.IYZDaHxbI/25exD.o9nZzL5sUvqeNS/xP69ibZlziQNDI96', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:25:10', '2023-10-30 09:25:10'),
(120, 'Levi Compton', 'quriwin@mailinator.com', '$2y$10$6Siln5FIMslpBesKo9yWu.WyZ.U5uOo5NxlcCuzQejVsDjXYsOyEa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:28:59', '2023-10-30 09:28:59'),
(121, 'Kiona Johns', 'dygute@mailinator.com', '$2y$10$fd4EnuYLG2E4R2dWOLcKyOnzoWr.tGVo3VpVPX/bvDDtRUghlbo2e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:37:07', '2023-10-30 09:37:07'),
(122, 'Madonna Gamble', 'gyxoj@mailinator.com', '$2y$10$wfYYv6YUjpKs7tCl7664JOT7xtxGAnS/zJ30WTtpwmfhhYkdlE9ey', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:37:58', '2023-10-30 09:37:58'),
(123, 'Ivana Callahan', 'zaferycym@mailinator.com', '$2y$10$CygD.HazVdnC/Vivrr/JVeX73yd.lPQ2UexeY/nMCmxFMB/Ttx7cG', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:38:21', '2023-10-30 09:38:21'),
(124, 'Mari Barron', 'gypu@mailinator.com', '$2y$10$8gS.e3vOqimXloYR3NDCxeMZinrFBXR/w7m/6SDA/o/TgJ5mzMO9O', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:39:57', '2023-10-30 09:39:57'),
(125, 'Nicole Mcbride', 'wiwyvu@mailinator.com', '$2y$10$Oa51T0P6w/48o0HtEWCg5.J.eUoUjbdW62rqLjkqw6kUoeyt.EZ9O', 0, '16986677923718.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-10-30 09:42:42', '2023-12-21 17:52:35'),
(126, 'danyseif', 'danysmok@gmail.com', '$2y$10$Wq7PnXrHPmVOyI0WeMg.2OYPixHjaKdr7q30LqcfH9XH2kGvo0sdO', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-23 13:53:55', '2023-12-23 13:53:55'),
(127, 'dfsdfsdf', 'denee@gmail.com', '$2y$10$A9RlK07i8mExgaQ6tjmGr.N5fkyq8HcKJb4wR1jI3KBRHRg7J41ky', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-27 08:01:05', '2023-12-27 08:01:05'),
(128, 'dantys', 'deneee@gmail.com', '$2y$10$lRAmTuXEun5umJ2i2rhtZO6vEdmTZf8Lvaq6pF5U/m0ryQ4.4zPMK', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 10:16:28', '2023-12-28 10:16:28'),
(129, 'Cynthia Russell', 'lukyhizyn@mailinator.com', '$2y$10$QB6kAl5SfieEofFIzdYZuuOwBPEP7tM4S3Bu8B28OEXdWc76u4Uaq', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 10:17:45', '2023-12-28 10:17:45'),
(130, 'Lucas Walters', 'senyduqo@mailinator.com', '$2y$10$EZktPU40YlfOyj6qWABJ6OYMBctE0nLRvVOl7WlX2MB9T7Qndgg.y', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 10:48:22', '2023-12-28 10:48:22'),
(131, 'Lucas Walters', 'sero@mailinator.com', '$2y$10$EZ/RVkupkzBEG6EyoiSsgOhRjlv.zTqFCDVXUM3s2Mb0s5N69OA22', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 10:57:15', '2023-12-28 10:57:15'),
(132, 'Lucas Walters', 'serrrrooo@mailinator.com', '$2y$10$WnA9Mhgei747w1GB.qwBiefp4BOOSqct3Kd1dDyKDnj98xaoqjfry', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 10:58:12', '2023-12-31 12:26:53'),
(133, 'Lucas Walters', 'serrooo@mailinator.com', '$2y$10$PEZpPJgfhJD6UbkDHT4Oy.199AeDom70ZsnXdf8QZKaBbT8yLmiVC', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 11:00:23', '2023-12-28 11:00:23'),
(134, 'Lucas Walters', 'darki@mailinator.com', '$2y$10$/4LyH0.RWD4aor8EbBGmd.pFJKf7HbWSA5i6z1o.XKtxJWkA2H4wW', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 12:00:45', '2023-12-28 12:00:45'),
(135, 'Lucas', 'dene@mailinator.com', '$2y$10$W6yXeLw.32C0UCtSSJgqquxF0Cf.KKBl8saAus.i8Uet4R3tsci7W', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 12:14:54', '2023-12-28 12:14:54'),
(136, 'Lucas', 'denesmo@mailinator.com', '$2y$10$R/LKwDTJmheujZdJ/HhzouaHvM6gYdZlwBZ27di9LUaYLmFQ3xFgO', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-28 12:15:07', '2023-12-28 12:15:07'),
(137, 'dany', 'dsjdjs@gmail.com', '$2y$10$YLJ27YvfZIl1VTYza2yFVuA.25hErGUI3O1JsWXMocYuzjpe62PEW', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-29 13:54:53', '2023-12-29 13:54:53'),
(138, 'dany', 'dsjdjs@gmil.com', '$2y$10$BX.QJBCi82mOp4TI4cOyBO2jv2NGiR/XuzbLv.rk0SLujGII.m.E.', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-29 13:55:17', '2023-12-29 13:55:17'),
(139, 'ddfsdf', 'ayre@gmail.com', '$2y$10$hrZdBIfRpwnDTfohyzZ.r.tH6tDiCsjLA3VWOiHMiGC3hASKtNN4y', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-29 14:48:30', '2023-12-29 14:48:30'),
(140, 'hamza', 'hamzah@gmail.com', '$2y$10$tCsjwFStulMt.7NLn5KyRu4hGhdQnVysI/qgmVDT4sz/UZauR.gVW', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-31 12:22:22', '2023-12-31 12:22:22'),
(141, 'ahmadseif', 'ahmadseif@gmail.com', '$2y$10$o9Ui0LyuYmKFfqMkjf1YQeftZKefY2HitQASQsd1u63HMhLarAuZ6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-31 12:44:50', '2023-12-31 12:44:50'),
(142, 'mahmoud', 'deddddeee@gmail.com', '$2y$10$g2GvrwVW/bDRyMFn3kOAPer3FnGie.qCA3BD6wMWmQB.jEgbXR/NW', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2023-12-31 13:03:16', '2023-12-31 13:03:16'),
(143, 'Malih', 'malih@gmail.com', '$2y$10$jyHQY5GvePgcfdu7jLMfEeT14N/QjIDVI/jRGD4mk8fN1Fn/AzcF2', 0, '17044644474683.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-01-05 12:20:06', '2024-01-05 12:20:47'),
(144, 'danyseif', 'mhmdbashir@gmail.com', '$2y$10$BqFmg9yXFQqvLa0Zr.rhKOFaG15tKCRk0azistgeh5NuNc1lViVGO', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-01-08 14:23:37', '2024-01-08 14:23:37'),
(145, 'danulki', 'danulko@gmail.com', '$2y$10$S9.I7NDEgTbJxvQIrGqnRe32tzewtIYZnuTYXJaP.LD5pFkgtKfoa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2024-01-13 14:55:10', '2024-01-13 14:55:10');

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
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-08-07 06:48:12', '2024-01-08 14:33:49'),
(2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-12 11:14:49', '2023-10-12 17:10:00'),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-14 12:50:32', '2023-10-14 12:50:32'),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-17 03:09:42', '2023-10-17 03:15:09'),
(5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-19 14:49:42', '2023-10-19 14:49:42'),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-20 07:20:12', '2023-10-20 07:20:12'),
(7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-20 07:20:52', '2023-10-20 07:20:52'),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-20 07:21:16', '2023-10-20 07:21:16'),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-20 07:21:30', '2023-10-20 07:21:30'),
(10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-20 07:21:43', '2023-10-20 07:21:43'),
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-20 11:21:31', '2023-10-20 11:21:31'),
(12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(19, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(21, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(23, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(27, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(28, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(29, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(31, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(36, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(39, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(41, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(43, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(44, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(46, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(47, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(48, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(49, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(51, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(52, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(54, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(55, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(56, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(57, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(58, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(59, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(61, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(62, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(63, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(64, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(65, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(66, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(67, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(68, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(69, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(70, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(71, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(72, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(73, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(74, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(75, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(77, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(78, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(79, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(81, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(82, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(84, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(85, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(87, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(88, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(89, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(90, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(91, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(93, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(94, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(95, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(96, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(97, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(98, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(99, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(101, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(102, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(103, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(104, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(106, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(107, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(108, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(109, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(111, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-23 06:59:41', '2023-10-23 06:59:41'),
(112, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-29 09:22:20', '2023-10-29 09:22:20'),
(113, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-29 09:22:58', '2023-10-29 09:22:58'),
(114, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-29 09:24:22', '2023-10-29 09:24:22'),
(115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-29 09:25:27', '2023-10-29 09:25:27'),
(116, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 06:04:45', '2023-10-30 06:04:45'),
(117, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:09:08', '2023-10-30 09:09:08'),
(118, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:09:22', '2023-10-30 09:09:22'),
(119, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:25:10', '2023-10-30 09:25:10'),
(120, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:28:59', '2023-10-30 09:28:59'),
(121, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:37:07', '2023-10-30 09:37:07'),
(122, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:37:58', '2023-10-30 09:37:58'),
(123, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:38:21', '2023-10-30 09:38:21'),
(124, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:39:57', '2023-10-30 09:39:57'),
(125, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-30 09:42:42', '2023-10-30 09:42:42'),
(126, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-23 13:53:55', '2023-12-23 13:53:55'),
(127, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-27 08:01:06', '2023-12-27 08:01:06'),
(128, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 10:16:28', '2023-12-28 10:16:28'),
(129, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 10:17:45', '2023-12-28 10:17:45'),
(130, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 10:48:22', '2023-12-28 10:48:22'),
(131, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 10:57:15', '2023-12-28 10:57:15'),
(132, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 10:58:12', '2023-12-28 10:58:12'),
(133, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 11:00:23', '2023-12-28 11:00:23'),
(134, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 12:00:45', '2023-12-28 12:00:45'),
(135, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 12:14:54', '2023-12-28 12:14:54'),
(136, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-28 12:15:07', '2023-12-28 12:15:07'),
(137, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-29 13:54:53', '2023-12-29 13:54:53'),
(138, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-29 13:55:17', '2023-12-29 13:55:17'),
(139, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-29 14:48:30', '2023-12-29 14:48:30'),
(140, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-31 12:22:22', '2023-12-31 12:22:22'),
(141, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-31 12:44:50', '2023-12-31 12:44:50'),
(142, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-31 13:03:16', '2023-12-31 13:03:16'),
(143, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-05 12:20:06', '2024-01-05 12:20:06'),
(144, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-08 14:23:37', '2024-01-08 14:23:37'),
(145, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-13 14:55:11', '2024-01-13 14:55:11');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `book_comments`
--
ALTER TABLE `book_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `book_users`
--
ALTER TABLE `book_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `user_privacy`
--
ALTER TABLE `user_privacy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

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
