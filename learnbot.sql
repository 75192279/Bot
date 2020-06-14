-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2020 a las 00:32:08
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `learnbot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblasignatura`
--

CREATE TABLE `tblasignatura` (
  `IdAsignatura` int(11) NOT NULL,
  `nombreAsig` varchar(50) DEFAULT NULL,
  `Descripcion` longtext DEFAULT NULL,
  `objetivoAsignatura` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblasignatura`
--

INSERT INTO `tblasignatura` (`IdAsignatura`, `nombreAsig`, `Descripcion`, `objetivoAsignatura`) VALUES
(1, 'Matematica', 'Ciencia deductiva que se dedica al estudio de las propiedades de los entes abstractos y de sus relaciones. Esto quiere decir que las matemáticas trabajan con números, símbolos, figuras geométricas,', 'Utilizar los códigos y conocimientos matemáticos para apreciar, interpretar y producir informaciones sobre hechos o fenómenos conocidos, susceptibles de ser matematizados.'),
(2, 'Comunicacion', 'Es el proceso de transmisión e intercambio de mensajes entre un emisor y un receptor. La comunicación deriva del latín communicatvo que significa compartir, participar en algo o poner en común.', 'Sensibilizar el desarrollo de actitudes de apertura, flexibilidad y asertividad en su comunicación interna y externa mejoran sus habilidades de comunicación oral y escrita.'),
(3, 'Ciencia y ambiente', 'Es un área que contribuye al desarrollo integral de la persona, en relación con la naturaleza de la cual forma parte, con la tecnología y con su ambiente, en el marco de una cultura científica.', 'Desarrollar capacidades y conocimientos actitudes científicas atraves de actividades vivenciales y indagatorias.'),
(4, 'Personal Social', 'Asignatura dirigida a alos estudiantes de 6to grado de nivel primaria', 'Contribuir al desarrollo integral de la alumna como persona y como miembro activo de la sociedad.'),
(5, 'Educación Religiosa', 'Es aquella que se desarrolla dentro de la modalidad de la educación formal, en relación con los fines y métodos propios de la educación escolar.', 'Potenciar y desarrollar en la formación integral de la persona, la dimensión religiosa, espiritual y trascendente, para que, desde la perspectiva cristiana, les facilite una opción de fe y compromiso coherente en el quehacer cotidiano de sus propios contextos.'),
(6, 'Ingles', 'Incluyen audio, pronunciación, vocabulario, explicaciones, ilustraciones, gramática, ejercicios con respuesta, consejos para aprender más fácilmente y actividades para practicar.', 'Lograr una competencia comunicativa en inglés satisfactoria y con ello, pueda el alumno interactuar en diversos escenarios.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldesarrollo`
--

CREATE TABLE `tbldesarrollo` (
  `IdDesarrollo` int(11) NOT NULL,
  `definicionDesarrollo` text NOT NULL,
  `subtitulos` varchar(255) NOT NULL,
  `subtituloDesarrollo` text NOT NULL,
  `ejemplos` text NOT NULL,
  `URLDesarrollo` varchar(255) NOT NULL,
  `IdTema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblglosario`
--

CREATE TABLE `tblglosario` (
  `IdGlosario` int(11) NOT NULL,
  `TituloGlosario` varchar(500) NOT NULL,
  `DefinicionGlosario` text NOT NULL,
  `IdTema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltemass`
--

CREATE TABLE `tbltemass` (
  `IdTema` int(11) NOT NULL,
  `nombreTema` varchar(255) NOT NULL,
  `objetivoTema` text NOT NULL,
  `mapaMentallTema` text NOT NULL,
  `IdAsignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltemass`
--

INSERT INTO `tbltemass` (`IdTema`, `nombreTema`, `objetivoTema`, `mapaMentallTema`, `IdAsignatura`) VALUES
(1, 'La Evolución', 'Al culminar de estudiar el contenido de este tema, deberás ser capaz de definir de los conceptos sobre la evolución, asimismo conocer las teorías desarrolladas. ', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(2, 'Seres Vivos', 'Después de culminar este tema, podrás diferenciar un ser vivo de un objeto no vivo, identificaras las funciones y su relación con la naturaleza. ', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(3, 'Niveles de Organización', 'Al culminar de estudiar el contenido de este tema, clasificarás a los seres vivos de acuerdo a las funciones que realizan, identificaras los niveles de organización y sus características. ', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(4, 'Los Alimentos', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(5, 'Biomoléculas', 'Al culminar de estudiar el contenido de este tema, distinguirás las diferencias moleculares entre los seres vivos. Identificar las características y funciones generales de las biomoléculas, así como algunos ejemplos de lípidos, carbohidratos, proteínas y ácidos nucleicos. ', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(6, 'Pirámide Alimenticia', 'Cuando hayas culminado de estudiar este tema, identificaras los grupos en que están dividido la pirámide nutricional y conocerás las cantidades recomendadas de los diferentes nutrientes que el cuerpo necesita como grasas, proteínas, minerales y vitaminas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(7, 'Cadena Alimenticia', 'Al culminar de estudiar el contenido de este tema, comprenderás que en una cadena alimenticia cada ser vivo cumple una función específica.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(8, 'Fotosíntesis', 'Al culminar de estudiar el contenido de este tema, podrás explicar las características particulares del proceso de fotosíntesis.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(9, 'Polinización', 'Al culminar de estudiar el contenido de este tema, conocerás la importancia, función y los procesos de la polinización. Podrás explicar e identificar los procesos de la polinización.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(10, 'Los 5 Reinos de la Naturaleza', 'Al culminar de estudiar el contenido de este tema, podrás identificar los seres vivos que nos rodean teniendo en cuenta las distintas categorías de clasificación establecidas como los reinos, que son: animal, vegetal, fungi, protista y hongos. ', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 3),
(11, 'La Santa Biblia', 'Al culminar de estudiar el contenido de este tema, conocerás que libros contiene la Santa Biblia, como esta divido la biblia. Y tus conocimientos sobre la Santa Biblia será más amplio', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(12, 'La Oración', 'Cuando hayas estudiado este contenido, sabrás que es la oración, como hacer una oración a Dios.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(13, 'Valores Religiosos', 'Al culminar de estudiar el contenido de este tema, podrás identificar los valores Religiosos, aplicándolo en la vida diaria. Además, ampliaras tus conocimientos sobre este tema.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(14, 'Cuaresma', 'Cuando hayas culminado de estudiar este tema, podrás identificar cuando es cuaresma y sus características. Ampliaras tus conocimientos con respecto al tema de Cuaresma.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(15, 'Semana Santa', 'Al culminar de estudiar el contenido de este tema, podrás identificar importantes y significados de los acontecimientos dentro del periodo de Semana Santa. Además, ampliaras tus conocimientos con respecto a este tema.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(16, 'Vía Crucis', 'Cuando hayas culminado de estudiar este tema, podrás identificar las 15 estaciones que se practican de forma tradicional, conocerás las características de cada uno. Además, ampliaras tus conocimientos sobre este tema.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(17, 'Los Mandamientos', 'Al culminar de estudiar el contenido de este tema, conocerás e identificaras los mandamientos establecido en las Sagradas Escrituras. Ampliaras tus conocimientos sobre los Mandamientos.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(18, 'Parábolas', 'Cuando hayas culminado de estudiar el contenido de este tema, conocerás a lo que Jesús se refería con parábola, identificando las parábolas que Jesús hizo.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(19, 'Milagros', 'Cuando hayas culminado de estudiar el contenido de este tema, conocerás los milagros que Jesús hizo y el significado de lo que es un Milagro.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(20, 'La Vida de Jesús', 'Al culminar de estudiar el contenido de este tema, conocerás los acontecimientos importantes de la vida de Jesús, desde su nacimiento, muerte y resurrección.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 5),
(21, 'Geometría', 'Cuando hayas estudiado el contenido de este tema, identificaras las propiedades de las figuras, planos, puntos, rectas. Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(22, 'Sistema Internacional de Unidades', 'Cuando hayas estudiado el contenido de este tema, reconocerás y escribirás de forma correcta las unidades de medidas . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(23, 'Sistema de Numeración', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(24, 'Operación Fundamental', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(25, 'Teoría de Números', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(26, 'Fracciones', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(27, 'Estadísticas y Probabilidades', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(28, 'Razones Proporcionales', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(29, 'Mínimo Común Múltiplo', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(30, 'Mínimo Común Divisor', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 1),
(31, 'Normas de Convivencia', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(32, 'Ficha Personal', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(33, 'Fortalezco Mi Identidad', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(34, 'Salud Física y Emocional', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(35, 'Autoestima', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(36, 'Pubertad', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(37, 'Adolescencia', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(38, 'La Familia', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(39, 'Capacidad para Resolver Conflictos', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(40, 'Habilidades Sociales', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 4),
(41, 'El texto', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(42, 'Adjetivo', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(43, 'Sustantivo', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(44, 'Diptongo, Hiato', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(45, 'Verbos', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(46, 'Adverbio', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(47, 'Sílabas', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(48, 'Narración', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(49, 'Acentuación', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(50, 'Pronombre', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 2),
(51, 'Present Continuous', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(52, 'Simple Present', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(53, 'Simple Present or Present', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(54, 'Past Continuous', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(55, 'Present Perfect', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(56, 'Present Perfect Continuous', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(57, 'Present Perfect Continuous', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(58, 'Future (will)', 'Al culminar de estudiar el contenido de este tema, serás capaz de reconocer los sistemas básicos de numeración . Tu conocimiento con respecto al tema, será amplio y te será fácil resolver problemas.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6),
(59, 'Future (going to)', 'Cuando hayas estudiado el contenido de este tema, identificaras que alimentos se debe consumir para reducir el riesgo de desarrollar enfermedades relacionadas con la alimentación.', 'http://angelamariasuarezramirez.blogspot.com/2019/07/geometria-quinto.html', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvideoblog`
--

CREATE TABLE `tblvideoblog` (
  `IdVideoBlog` int(11) NOT NULL,
  `Url_Video` text NOT NULL,
  `IdTema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblasignatura`
--
ALTER TABLE `tblasignatura`
  ADD PRIMARY KEY (`IdAsignatura`);

--
-- Indices de la tabla `tbldesarrollo`
--
ALTER TABLE `tbldesarrollo`
  ADD PRIMARY KEY (`IdDesarrollo`),
  ADD UNIQUE KEY `IdTema` (`IdTema`);

--
-- Indices de la tabla `tblglosario`
--
ALTER TABLE `tblglosario`
  ADD PRIMARY KEY (`IdGlosario`),
  ADD UNIQUE KEY `tblTema` (`IdTema`);

--
-- Indices de la tabla `tbltemass`
--
ALTER TABLE `tbltemass`
  ADD PRIMARY KEY (`IdTema`),
  ADD KEY `IdAsignatura` (`IdAsignatura`);

--
-- Indices de la tabla `tblvideoblog`
--
ALTER TABLE `tblvideoblog`
  ADD PRIMARY KEY (`IdVideoBlog`),
  ADD UNIQUE KEY `IdTema` (`IdTema`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbltemass`
--
ALTER TABLE `tbltemass`
  MODIFY `IdTema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldesarrollo`
--
ALTER TABLE `tbldesarrollo`
  ADD CONSTRAINT `tbldesarrollo_ibfk_1` FOREIGN KEY (`IdTema`) REFERENCES `tbltemass` (`IdTema`);

--
-- Filtros para la tabla `tblglosario`
--
ALTER TABLE `tblglosario`
  ADD CONSTRAINT `tblglosario_ibfk_1` FOREIGN KEY (`IdTema`) REFERENCES `tbltemass` (`IdTema`);

--
-- Filtros para la tabla `tbltemass`
--
ALTER TABLE `tbltemass`
  ADD CONSTRAINT `tbltemass_ibfk_1` FOREIGN KEY (`IdAsignatura`) REFERENCES `tblasignatura` (`IdAsignatura`);

--
-- Filtros para la tabla `tblvideoblog`
--
ALTER TABLE `tblvideoblog`
  ADD CONSTRAINT `tblvideoblog_ibfk_1` FOREIGN KEY (`IdTema`) REFERENCES `tbltemass` (`IdTema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
