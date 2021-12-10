-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2021 a las 16:35:40
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoiw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add equipo', 1, 'add_equipo'),
(2, 'Can change equipo', 1, 'change_equipo'),
(3, 'Can delete equipo', 1, 'delete_equipo'),
(4, 'Can view equipo', 1, 'view_equipo'),
(5, 'Can add document', 2, 'add_document'),
(6, 'Can change document', 2, 'change_document'),
(7, 'Can delete document', 2, 'delete_document'),
(8, 'Can view document', 2, 'view_document'),
(9, 'Can add private document', 3, 'add_privatedocument'),
(10, 'Can change private document', 3, 'change_privatedocument'),
(11, 'Can delete private document', 3, 'delete_privatedocument'),
(12, 'Can view private document', 3, 'view_privatedocument'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session'),
(37, 'Can add evento', 10, 'add_evento'),
(38, 'Can change evento', 10, 'change_evento'),
(39, 'Can delete evento', 10, 'delete_evento'),
(40, 'Can view evento', 10, 'view_evento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$ar6JeiNPIIkdwr1dLthMF6$mL7+6U+vdWng/n1/kD6VZ0znfTH87LeauH3EWGlrYDA=', '2021-12-10 13:48:51.613882', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2021-12-10 03:38:53.269022'),
(2, 'pbkdf2_sha256$260000$LizgsKfaYmTdYNINDjUCVw$m7sc+ZvE2fYi29hGKw+RhrlvguzsHy3TyG4MPx/pAZ4=', '2021-12-10 14:06:08.384416', 0, 'login', 'Usuario de sistema', 'staff', 'ss@www.com', 1, 1, '2021-12-10 04:33:40.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crud_document`
--

CREATE TABLE `crud_document` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `uploadedFile` varchar(100) NOT NULL,
  `dateTimeOfUpload` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crud_equipo`
--

CREATE TABLE `crud_equipo` (
  `id` bigint(20) NOT NULL,
  `equipo_serie` varchar(100) NOT NULL,
  `equipo_marca` varchar(20) NOT NULL,
  `equipo_descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `crud_equipo`
--

INSERT INTO `crud_equipo` (`id`, `equipo_serie`, `equipo_marca`, `equipo_descripcion`) VALUES
(1, 'aaa12', 'dell', 'laptop'),
(3, '#ab', 'HP', 'desktop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crud_privatedocument`
--

CREATE TABLE `crud_privatedocument` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `uploadedFile` varchar(100) NOT NULL,
  `dateTimeOfUpload` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-10 04:33:40.386050', '2', 'login', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-12-10 04:34:27.327670', '2', 'login', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 7, 1),
(3, '2021-12-10 13:00:19.058741', '3', '#ab  HP  desktop', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(8, 'contenttypes', 'contenttype'),
(2, 'crud', 'document'),
(1, 'crud', 'equipo'),
(3, 'crud', 'privatedocument'),
(10, 'eventos', 'evento'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-10 01:13:06.649943'),
(2, 'auth', '0001_initial', '2021-12-10 01:13:17.144941'),
(3, 'admin', '0001_initial', '2021-12-10 01:13:19.370183'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-10 01:13:19.426944'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-10 01:13:19.484922'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-12-10 01:13:20.162870'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-12-10 01:13:21.204601'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-12-10 01:13:21.374289'),
(9, 'auth', '0004_alter_user_username_opts', '2021-12-10 01:13:21.439113'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-12-10 01:13:22.137107'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-12-10 01:13:22.182209'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-10 01:13:22.305072'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-12-10 01:13:22.424514'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-10 01:13:22.813342'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-12-10 01:13:23.021700'),
(16, 'auth', '0011_update_proxy_permissions', '2021-12-10 01:13:23.100255'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-10 01:13:23.297471'),
(18, 'crud', '0001_initial', '2021-12-10 01:13:23.710484'),
(19, 'crud', '0002_document', '2021-12-10 01:13:24.053409'),
(20, 'crud', '0003_privatedocument', '2021-12-10 01:13:24.520488'),
(21, 'crud', '0004_alter_privatedocument_uploadedfile', '2021-12-10 01:13:24.574967'),
(22, 'crud', '0005_alter_privatedocument_uploadedfile', '2021-12-10 01:13:24.642747'),
(23, 'sessions', '0001_initial', '2021-12-10 01:13:25.153215'),
(24, 'eventos', '0001_initial', '2021-12-10 11:49:57.785226'),
(25, 'eventos', '0002_delete_evento', '2021-12-10 14:28:13.117498'),
(26, 'eventos', '0003_evento', '2021-12-10 14:30:16.447461');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3exfj0mknhco4rl7ppb9hmlnlhhiuifj', '.eJxVjDsOwjAQBe_iGln-O1DSc4Zod73GAWRLcVIh7o4spYD2zcx7ixn2rcx753VekrgII06_GwI9uQ6QHlDvTVKr27qgHIo8aJe3lvh1Pdy_gwK9jForh4FpUhB8Vs7rqCdPGQjPPhobkrUGospROQ4xEXgKkVFby5kMis8X2Dc38w:1mvgXI:jeO8yqMN5VmmO9b4KBpShODIAZK74gVeHiEnIA3lfGw', '2021-12-24 14:06:08.443156'),
('ya7wo6ua4dbm77khzzalmzsyy8iw4mal', '.eJxVjEEOwiAQRe_C2hAoOIBL9z0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4k7gILU6_W8L84LoDumO9NZlbXZc5yV2RB-1ybMTP6-H-HRTs5Vsnb4O36OyZdVCciTWyBjBIyWVwBpBAT1YlJBPAGp8dUJiGAYiV0-L9AecTN9s:1mvgGZ:uCAaS23d8mWfX42ijmndJWD37M3r3bVPnGD_vtY8D0Q', '2021-12-24 13:48:51.662138');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_evento`
--

CREATE TABLE `eventos_evento` (
  `id` bigint(20) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `evento_descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos_evento`
--

INSERT INTO `eventos_evento` (`id`, `equipo_id`, `evento_descripcion`) VALUES
(1, 1, 'compra de equipo'),
(2, 1, 'Entrega de equipo'),
(3, 3, 'Compra de impresora');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `crud_document`
--
ALTER TABLE `crud_document`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crud_equipo`
--
ALTER TABLE `crud_equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crud_privatedocument`
--
ALTER TABLE `crud_privatedocument`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `eventos_evento`
--
ALTER TABLE `eventos_evento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crud_document`
--
ALTER TABLE `crud_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crud_equipo`
--
ALTER TABLE `crud_equipo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `crud_privatedocument`
--
ALTER TABLE `crud_privatedocument`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `eventos_evento`
--
ALTER TABLE `eventos_evento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
