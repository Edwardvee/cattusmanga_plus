-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2024 a las 21:39:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cattusmanga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `badges`
--

CREATE TABLE `badges` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(64) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `isAvaiable` tinyint(1) NOT NULL,
  `isRemoved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `c_ID` int(10) UNSIGNED NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Manga_ID` int(10) UNSIGNED NOT NULL,
  `content` varchar(512) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `mangachapter` smallint(6) DEFAULT NULL,
  `nestedAt` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`c_ID`, `User_ID`, `Manga_ID`, `content`, `created_at`, `deleted_at`, `mangachapter`, `nestedAt`) VALUES
(26, 20131, 10006, 'yo no estaba en esa pag\r\n', '2022-10-18 08:54:46', NULL, 9, NULL),
(27, 20129, 10004, ':v', '2022-10-23 01:22:47', NULL, 4, NULL),
(28, 20129, 10009, 'gfgdfgd', '2022-10-24 21:57:10', NULL, 32, NULL),
(29, 20129, 10005, 'gdfgfdf', '2022-10-24 21:57:16', NULL, 4, NULL),
(30, 20129, 10010, '<button class=\"btn btn-primary btn-sm dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n    Ordenar por:\r\n  </button>\r\n  <ul class=\"dropdown-menu\">\r\n    <li><a class=\"dropdown-item\" href=\"tienda.php?type=<?php echo $_GET[\'type\']?>&lowest=true\">Menor precio</a>\r\n    <li><a class=\"dropdown-item\" href=\"tienda.php?type=<?php echo $_GET[\'type\']?>&highest=true\">Mayor precio</a>\r\n  </ul>\r\n</div>', '2022-10-24 23:02:19', NULL, 2, NULL),
(31, 20129, 10005, 'https://images3.memedroid.com/images/UPLOADED285/62eac1a45b08d.jpeg', '2022-10-24 23:05:52', NULL, 3, NULL),
(32, 20129, 10005, '<img src=\"https://images3.memedroid.com/images/UPLOADED285/62eac1a45b08d.jpeg\">', '2022-10-24 23:06:04', NULL, 4, NULL),
(33, 20129, 10010, '<img src=\"https://images3.memedroid.com/images/UPLOADED285/62eac1a45b08d.jpeg\">', '2022-10-24 23:06:36', NULL, 3, NULL),
(34, 20129, 10000, 'as', '2022-10-24 23:22:40', '2022-10-25 02:30:50', 1, NULL),
(35, 20129, 10010, '<asds>', '2022-10-24 23:28:42', NULL, 2, NULL),
(36, 20129, 10010, 'asdasd', '2022-10-24 23:30:43', NULL, 2, NULL),
(37, 20129, 10005, 'https://images3.memedroid.com/images/UPLOADED285/62eac1a45b08d.jpeg', '2022-10-24 23:40:45', NULL, 8, NULL),
(38, 20127, 10000, 'dasd', '2022-10-25 01:29:03', NULL, 1, NULL),
(39, 20127, 10000, 'asdasd', '2022-10-25 01:29:05', NULL, 1, NULL),
(40, 20127, 10000, 'asdsda', '2022-10-25 01:29:08', NULL, 1, NULL),
(41, 20127, 10008, 'UTYU', '2022-10-25 01:31:07', NULL, 214, NULL),
(42, 20127, 10000, 'rere', '2022-10-25 01:44:33', '2022-10-20 01:47:16', 1, NULL),
(43, 20129, 10006, 'erterter', '2022-10-25 02:40:59', NULL, 7, NULL),
(44, 20129, 10000, 'a\r\n', '2022-10-31 08:54:53', NULL, 3, NULL),
(45, 20129, 10014, ':v\r\n', '2022-10-31 09:07:25', NULL, 2, NULL),
(46, 20135, 10015, 'a\r\n', '2022-11-05 02:23:22', NULL, 1, NULL),
(47, 20166, 10039, 'caca', '2024-09-16 06:02:53', NULL, 1, NULL),
(48, 20168, 10041, 'XD', '2024-11-08 11:14:11', NULL, 1, NULL),
(49, 20169, 10010, 'olpok', '2024-11-08 11:42:51', NULL, 1, NULL),
(50, 20169, 10041, 'asdsads', '2024-11-08 12:05:53', NULL, 1, NULL),
(51, 20169, 10013, 'okkkl', '2024-11-08 14:18:16', NULL, 1, NULL),
(52, 20169, 10047, 'XDDD', '2024-11-08 14:28:55', NULL, 1, NULL),
(53, 20169, 10015, 'asdasda', '2024-11-08 14:42:21', NULL, 3, NULL),
(54, 20169, 10015, 'benja', '2024-11-08 16:20:38', NULL, 3, NULL),
(55, 20169, 10015, 'gabi', '2024-11-08 16:21:17', NULL, 3, NULL),
(56, 20169, 10046, 'Soy porofilo\n', '2024-11-08 16:40:24', NULL, 1, NULL),
(57, 20169, 10046, 'Poro poro porofilo', '2024-11-08 16:40:41', NULL, 1, NULL),
(58, 20169, 10046, 'odio a daniel\n', '2024-11-08 16:40:49', NULL, 1, NULL),
(59, 20169, 10046, 'Los doctores me odian', '2024-11-08 16:41:04', NULL, 1, NULL),
(60, 20169, 10047, 'me llevan los poros', '2024-11-08 16:43:54', NULL, 1, NULL),
(61, 20169, 10047, 'kkkkkk\n', '2024-11-08 16:43:58', NULL, 1, NULL),
(62, 20169, 10047, 'de que te ries\n', '2024-11-08 16:44:04', NULL, 1, NULL),
(63, 20169, 10047, 'nada we\n', '2024-11-08 16:44:07', NULL, 1, NULL),
(64, 20169, 10013, 'bodrioki the grappler\n', '2024-11-08 17:29:33', NULL, 5, NULL),
(65, 20169, 10046, 'midjutsu no plaizen\n', '2024-11-08 17:30:23', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemsshop`
--

CREATE TABLE `itemsshop` (
  `ID` mediumint(8) UNSIGNED NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Price` mediumint(8) UNSIGNED NOT NULL,
  `showitem` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL,
  `imgcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itemsshop`
--

INSERT INTO `itemsshop` (`ID`, `Name`, `Description`, `Price`, `showitem`, `type`, `imgcode`) VALUES
(1, 'Takagi-San', 'Takagi-san de \"Karakai Jōzu no Takagi-san\"\r\n', 100, 1, 2, 'Takagi'),
(2, 'Goku', 'Foto de goku', 900, 1, 2, 'goku'),
(3, 'Anya', 'La foto de anya', 12, 1, 2, 'anya'),
(4, 'Perro sarabambiche', 'Tu no me metiste cabra', 200, 1, 2, 'baki'),
(5, 'Guts', 'Seguramente el sufrió mas que tu...', 300, 1, 2, 'berserk'),
(6, 'Los mamados del 8', 'Los mas mamados de la vecindad', 400, 1, 3, 'chavo'),
(7, 'Tokyo ghoul fondo 1', 'Fondo de kaneki', 10, 1, 3, 'kaneki'),
(8, 'Re: Zero Fondo 1', 'Fondo de Re: Zero', 15, 1, 3, 'rezero'),
(9, 'Fondo de konosuba', 'Fondo de konosuba 1', 50, 1, 3, 'konosuba1'),
(10, 'Pakkun', 'Perro de Kakashi', 999, 1, 2, 'pakkunazi'),
(11, 'Tomoko', 'Protagonista de Wacamole', 70, 1, 2, 'wacamole'),
(13, 'Watamote wallpaper 2', 'Fondo de pantalla 2 de Tomoko', 120, 1, 3, 'tomokosad'),
(14, 'DBZ wallpaper', 'La Kame-House de Dragon Ball Z', 80, 1, 3, 'dbzwallpaper'),
(15, 'Gate perfil', 'Rori Mercuri de Gate (El mejor personaje de Gate)', 210, 1, 2, 'gate'),
(16, 'Wallpaper One Punch Man', 'Saitama de One Punch Man', 100, 1, 3, 'saitamawp'),
(17, 'Tatsumaki', 'Personaje de One Punch Man', 330, 1, 2, 'tatsumakiwp'),
(18, 'Chika Fushiwara', 'Personaje principal de Kaguya-sama: Love is War', 80, 1, 2, 'rosa'),
(19, 'Komi wallpaper', 'Personaje principal de Komi-san no puede comunicarse ', 200, 1, 3, 'komiwp'),
(20, 'Komi y Tadano Wallpaper', 'Personajes de Komi-san no puede comunicarse, con disfraces de Amoug Us', 40, 1, 3, 'komitadawp'),
(21, 'Voley Wallpaper', 'Voley', 40, 1, 3, 'haykuwp'),
(22, 'Konosuba Fondo', 'Aqua descansando', 910, 1, 3, 'aqua'),
(23, 'Blue Lock', 'Wallpaper de los jugadores png', 40, 1, 3, 'BlueLock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemtypes`
--

CREATE TABLE `itemtypes` (
  `id` int(11) NOT NULL,
  `category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itemtypes`
--

INSERT INTO `itemtypes` (`id`, `category`) VALUES
(1, 'Manga'),
(2, 'Foto de perfil'),
(3, 'Fondos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manga`
--

CREATE TABLE `manga` (
  `ID` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `lastUpdate` date DEFAULT NULL,
  `uploadDate` datetime NOT NULL,
  `User_ID` int(10) UNSIGNED DEFAULT NULL,
  `desactivation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `manga`
--

INSERT INTO `manga` (`ID`, `title`, `description`, `lastUpdate`, `uploadDate`, `User_ID`, `desactivation_date`) VALUES
(10000, 'Watamote', 'Kuroki Tomoko es una chica de preparatoria súper popular, con 50 años de experiencia en citas y con 100 chicos... pero en el mundo de los juegos otome. En la vida real es una persona cerrada y tímida, quien entra perfectamente en la definición mojyo (una mujer repulsiva).', '2022-11-08', '2022-08-23 13:43:57', 20129, NULL),
(10001, 'Tokyo Revengers', 'Un día como otro cualquiera en su rutina monótona, Takemichi Hanagaki ve en las noticias que su novia del instituto ha perdido la vida en un accidente. A partir de ese momento, Takemichi sufre un acontecimiento que le hará volver atrás en el tiempo, siendo una segunda oportunidad para remediar todo lo que desencadenará el accidente en el futuro y evitar la muerte de su, en ese momento (en el pasado), pareja.', NULL, '2022-08-23 13:40:51', NULL, NULL),
(10004, 'Mokushiroku no Yonkishi', 'Argumento. Percival, un amable chico, vive con su abuelo en un lugar remoto llamado \"God\'s Finger\". Sin embargo, el mundo no le permitirá vivir en paz, pues su encuentro con un misterioso caballero cambia su destino y se revela un impactante secreto, haciendo que el niño emprenda un viaje interminable.', NULL, '2022-10-12 05:59:01', NULL, NULL),
(10005, 'One Piece', 'One Piece es la historia de un chico llamado Monkey D. Luffy, quién se inspiró en Shanks, un pirata que le salvó la vida, para convertirse en el Rey de los Piratas. Al comienzo de la serie, veinticuatro años antes de la historia actual, un pirata llamado Gol D. Roger, conocido como el Rey de los Piratas, fue ejecutado, pero antes de su muerte, le dijo a la multitud de su tesoro, el One Piece. Sus palabras desataron lo que sería conocida como «la Gran Era de la Piratería», innumerables piratas se dispusieron a buscar el tesoro causando grandes problemas al Gobierno Mundial. Monkey D. Luffy se convierte en uno de ellos, deseando ser el próximo Rey de los Piratas y se dispone a reunir compañeros de tripulación y comenzar sus aventuras.', NULL, '2022-10-12 06:42:11', NULL, NULL),
(10006, 'Tokyo Ghoul', 'En Tokio hay varias muertes, cometidas por Ghouls, seres desconocidos que sobreviven a base de carne humana. Un día Ken Kaneki, un joven de 18 años conoce a una chica llamada Rize Kamishiro en una cafetería y la invita a salir. Tras una cita aparentemente normal, Kaneki se ofrece a acompañarla a su casa.', '2024-11-08', '2022-10-12 06:42:11', NULL, NULL),
(10007, 'Totsukuni No Shoujo - Tomo 01', 'En un mundo dividido entre los renios de \"Dentro\" y \"Fuera\", está prohibido que los habitantes de ambos reinos crucen al otro. Una niña llamada Shiva vive en el reino que no le pertenece, en un pueblo vacío con un guardián demoníaco llamado sólo como \"Sensei\", con el cuál tiene una estrecha relación.', NULL, '2022-10-12 06:45:07', NULL, NULL),
(10008, 'Komi-san wa, Komyushō Desu', 'En un instituto lleno de personajes peculiares, Tadano trata de ayudar a su tímida y asocial compañera de clase Komi a lograr su objetivo: hacerse amiga de 100 personas.\r\n', NULL, '2022-10-16 07:01:40', NULL, NULL),
(10009, 'Boruto: Next generations', 'Boruto Uzumaki, hijo de Naruto Uzumaki -Séptimo Hokage-, está decidido a seguir los pasos para convertirse en un ninja. Por eso, se ha inscrito en la Academia Ninja. No obstante, debido a ser hijo de quien es, otros estudiantes lo menosprecian, pero pronto se hace un hueco gracias a su valía y méritos propios.', '2022-11-08', '2022-10-16 21:41:21', NULL, NULL),
(10010, 'Dragon Ball Super', 'Dragon Ball Super (ドラゴンボール 超 スーパー Doragon Bōru Sūpā) es una serie de manga japonesa escrita por Akira Toriyama e ilustrada por Toyotarō. Se trata de una secuela del manga original de Dragon Ball de Toriyama, que sigue las aventuras de Goku y sus amigos durante el lapso de diez años tras la derrota de Majin Boo.', NULL, '2022-10-16 21:44:39', NULL, NULL),
(10012, 'Hajime no Ippo', 'Ippo Makunouchi (幕之内 一歩 Makunouchi Ippo) es un chico muy reservado y muy tímido de 16 años que trabaja con su madre en un negocio familiar de botes para pesca llamado \" tienda de pesca makunouchi \" Debido a ello él nunca tiene tiempo libre para dedicarse a los deportes o hacer amigos.', '2022-11-08', '2022-10-23 13:43:57', NULL, NULL),
(10013, 'Baki the Grappler', 'Baki Hanma, es un luchador jóven que se muere de ganas por seguir los pasos de su padre, Yujiro Hanma, y convertirse en el luchador más fuerte del mundo. A través de esto, él se entrena incansablemente y lucha constantemente para afilar sus habilidades y desarrollar su cuerpo para alcanzar estos objetivos. Muchas batallas intensas le deparan a Baki; como él va buscando ser el mejor para, en última instancia, tomar el título de “Rey” de su padre; Baki Hanma, hijo del grappler más fuerte del mundo, trata de reclamar el trono de su padre. Para conseguirlo, él tiene que luchar mucho, y hacer muchos amigos y enemigos en el proceso.', '2022-11-08', '2022-10-23 17:57:58', NULL, NULL),
(10014, 'Shingeki no Kyojin', 'Hace cien años, los Titanes aparecieron. Ante esta invasión, la humanidad se vio obligada a esconderse tras enormes muros para no convertirse en alimento. De esta manera los seres humanos pudieron volver a conocer la paz y la prosperidad, hasta el punto de casi olvidar la verdadera razón por la que vivían encerrados. Entonces aparece Eren Jaeger, un joven que sueña con el mundo exterior, hastiado del conformismo.', NULL, '2022-10-23 17:57:58', NULL, NULL),
(10015, 'Kono Subarashii Sekai ni Shukufuku wo!', 'La serie sigue a Kazuma Satō, un joven otaku que es enviado a un mundo de fantasía con elementos similares a los videojuegos MMORPG después de su muerte (en un ridículo accidente), donde se forma un grupo disfuncional con una diosa, una archimaga y una paladín.', '2024-11-08', '2022-11-01 17:57:58', NULL, NULL),
(10016, 'Fairy Tail: Happy no Daiboken', 'En cuanto a Fairy Tail: Happy no Daiboken es un spin-off protagonizado por Happy, quien ha sido separado de Natsu y tiene que sobrevivir en un mundo lleno de animales.', '2022-11-08', '2022-11-01 17:57:58', NULL, NULL),
(10017, 'Ijiranaide, Nagatoro-san', 'A la estudiante de preparatoria Hayase Nagatoro le encanta pasar su tiempo libre haciendo una cosa, ¡y eso es molestar a su Senpai! Después de que Nagatoro y sus amigos se toparan con los dibujos del aspirante a artista, disfrutan molestando sin piedad al tímido Senpai.', NULL, '2022-11-01 17:57:58', NULL, NULL),
(10041, 'DANDADAN', 'Takakura es un joven amante de lo oculto que no cree en fantasmas, mientras que su amiga, Ayase, no cree en los alienígenas, pero juntos se toparán con un misterio que desafiará todas sus creencias y convenciones. ¡¡Comienza una historia adolescente terrorífica!!', NULL, '2024-11-08 15:08:58', NULL, NULL),
(10042, 'Sailor Moon', 'Usagi Tsukino era una chica común y corriente hasta que una gata parlante llamada Luna le dice que ella es Sailor Moon y le confiere los poderes para transformarse en su nueva identidad. Como tal, debe enfrentar a diversos enemigos e impartir justicia en el nombre de la luna y de la misteriosa Princesa de la Luna. El transcurso de la historia va llevando a Usagi a conocer a otras chicas destinadas a ser Sailor Senshi (Sailor Scouts), las que forman equipo con ella y las que prefieren actuar por su cuenta. También surge el clásico personaje masculino que la salva a último momento, Tuxedo Mask (Tuxedo Kamen), por el que Usagi se vuelve loca, y la historia va desentrañando el por qué de que todos hayan sido predestinados a pelear por la justicia.', '2024-11-08', '2024-11-08 16:01:01', 1, NULL),
(10043, 'Azumanga Daioh!', '\r\nChiyo Mihama es una niña prodigio que se ha saltado varios cursos para acabar en el instituto. En su primer día, descubre que su clase está llena de individuos excéntricos. Sakaki, que sobresale por encima de Chiyo, es distante e intimidante; Tomo Takino es ruidosa y molesta; Ayumu «Osaka» Kasuga es despistado pero se le da muy bien resolver acertijos; Koyomi «Yomi» Mizuhara está obsesionada con las dietas y le encanta el karaoke a pesar de cantar fatal; y Kagura, que es una marimacho competitiva. A medida que los compañeros de clase se hacen buenos amigos, viven juntos su día a día: el colegio, los estudios, los viajes de verano y todo tipo de travesuras.\r\n\r\nTraducción realizada con la versión gratuita del traductor DeepL.com', NULL, '2024-11-08 16:10:08', NULL, NULL),
(10044, 'Kimetsu No Yaiba', 'Kimetsu no Yaiba, también conocida bajo su nombre en inglés Demon Slayer, o en español Guardianes de la noche, es una serie de manga escrita e ilustrada por Koyoharu Gotōge, cuya publicación comenzó el 15 de febrero de 2016 en la revista semanal Shūkan Shōnen Jump de la editorial Shūeisha.', NULL, '2024-11-08 16:21:59', NULL, NULL),
(10045, 'Naruto', 'Naruto Uzumaki es un ninja adolescente que tiene encerrado en su interior al Zorro de Nueve Colas.\r\nDoce años antes del inicio de la serie, este demonio atacó a la Aldea Oculta de la Hoja, matando a muchas\r\npersonas. Como consecuencia, el líder de la aldea (el Cuarto Hokage) sacrificó su vida utilizando el Shiki Fujin para sellarlo dentro de Naruto cuando era un recién nacido, con lo que esperaba\r\ndetener la masacre.', NULL, '2024-11-08 12:38:11', 20169, NULL),
(10046, 'Jujutsu Kaisen', 'Yuuji Itadori es un estudiante con unas habilidades físicas excepcionales. Todos los días, como rutina, va al hospital a visitar a su abuelo enfermo y decide apuntarse al club de ocultismo de instituto para no dar un palo en el agua... Sin embargo, un buen día el sello del talismán que se hallaba escondido en su instituto se rompe, y comienzan a aparecer unos monstruos. Ante este giro de los acontecimientos, Itadori decide adentrarse en el instituto para salvar a sus compañeros. ¿Qué le deparará el destino?', NULL, '2024-11-08 12:51:23', 20169, NULL),
(10047, 'One Punch Man', 'La historia tiene lugar en una metrópolis ficticia conocida como Ciudad Z, en Japón. El mundo se ve invadido por extraños monstruos que aparecen misteriosamente y que causan numerosos desastres a la población. Saitama es un poderoso superhéroe calvo que derrota fácilmente a los monstruos u otros villanos con un único golpe de su puño. Debido a esto, Saitama ha encontrado aburrida su fuerza y siempre está tratando de encontrar rivales más poderosos que le puedan igualar.', NULL, '2024-11-08 13:07:56', 20169, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangachapters`
--

CREATE TABLE `mangachapters` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Manga_ID` int(10) UNSIGNED NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `uploadDate` date NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `LastPagesSuscription` smallint(5) UNSIGNED NOT NULL,
  `LastPagesPrice` smallint(5) UNSIGNED NOT NULL,
  `allow_purchase` tinyint(1) NOT NULL,
  `desactivation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mangachapters`
--

INSERT INTO `mangachapters` (`ID`, `Manga_ID`, `description`, `number`, `uploadDate`, `User_ID`, `LastPagesSuscription`, `LastPagesPrice`, `allow_purchase`, `desactivation_date`) VALUES
(1, 10000, NULL, 1, '2022-09-04', 100, 0, 0, 0, NULL),
(3, 10004, NULL, 1, '2022-10-12', 100, 0, 0, 0, NULL),
(4, 10004, NULL, 2, '2022-10-12', 20122, 0, 0, 0, NULL),
(5, 10004, NULL, 3, '2022-10-12', 20122, 0, 0, 0, NULL),
(6, 10004, NULL, 4, '2022-10-12', 20122, 0, 0, 0, NULL),
(7, 10004, NULL, 5, '2022-10-12', 20122, 0, 0, 0, NULL),
(8, 10007, NULL, 1, '2022-10-12', 20122, 0, 0, 0, NULL),
(9, 10005, NULL, 1, '2022-10-12', 20122, 0, 0, 0, NULL),
(10, 10005, NULL, 2, '2022-10-12', 20122, 0, 0, 0, NULL),
(11, 10005, NULL, 3, '2022-10-12', 20122, 0, 0, 0, NULL),
(12, 10005, NULL, 4, '2022-10-12', 20122, 0, 0, 0, NULL),
(13, 10005, NULL, 5, '2022-10-12', 20122, 0, 0, 0, NULL),
(14, 10005, NULL, 6, '2022-10-12', 20122, 0, 0, 0, NULL),
(15, 10005, NULL, 7, '2022-10-12', 20122, 0, 0, 0, NULL),
(16, 10005, NULL, 8, '2022-10-12', 20122, 0, 0, 0, NULL),
(17, 10006, NULL, 1, '2022-10-12', 20122, 0, 0, 0, NULL),
(18, 10006, NULL, 2, '2022-10-12', 20122, 0, 0, 0, NULL),
(19, 10006, NULL, 3, '2022-10-12', 20122, 0, 0, 0, NULL),
(20, 10006, NULL, 4, '2022-10-12', 20122, 0, 0, 0, NULL),
(21, 10006, NULL, 5, '2022-10-12', 20122, 0, 0, 0, NULL),
(22, 10006, NULL, 6, '2022-10-12', 20122, 0, 0, 0, NULL),
(23, 10006, NULL, 7, '2022-10-12', 20122, 0, 0, 0, NULL),
(24, 10006, NULL, 8, '2022-10-12', 20122, 0, 0, 0, NULL),
(25, 10006, NULL, 9, '2022-10-12', 20122, 0, 0, 0, NULL),
(26, 10008, NULL, 213, '2022-10-16', 20122, 0, 0, 0, NULL),
(27, 10008, NULL, 214, '2022-10-16', 20122, 0, 0, 0, NULL),
(28, 10008, NULL, 215, '2022-10-16', 20122, 0, 0, 0, NULL),
(29, 10002, NULL, 600, '2022-10-16', 20122, 0, 0, 0, NULL),
(30, 10002, NULL, 601, '2022-10-16', 20122, 0, 0, 0, NULL),
(31, 10002, NULL, 602, '2022-10-16', 20122, 0, 0, 0, NULL),
(32, 10002, NULL, 603, '2022-10-16', 20122, 0, 0, 0, NULL),
(33, 10002, NULL, 604, '2022-10-16', 20122, 0, 0, 0, NULL),
(34, 10001, NULL, 262, '2022-10-16', 20122, 0, 0, 0, NULL),
(35, 10003, NULL, 400, '2022-10-16', 20122, 0, 0, 0, NULL),
(36, 10003, NULL, 401, '2022-10-16', 20122, 0, 0, 0, NULL),
(37, 10003, NULL, 402, '2022-10-16', 20122, 0, 0, 0, NULL),
(38, 10001, NULL, 263, '2022-10-16', 20122, 0, 0, 0, NULL),
(39, 10001, NULL, 264, '2022-10-16', 20122, 0, 0, 0, NULL),
(40, 10009, NULL, 32, '2022-10-12', 20122, 0, 0, 0, NULL),
(41, 10010, NULL, 1, '2022-10-12', 20122, 0, 0, 0, NULL),
(42, 10010, NULL, 2, '2022-10-12', 20122, 0, 0, 0, NULL),
(43, 10010, NULL, 3, '2022-10-12', 20122, 0, 0, 0, NULL),
(44, 10012, NULL, 1, '2022-10-23', 20122, 0, 0, 0, NULL),
(45, 10012, NULL, 2, '2022-10-23', 20122, 0, 0, 0, NULL),
(46, 10012, NULL, 3, '2022-10-23', 20122, 0, 0, 0, NULL),
(47, 10012, NULL, 4, '2022-10-23', 20122, 0, 0, 0, NULL),
(48, 10012, NULL, 5, '2022-10-23', 20122, 0, 0, 0, NULL),
(49, 10013, NULL, 3, '2022-10-23', 20122, 0, 0, 0, NULL),
(50, 10013, NULL, 1, '2022-10-23', 20122, 0, 0, 0, NULL),
(51, 10013, NULL, 2, '2022-10-23', 20122, 0, 0, 0, NULL),
(52, 10013, NULL, 3, '2022-10-23', 20122, 0, 0, 0, NULL),
(53, 10013, NULL, 4, '2022-10-23', 20122, 0, 0, 0, NULL),
(54, 10013, NULL, 5, '2022-10-23', 20122, 0, 0, 0, NULL),
(55, 10014, NULL, 1, '2022-10-23', 20122, 0, 0, 0, NULL),
(56, 10014, NULL, 2, '2022-10-23', 20122, 0, 0, 0, NULL),
(57, 10014, NULL, 3, '2022-10-23', 20122, 0, 0, 0, NULL),
(58, 10004, NULL, 6, '2022-10-12', 100, 0, 0, 0, NULL),
(59, 10004, NULL, 7, '2022-10-12', 20122, 0, 0, 0, NULL),
(60, 10004, NULL, 8, '2022-10-12', 20122, 0, 0, 0, NULL),
(61, 10004, NULL, 9, '2022-10-12', 20122, 0, 0, 0, NULL),
(62, 10004, NULL, 10, '2022-10-12', 100, 0, 0, 0, NULL),
(71, 10015, NULL, 1, '2022-10-23', 20122, 0, 0, 0, NULL),
(72, 10015, NULL, 2, '2022-10-23', 20122, 0, 0, 0, NULL),
(73, 10015, NULL, 3, '2022-10-23', 20122, 0, 0, 0, NULL),
(74, 10016, NULL, 1, '2022-10-23', 20122, 0, 0, 0, NULL),
(75, 10016, NULL, 2, '2022-10-23', 20122, 0, 0, 0, NULL),
(76, 10017, NULL, 1, '2022-10-23', 20122, 0, 0, 0, NULL),
(77, 10017, NULL, 2, '2022-10-23', 20122, 0, 0, 0, NULL),
(78, 10017, NULL, 3, '2022-10-23', 20122, 0, 0, 0, NULL),
(79, 10038, NULL, 1, '2024-09-16', 20166, 0, 0, 0, NULL),
(80, 10039, NULL, 1, '2024-09-16', 20166, 0, 0, 0, NULL),
(83, 10041, NULL, 1, '2024-11-08', 1, 0, 0, 0, NULL),
(84, 10042, NULL, 1, '2024-11-08', 1, 0, 0, 0, NULL),
(85, 10043, NULL, 1, '2024-11-08', 1, 0, 0, 0, NULL),
(86, 10044, NULL, 1, '2024-11-08', 0, 0, 0, 0, NULL),
(87, 10045, NULL, 1, '2024-11-08', 20169, 0, 0, 0, NULL),
(88, 10046, NULL, 1, '2024-11-08', 20169, 0, 0, 0, NULL),
(89, 10047, NULL, 1, '2024-11-08', 20169, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangagenders`
--

CREATE TABLE `mangagenders` (
  `g_ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mangagenders`
--

INSERT INTO `mangagenders` (`g_ID`, `Name`, `image`) VALUES
(1, 'Deportes', 10003),
(2, 'Escolar', 10000),
(3, 'Shounen', 10010),
(4, 'Slice of life', 10008),
(48, 'Peleas', 10012),
(51, 'Isekai', 10015),
(52, 'Fantasia', 10016),
(53, 'Thriller', 10006),
(54, 'Shoujo', 10042);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangagenders_manga`
--

CREATE TABLE `mangagenders_manga` (
  `mg_ID` int(11) NOT NULL,
  `Manga_ID` int(10) UNSIGNED NOT NULL,
  `MangaGenders_ID` int(11) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mangagenders_manga`
--

INSERT INTO `mangagenders_manga` (`mg_ID`, `Manga_ID`, `MangaGenders_ID`, `counter`) VALUES
(3, 10003, 2, 2),
(4, 10003, 1, 1),
(5, 10004, 3, 1),
(6, 10005, 3, 1),
(7, 10006, 3, 1),
(8, 10007, 3, 1),
(9, 10001, 3, 1),
(10, 10002, 3, 1),
(11, 10008, 4, 1),
(12, 10008, 2, 2),
(13, 10009, 2, 1),
(14, 10010, 3, 1),
(15, 10009, 4, 2),
(16, 10009, 3, 3),
(22, 10000, 16, 1),
(23, 10016, 4, 1),
(38, 10012, 47, 1),
(41, 10038, 2, 1),
(42, 10038, 50, 2),
(43, 10039, 50, 1),
(45, 10006, 53, 2),
(46, 10045, 48, 1),
(47, 10046, 48, 1),
(48, 10047, 48, 1),
(49, 10042, 2, 1),
(50, 10042, 54, 2),
(51, 10015, 51, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangalikes`
--

CREATE TABLE `mangalikes` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `manga_id` int(11) NOT NULL,
  `LikeOrDislike` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mangalikes`
--

INSERT INTO `mangalikes` (`id`, `user_id`, `manga_id`, `LikeOrDislike`) VALUES
(12, 20121, 10000, NULL),
(14, 20126, 10000, NULL),
(15, 20126, 10001, NULL),
(17, 20126, 10010, NULL),
(19, 20127, 10008, NULL),
(21, 20131, 10004, NULL),
(22, 20131, 10009, NULL),
(24, 20131, 10006, NULL),
(25, 20129, 10000, NULL),
(26, 20129, 10012, NULL),
(27, 20166, 10012, NULL),
(28, 20167, 10017, NULL),
(31, 20169, 10016, NULL),
(37, 20169, 10045, NULL),
(38, 20169, 10043, NULL),
(39, 20169, 10013, NULL),
(40, 20169, 10047, NULL),
(42, 20169, 10015, NULL),
(44, 20169, 10000, NULL),
(45, 20170, 10041, NULL),
(46, 20171, 10045, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangaviews`
--

CREATE TABLE `mangaviews` (
  `manga_ID` int(11) NOT NULL,
  `views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mangaviews`
--

INSERT INTO `mangaviews` (`manga_ID`, `views_count`) VALUES
(10000, 3),
(10001, 1),
(10002, 1),
(10003, 1),
(10004, 2),
(10005, 1),
(10006, 1),
(10007, 1),
(10008, 1),
(10009, 1),
(10010, 1),
(10012, 2),
(10013, 3),
(10014, 1),
(10016, 1),
(10015, 2),
(10017, 3),
(10038, 1),
(10039, 1),
(10041, 3),
(10041, 3),
(10042, 1),
(10043, 1),
(10044, 2),
(10045, 3),
(10046, 3),
(10047, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manga_unique_view`
--

CREATE TABLE `manga_unique_view` (
  `v_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `manga_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `manga_unique_view`
--

INSERT INTO `manga_unique_view` (`v_ID`, `user_ID`, `manga_ID`) VALUES
(0, 20129, 10004),
(6, 20129, 10007),
(7, 20129, 10000),
(8, 20129, 10005),
(9, 20129, 10002),
(10, 20129, 10001),
(11, 20129, 10006),
(12, 20129, 10010),
(13, 20129, 10008),
(14, 20129, 10009),
(15, 20129, 10003),
(16, 20127, 10006),
(17, 20127, 10000),
(18, 20127, 10002),
(19, 20127, 10010),
(20, 20127, 10008),
(21, 0, 10000),
(22, 0, 10005),
(23, 0, 10008),
(24, 0, 10003),
(25, 0, 10007),
(26, 0, 10002),
(27, 0, 10006),
(28, 20129, 10012),
(29, 20129, 10013),
(30, 20129, 10014),
(31, 20135, 10015),
(32, 20135, 10010),
(33, 20135, 10004),
(34, 20129, 10015),
(35, 20129, 10018),
(36, 20129, 1009),
(37, 20129, 10016),
(38, 20129, 10017),
(39, 20163, 10003),
(40, 20163, 10002),
(41, 20163, 10015),
(42, 20163, 10016),
(43, 20166, 10012),
(44, 20166, 10038),
(45, 20166, 10017),
(46, 20166, 10005),
(47, 20166, 10039),
(48, 20166, 10015),
(49, 20167, 10017),
(50, 20168, 10000),
(51, 20168, 10002),
(52, 20168, 10013),
(53, 20168, 10017),
(54, 20168, 10014),
(55, 20168, 10040),
(56, 20168, 10041),
(57, 20169, 10010),
(58, 20169, 10017),
(59, 20169, 10014),
(60, 20169, 10002),
(61, 20169, 10016),
(62, 20169, 10006),
(63, 20169, 10041),
(64, 20169, 10008),
(65, 20169, 10042),
(66, 20169, 10005),
(67, 20169, 10043),
(68, 20169, 10000),
(69, 20169, 10009),
(70, 20169, 10003),
(71, 20169, 10007),
(72, 20163, 10041),
(73, 20163, 10042),
(74, 20163, 10006),
(75, 20163, 10009),
(76, 20169, 10044),
(77, 20169, 10015),
(78, 20169, 10045),
(79, 20169, 10046),
(80, 20169, 10047),
(81, 20169, 10012),
(82, 20169, 10013),
(83, 20163, 10017),
(84, 20163, 10000),
(85, 20163, 10046),
(86, 20163, 10013),
(87, 20163, 10012),
(88, 20163, 10044),
(89, 20170, 10045),
(90, 20170, 10041),
(91, 20170, 10000),
(92, 20171, 10013),
(93, 20171, 10017),
(94, 20171, 10045),
(95, 20171, 10015),
(96, 20171, 10046),
(97, 20171, 10041),
(98, 20169, 10004);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moderationlogcomment`
--

CREATE TABLE `moderationlogcomment` (
  `MC_ID` int(10) UNSIGNED NOT NULL,
  `comments_ID` int(10) UNSIGNED NOT NULL,
  `user_ID` int(10) UNSIGNED NOT NULL,
  `af_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `moderationStatus_ID` tinyint(3) UNSIGNED NOT NULL,
  `information` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moderationlogcomment`
--

INSERT INTO `moderationlogcomment` (`MC_ID`, `comments_ID`, `user_ID`, `af_user`, `date`, `moderationStatus_ID`, `information`) VALUES
(5, 40, 20129, 20127, '2022-10-25 02:39:23', 2, '. sdasd .'),
(6, 40, 20129, 20127, '2022-10-25 02:39:46', 1, '. rtwerwerwerwerwerw .');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moderationlogmanga`
--

CREATE TABLE `moderationlogmanga` (
  `ID` int(11) NOT NULL,
  `Manga_ID` int(10) UNSIGNED NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `moderationStatus_ID` tinyint(3) UNSIGNED NOT NULL,
  `information` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moderationlogmangachapters`
--

CREATE TABLE `moderationlogmangachapters` (
  `ID` int(11) NOT NULL,
  `MangaChapters_ID` int(10) UNSIGNED NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `moderationStatus_ID` tinyint(3) UNSIGNED NOT NULL,
  `information` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moderationlogusers`
--

CREATE TABLE `moderationlogusers` (
  `ID` int(11) NOT NULL,
  `Affected_User_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `moderationStatus_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `information` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moderationlogusers`
--

INSERT INTO `moderationlogusers` (`ID`, `Affected_User_ID`, `User_ID`, `date`, `moderationStatus_ID`, `information`) VALUES
(5, 20127, 20126, '2022-10-24 00:25:22', 2, 'test'),
(6, 20128, 20129, '2022-10-31 11:35:46', 2, 'negro puto'),
(7, 20128, 20129, '2022-11-01 03:29:09', 1, 'aaaaa es muy malo\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moderationstatus`
--

CREATE TABLE `moderationstatus` (
  `ID` tinyint(4) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `show2` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moderationstatus`
--

INSERT INTO `moderationstatus` (`ID`, `Name`, `show2`) VALUES
(1, 'Por resolver', 1),
(2, 'Resuelto', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissionssuscriptions`
--

CREATE TABLE `permissionssuscriptions` (
  `suscriptions_ID` tinyint(3) UNSIGNED NOT NULL,
  `pointMultiplier` float DEFAULT NULL,
  `allAccess` tinyint(1) NOT NULL,
  `uploadManga` tinyint(1) NOT NULL,
  `bypassMangaValidation` tinyint(1) NOT NULL,
  `promotedMangas` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id`, `role_id`, `user_id`) VALUES
(3, 2, 20128),
(1, 2, 20131),
(11, 2, 20133),
(12, 2, 20134),
(8, 2, 20135),
(7, 2, 20136),
(26, 2, 20164),
(27, 2, 20165),
(28, 2, 20166),
(29, 2, 20167),
(30, 2, 20168),
(31, 2, 20169),
(32, 2, 20170),
(2, 3, 20127),
(5, 3, 20132),
(4, 4, 20126),
(6, 4, 20129),
(25, 4, 20163),
(33, 4, 20171);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Invitado'),
(2, 'Usuario'),
(3, 'Moderador'),
(4, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolespermissions`
--

CREATE TABLE `rolespermissions` (
  `id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `reviewComments` tinyint(1) NOT NULL,
  `editComments` tinyint(1) NOT NULL,
  `reviewMangas` tinyint(1) NOT NULL,
  `editMangas` tinyint(1) NOT NULL,
  `delayActions` smallint(5) UNSIGNED DEFAULT NULL,
  `reviewUsers` tinyint(1) NOT NULL,
  `editUsers` tinyint(1) NOT NULL,
  `viewModerationLog` tinyint(1) NOT NULL,
  `reviewReports` tinyint(1) NOT NULL,
  `editDatabase` tinyint(1) NOT NULL,
  `editSuscription` tinyint(1) NOT NULL,
  `editModeration` tinyint(1) NOT NULL,
  `modifyShop` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rolespermissions`
--

INSERT INTO `rolespermissions` (`id`, `roles_id`, `reviewComments`, `editComments`, `reviewMangas`, `editMangas`, `delayActions`, `reviewUsers`, `editUsers`, `viewModerationLog`, `reviewReports`, `editDatabase`, `editSuscription`, `editModeration`, `modifyShop`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0),
(3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 3, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptions`
--

CREATE TABLE `suscriptions` (
  `ID` tinyint(4) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suscriptions`
--

INSERT INTO `suscriptions` (`ID`, `Name`) VALUES
(1, 'Cattus'),
(2, 'Cat'),
(3, 'None');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userbadges`
--

CREATE TABLE `userbadges` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `purchaseDate` datetime NOT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `badge_ID` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userinventory`
--

CREATE TABLE `userinventory` (
  `ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `item_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `userinventory`
--

INSERT INTO `userinventory` (`ID`, `user_ID`, `item_ID`) VALUES
(1, 20121, 1),
(2, 20121, 5),
(3, 20121, 3),
(4, 20123, 2),
(5, 20123, 6),
(6, 20121, 2),
(7, 20121, 4),
(8, 20121, 6),
(9, 20124, 3),
(10, 20122, 4),
(11, 20122, 5),
(12, 20122, 3),
(13, 20122, 1),
(14, 20122, 6),
(15, 20125, 3),
(16, 20127, 3),
(17, 20127, 7),
(18, 20122, 7),
(19, 20122, 8),
(20, 20127, 8),
(21, 20128, 8),
(22, 20129, 7),
(23, 20129, 8),
(24, 20126, 3),
(25, 20132, 3),
(26, 20132, 8),
(27, 0, 8),
(28, 0, 7),
(29, 0, 9),
(30, 20135, 12),
(31, 20135, 13),
(32, 20135, 14),
(33, 20135, 15),
(34, 20135, 16),
(35, 20135, 17),
(36, 20135, 18),
(37, 20135, 20),
(38, 20135, 6),
(39, 20135, 1),
(40, 20129, 11),
(41, 20129, 22),
(42, 20135, 3),
(43, 20163, 5),
(44, 20166, 1),
(45, 20168, 14),
(46, 20169, 4),
(47, 20169, 2),
(48, 20169, 9),
(49, 20169, 3),
(50, 20169, 6),
(51, 20169, 1),
(52, 20169, 5),
(53, 20169, 8),
(54, 20170, 5),
(55, 20171, 1),
(56, 20169, 15),
(57, 20169, 23),
(58, 20169, 11),
(59, 20169, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userpointhistory`
--

CREATE TABLE `userpointhistory` (
  `ID` bigint(20) NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Date` datetime NOT NULL,
  `Action` varchar(150) DEFAULT NULL,
  `AddedBy` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userprofile`
--

CREATE TABLE `userprofile` (
  `User_ID` int(11) NOT NULL,
  `nightmode` varchar(5) NOT NULL,
  `show_Badges` tinyint(1) NOT NULL,
  `favourite_manga_ID` int(10) UNSIGNED DEFAULT NULL,
  `show_favourite` enum('Si','No') NOT NULL DEFAULT 'No',
  `show_likes` enum('Si','No') NOT NULL DEFAULT 'No',
  `description` varchar(500) DEFAULT NULL,
  `show_interests` tinyint(1) NOT NULL,
  `show_role` tinyint(1) NOT NULL,
  `bg_dir` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `userprofile`
--

INSERT INTO `userprofile` (`User_ID`, `nightmode`, `show_Badges`, `favourite_manga_ID`, `show_favourite`, `show_likes`, `description`, `show_interests`, `show_role`, `bg_dir`) VALUES
(20126, 'off', 1, 10004, 'No', 'Si', 'Hola, este es un usuario de pruebaaaaa', 1, 1, NULL),
(20127, 'off', 1, 10010, 'Si', 'Si', 'lets \'g o asdm,ksajdsakldajdsldsjaklds\'d a\'d sa\'f ds☺🤣🤣🤣🤣', 1, 0, '../pointshop/kaneki.png'),
(20128, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, '../pointshop/rezero.png'),
(20129, 'on', 1, NULL, 'Si', 'Si', '<img src=\"https://images3.memedroid.com/images/UPLOADED285/62eac1a45b08d.jpeg\">', 1, 0, '../pointshop/aqua.png'),
(20130, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20131, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20132, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, '../pointshop/rezero.png'),
(20133, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20134, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20135, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, '../pointshop/tomokosad.png'),
(20136, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20163, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20164, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20165, 'on', 1, NULL, 'Si', 'Si', '', 1, 0, NULL),
(20166, 'off', 1, 10012, 'Si', 'Si', '', 1, 0, NULL),
(20167, 'off', 1, 10017, 'Si', 'Si', '', 1, 0, NULL),
(20168, 'on', 1, 10041, 'Si', 'Si', '', 1, 0, '../pointshop/dbzwallpaper.png'),
(20169, 'off', 1, 10000, 'Si', 'Si', 'asdada', 1, 0, '../pointshop/tomokosad.png'),
(20170, 'off', 1, 10041, 'Si', 'No', 'Hola esta es mi biografia', 1, 0, NULL),
(20171, 'off', 1, NULL, 'Si', 'Si', '', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userreadmangahistory`
--

CREATE TABLE `userreadmangahistory` (
  `h_ID` int(11) NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `manga_ID` int(10) UNSIGNED NOT NULL,
  `at_Chapter` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `userreadmangahistory`
--

INSERT INTO `userreadmangahistory` (`h_ID`, `User_ID`, `manga_ID`, `at_Chapter`) VALUES
(1, 20127, 10010, 3),
(2, 20129, 10000, 9),
(3, 20131, 10007, 1),
(4, 20132, 10001, 264),
(5, 20129, 10006, 1),
(6, 20129, 10012, 5),
(7, 20129, 10014, 1),
(12, 20127, 10008, 215),
(13, 20127, 10000, 1),
(14, 20127, 10006, 7),
(15, 20135, 10015, 1),
(16, 20163, 10016, 2),
(17, 20163, 10041, 1),
(18, 20166, 10017, 2),
(19, 20166, 10012, 4),
(20, 20166, 10039, 1),
(21, 20166, 10005, 1),
(22, 20168, 10000, 7),
(23, 20168, 10013, 1),
(24, 20168, 10017, 3),
(25, 20168, 10041, 1),
(30, 20169, 10044, 1),
(31, 20163, 10009, 32),
(32, 20163, 10044, 1),
(33, 20169, 10046, 1),
(34, 20169, 10014, 3),
(35, 20169, 10004, 10),
(36, 20170, 10000, 1),
(37, 20171, 10045, 1),
(38, 20171, 10046, 1),
(39, 20171, 10041, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `activation_date` datetime NOT NULL,
  `desactivation_date` datetime DEFAULT NULL,
  `reactivation_at` datetime DEFAULT NULL,
  `moderationRoles_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `suscriptions_ID` tinyint(3) UNSIGNED NOT NULL,
  `email_validated` tinyint(3) UNSIGNED NOT NULL,
  `points` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`ID`, `Name`, `Email`, `Password`, `profile_pic`, `activation_date`, `desactivation_date`, `reactivation_at`, `moderationRoles_ID`, `suscriptions_ID`, `email_validated`, `points`) VALUES
(20126, 'homero93', 'gaston123@gmail.com', '$2y$10$.s22uyATwTiCeZ5fIpluSOorAkoLkoVm83wsumNfHcjBJ1h7w2Lc2', '../pointshop/anya.png', '2022-10-15 16:54:01', NULL, NULL, 1, 0, 0, 88),
(20127, 'jijo', 'jijo@gmail.com', '$2y$10$.nz.7nnubbNKZIzwoqWrP.Yckw/wou23ERJYd1y0lv5yt5Zs8kGiq', '../pointshop/anya.png', '2022-10-16 17:34:34', NULL, NULL, 1, 0, 0, 632222),
(20128, 'jajaja', 'hua@gmail.com', '$2y$10$W7G6sH2zy13IV.aSE.itEebIzI9pMHDqg3ZJ/935fbpjBIwgG/rsa', '../img/avatar.png', '2022-10-16 22:00:09', NULL, '2022-11-07 11:35:57', 1, 0, 0, 85),
(20129, 'koka', 'koka@gmail.com', '$2y$10$.uTOYWsNqorN0CbfPHw7HepyHwqn9Da.UwBRykqTXDjH7xLwjdvfW', '../pointshop/wacamole.png', '2022-10-16 22:04:57', NULL, NULL, 1, 0, 0, 10000),
(20131, 'lukitas', 'l@gmail.com', '$2y$10$.vfWeNfW.L9rffa.QUghnuO8bMagP7p47f3uIhCF/O2xdw/wfAIna', '../img/avatar.png', '2022-10-18 08:53:12', '2022-10-20 08:58:56', NULL, 1, 0, 0, 100),
(20132, 'gastontesting', 'testing@gmail.com', '$2y$10$.s22uyATwTiCeZ5fIpluSOorAkoLkoVm83wsumNfHcjBJ1h7w2Lc2', '../pointshop/anya.png', '2022-10-18 09:02:55', NULL, NULL, 1, 0, 0, 73),
(20133, 'lolito', 'lolito@gmail.com', '$2y$10$vLBgoTMBv8/g7.Naes.BZey7mbrm8csh.cbFvfBT9Ke2buOLskD4C', '../img/avatar.png', '2022-10-23 02:03:31', NULL, NULL, 1, 0, 0, 100),
(20134, 'kakao1', 'kakao@gmail.com', '$2y$10$CLgv8iQVjnTuvyF4V6MpHefnZHISJyQ4drWqG0PVduhWSzOHAIBA2', '../img/avatar.png', '2022-10-23 02:06:30', NULL, NULL, 1, 0, 0, 100),
(20135, 'Manuel', 'Manuel@gmail.com', '$2y$10$KPtEeot8je/NR0BsYMeqJeMpVlXdnsQn5CkNxiNYGHzgXCnBl0FY6', '../pointshop/rosa.png', '2022-10-25 11:11:08', NULL, NULL, 0, 0, 0, 98277),
(20136, 'holaqlalala', 'holaq@gmail.com', '$2y$10$9DN49.QjW7xa1SP.sYMNfO2r42msxfJg4rH1EDsSE0EiBEomu53oy', '../img/avatar.png', '2022-10-28 17:06:31', NULL, NULL, 0, 0, 0, 100),
(20163, 'admin', 'admin@gmail.com', '$2y$10$WiJIZhqyVF06Mhc/lzHejOi3Xx3JVf0pQV6gaO0vfJeJwuJKIxawe', '../pointshop/berserk.png', '2022-10-29 17:07:14', NULL, NULL, 0, 0, 0, 1007587),
(20164, 'ElPako', 'pakito@gmail.com', '$2y$10$gqnwlOobt2AYpf8kD4R4zu5cxdrVEh7.Ce79Juw59R2vJnV/wttfK', '../img/avatar.png', '2022-10-31 11:38:34', NULL, NULL, 0, 0, 0, 99999),
(20165, 'jjjiiji', 'jiji@gmail.com', '$2y$10$QVeFfL.gxfFox.mpHPxQveMqf5V1zLFj/TRy1/hLd8DPdphxlA4cK', '../img/avatar.png', '2022-11-01 03:03:11', NULL, NULL, 0, 0, 0, 100),
(20166, 'poooprr', 'pepe@pepe.com', '$2y$10$BmhczkyUlWr9mI8rOkcWjeOWirYOZYX2BJsRWUya8AMveV0AP9LAG', '../pointshop/booba.png', '2024-09-16 05:52:46', NULL, NULL, 0, 0, 0, 0),
(20167, 'asdsada', 'XDDdd@gmail.com', '$2y$10$1Jg79dKQ9/M//hcrS9fjIO.8PP1Ili7O7xeuHXveC2HKpbO1UnCdG', '../img/avatar.png', '2024-11-08 10:51:19', NULL, NULL, 0, 0, 0, 2000),
(20168, 'sebas', 'sebas@gmail.com', '$2y$10$xj8yZedxbLgk9O1g4w5jSeNei0ckNIBJbT/GqwKFIIj7tq0XT7wB.', '../img/avatar.png', '2024-11-08 10:53:36', NULL, NULL, 0, 0, 0, 1920),
(20169, 'ExpoSuiza', 'exposuiza@suiza.com', '$2y$10$fS1arxpWtcHyfuOrztgrCegAtjyNbfA4CUxdhituTD0CW1Vo1tAyK', '../pointshop/wacamole.png', '2024-11-08 11:19:00', NULL, NULL, 0, 0, 0, 8387752),
(20170, 'Hola', 'soiffermuriel@gmail.com', '$2y$10$EENUl4Anp1dXGgAQojH/Wuak.O6uPQQR3nHgvcpVJ8LbqzZUHe4ye', '../pointshop/berserk.png', '2024-11-08 15:37:34', NULL, NULL, 0, 0, 0, 1700),
(20171, 'administrador', 'eladminreal@gmail.com', '$2y$10$yk7lGtffK7Fd/gSPGtRLq.b6ppPSIBJsudE.ESJN9Y3HNaepQjio6', '../pointshop/Takagi.png', '2024-11-08 15:41:21', NULL, NULL, 1, 0, 0, 1900);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_ID`),
  ADD KEY `User_ID` (`User_ID`,`Manga_ID`);

--
-- Indices de la tabla `itemsshop`
--
ALTER TABLE `itemsshop`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indices de la tabla `itemtypes`
--
ALTER TABLE `itemtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID_2` (`User_ID`);

--
-- Indices de la tabla `mangachapters`
--
ALTER TABLE `mangachapters`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `FK_MangaChaptersManga` (`Manga_ID`),
  ADD KEY `FK_MangaChapterUser` (`User_ID`);

--
-- Indices de la tabla `mangagenders`
--
ALTER TABLE `mangagenders`
  ADD PRIMARY KEY (`g_ID`),
  ADD UNIQUE KEY `ID` (`g_ID`);

--
-- Indices de la tabla `mangagenders_manga`
--
ALTER TABLE `mangagenders_manga`
  ADD PRIMARY KEY (`mg_ID`),
  ADD KEY `FK_MangaGendersManga` (`Manga_ID`),
  ADD KEY `FK_MangaGendersGender` (`MangaGenders_ID`);

--
-- Indices de la tabla `mangalikes`
--
ALTER TABLE `mangalikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_LikesUser` (`user_id`),
  ADD KEY `FK_MangaLike` (`manga_id`),
  ADD KEY `user_id` (`user_id`,`manga_id`);

--
-- Indices de la tabla `manga_unique_view`
--
ALTER TABLE `manga_unique_view`
  ADD PRIMARY KEY (`v_ID`);

--
-- Indices de la tabla `moderationlogcomment`
--
ALTER TABLE `moderationlogcomment`
  ADD PRIMARY KEY (`MC_ID`) USING BTREE,
  ADD KEY `comments_ID` (`comments_ID`,`user_ID`);

--
-- Indices de la tabla `moderationlogmanga`
--
ALTER TABLE `moderationlogmanga`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Manga_ID` (`Manga_ID`,`User_ID`,`moderationStatus_ID`);

--
-- Indices de la tabla `moderationlogmangachapters`
--
ALTER TABLE `moderationlogmangachapters`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MangaChapters_ID` (`MangaChapters_ID`,`User_ID`,`moderationStatus_ID`);

--
-- Indices de la tabla `moderationlogusers`
--
ALTER TABLE `moderationlogusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Affected_User_ID` (`Affected_User_ID`,`User_ID`,`moderationStatus_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indices de la tabla `moderationstatus`
--
ALTER TABLE `moderationstatus`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `permissionssuscriptions`
--
ALTER TABLE `permissionssuscriptions`
  ADD KEY `suscriptions_ID` (`suscriptions_ID`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`,`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rolespermissions`
--
ALTER TABLE `rolespermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moderationRoles_ID` (`roles_id`);

--
-- Indices de la tabla `suscriptions`
--
ALTER TABLE `suscriptions`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `userbadges`
--
ALTER TABLE `userbadges`
  ADD KEY `User_ID` (`User_ID`,`badge_ID`);

--
-- Indices de la tabla `userinventory`
--
ALTER TABLE `userinventory`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `userpointhistory`
--
ALTER TABLE `userpointhistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indices de la tabla `userprofile`
--
ALTER TABLE `userprofile`
  ADD UNIQUE KEY `User_ID_2` (`User_ID`),
  ADD KEY `User_ID` (`User_ID`,`favourite_manga_ID`);

--
-- Indices de la tabla `userreadmangahistory`
--
ALTER TABLE `userreadmangahistory`
  ADD PRIMARY KEY (`h_ID`) USING BTREE,
  ADD KEY `User_ID` (`User_ID`,`manga_ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `ID` (`ID`,`moderationRoles_ID`,`suscriptions_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `c_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `itemsshop`
--
ALTER TABLE `itemsshop`
  MODIFY `ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `itemtypes`
--
ALTER TABLE `itemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `manga`
--
ALTER TABLE `manga`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10048;

--
-- AUTO_INCREMENT de la tabla `mangachapters`
--
ALTER TABLE `mangachapters`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `mangagenders`
--
ALTER TABLE `mangagenders`
  MODIFY `g_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `mangagenders_manga`
--
ALTER TABLE `mangagenders_manga`
  MODIFY `mg_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `mangalikes`
--
ALTER TABLE `mangalikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `manga_unique_view`
--
ALTER TABLE `manga_unique_view`
  MODIFY `v_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `moderationlogcomment`
--
ALTER TABLE `moderationlogcomment`
  MODIFY `MC_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `moderationlogmanga`
--
ALTER TABLE `moderationlogmanga`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moderationlogmangachapters`
--
ALTER TABLE `moderationlogmangachapters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moderationlogusers`
--
ALTER TABLE `moderationlogusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `moderationstatus`
--
ALTER TABLE `moderationstatus`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rolespermissions`
--
ALTER TABLE `rolespermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suscriptions`
--
ALTER TABLE `suscriptions`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `userinventory`
--
ALTER TABLE `userinventory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `userpointhistory`
--
ALTER TABLE `userpointhistory`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `userreadmangahistory`
--
ALTER TABLE `userreadmangahistory`
  MODIFY `h_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20172;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mangalikes`
--
ALTER TABLE `mangalikes`
  ADD CONSTRAINT `mangalikes_ibfk_1` FOREIGN KEY (`manga_id`) REFERENCES `manga` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `moderationlogusers`
--
ALTER TABLE `moderationlogusers`
  ADD CONSTRAINT `moderationlogusers_ibfk_1` FOREIGN KEY (`Affected_User_ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `moderationlogusers_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
