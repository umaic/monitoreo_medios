-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 17, 2016 at 06:20 PM
-- Server version: 10.1.17-MariaDB
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoreo`
--

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `description` text NOT NULL,
  `labels` text NOT NULL,
  `source` varchar(255) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `title`, `link`, `description`, `labels`, `source`, `cdate`) VALUES
(1, 'Sindesena inició paro en defensa de financiación de la institución', 'http://www.cronicadelquindio.com/noticia-completa-titulo-sindesena_inici_paro_en_defensa_de_financiacin_de_la_institucin-seccion-la_economa-nota-102518', 'Ayer el Sindicato de Trabajadores Públicos del Sena, Sindesena, inició un paro nacional indefinido para defender la financiación de la institución, argumentando que con la reforma tributaria no habría recursos para el Servicio Nacional de Aprendizaje, Sena.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(2, '“De 800 vacantes ofertadas en 2016, solo se han ocupado 258”', 'http://www.cronicadelquindio.com/noticia-completa-titulo-de_800_vacantes_ofertadas_en_2016_solo_se_han_ocupado_258-seccion-la_economa-nota-102519', 'Nataly Llano Osorio, coordinadora del Centro de Empleo de la alcaldía de Armenia, aseguró que en el transcurso de 2016 se han ofertado desde la entidad 800 vacantes, pero solo se han ocupado 258.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(3, 'Discapacitados vs conductores, ‘maratón’ de movilidad reducida', 'http://www.cronicadelquindio.com/noticia-completa-titulo-discapacitados_vs_conductores_maratn_de_movilidad_reducida-seccion-la_ciudad-nota-102524', 'Como una verdadera ‘maratón’, describen las personas con movilidad reducida, los obstáculos en que se convirtieron los carros y motos parqueados frente a las rampas de acceso que permiten subir a los andenes.\n', 'frente, movilidad, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(4, 'Pimentón, batavia y limón tahití subieron de precio; la habichuela bajó', 'http://www.cronicadelquindio.com/noticia-completa-titulo-pimentn_batavia_y_limn_tahit_subieron_de_precio_la_habichuela_baj-seccion-la_economa-nota-102520', 'Según el Sistema de Información de Precios y Abastecimiento del Sector Agropecuario, Sipsa, en la central mayorista de Armenia, Mercar, los precios del pimentón, la lechuga batavia y el limón tahití registraron un incremento durante los dos primeros días de esta semana.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(5, 'El próximo viernes cita para incorporaciones a la Armada', 'http://www.cronicadelquindio.com/noticia-completa-titulo-el_prximo_viernes_cita_para_incorporaciones_a_la_armada-seccion-la_judicial-nota-102522', 'Los jóvenes quindianos interesados en definir su situación militar tienen la oportunidad de hacerlo como infantes de marina en la Armada Nacional.\n \n', 'arma, armad, milita, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(6, '3 vehículos de servicio especial inmovilizados por usar Uber', 'http://www.cronicadelquindio.com/noticia-completa-titulo-3_vehculos_de_servicio_especial_inmovilizados_por_usar_uber-seccion-la_ciudad-nota-102525', 'El comandante de agentes de Tránsito en Armenia, Carlos Arturo González Sánchez, informó que tres vehículos de servicio especial fueron inmovilizados durante el fin de semana por usar la plataforma Uber.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(7, 'Quindío, sin riegos de violencia política para próximas elecciones del plebiscito', 'http://www.cronicadelquindio.com/noticia-completa-titulo-quindo_sin_riegos_de_violencia_poltica_para_prximas_elecciones_del_plebiscito-seccion-la_regin-nota-102528', 'El departamento del Quindío es de los únicos en Colombia que enfrentará las elecciones del plebiscito por la terminación del conflicto armado con las Farc, sin riesgos de violencia política. \n', 'arma, armad, conflicto, farc, mina, violencia, Colombia, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(8, 'Buscan identificar alojamientos turísticos informales en Armenia', 'http://www.cronicadelquindio.com/noticia-completa-titulo-buscan_identificar_alojamientos_tursticos_informales_en_armenia-seccion-la_economa-nota-102484', 'Con el objetivo de fortalecer la formalidad de las empresas prestadoras de servicios turísticos, en especial de hospedaje, en Armenia se realizarán jornadas para identificar los sitios de alojamiento que carecen del Registro Nacional de Turismo.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(9, 'A don Nelson lo encontraron muerto dentro de su casa', 'http://www.cronicadelquindio.com/noticia-completa-titulo-a_don_nelson_lo_encontraron_muerto_dentro_de_su_casa-seccion-la_judicial-nota-102529', 'Un infarto habría sido la causa de la muerte de Nelson Salazar Caldas.\n', 'muert, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(10, 'Esperanza de paz en obras de estudiantes de Ciudadela de Occidente', 'http://www.cronicadelquindio.com/noticia-completa-titulo-esperanza_de_paz_en_obras_de_estudiantes_de_ciudadela_de_occidente-seccion-la_ciudad-nota-102474', 'Cinco estudiantes de la institución educativa Ciudadela de Occidente de Armenia, expusieron a las afueras del Sindicato Único de Trabajadores de la Educación del Quindío, Suteq, varias pinturas en las que demostraron lo que piensan los jóvenes acerca de la paz y la finalización del conflicto armado.\n', 'arma, armad, conflicto, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(11, 'Admiten demanda de nulidad contra Plan de Desarrollo del departamento ', 'http://www.cronicadelquindio.com/noticia-completa-titulo-admiten_demanda_de_nulidad_contra_plan_de_desarrollo_del_departamento-seccion-la_regin-nota-102532', 'El Tribunal Administrativo del Quindío admitió la demanda de nulidad contra la ordenanza número 008 de 2016,  proferida por la asamblea del Quindío, por medio de la cual se aprobó el Plan de Desarrollo 2016-2019. \n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(12, '¡La importancia de pertenecer a un gremio!', 'http://www.cronicadelquindio.com/noticia-completa-titulo-la_importancia_de_pertenecer_a_un_gremio-seccion-la_economa-nota-102485', 'Las preguntas más comunes que se hacen las personas cuando las invitan a participar en un gremio son: ¿Para qué me sirve asociarme? ¿Qué beneficios obtengo al hacerlo? ¿Para qué gastar dinero asociándome? \n', 'comunes, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(13, 'A cumplir condena por estupefacientes', 'http://www.cronicadelquindio.com/noticia-completa-titulo-a_cumplir_condena_por_estupefacientes-seccion-la_judicial-nota-102530', 'Agentes del Cuerpo Técnico de Investigación, CTI, seccional Quindío, capturaron a Jesús Bernardo Martínez Ortiz, contra quien existía una orden judicial para que cumpla una condena.\n', 'captura, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(14, '28 comparendos educativos en lo que va de este mes por pico y placa', 'http://www.cronicadelquindio.com/noticia-completa-titulo-28_comparendos_educativos_en_lo_que_va_de_este_mes_por_pico_y_placa-seccion-la_ciudad-nota-102476', 'En lo que va corrido de este mes, el cuerpo de agentes de la Secretaría de Tránsito y Transporte de Armenia, Setta, ha impuesto 28 comparendos educativos por pico y placa, así lo señaló el titular de la dependencia, Carlos Elías Restrepo Ferro.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(15, '$70 millones para el CAE La Primavera Montenegro', 'http://www.cronicadelquindio.com/noticia-completa-titulo-70_millones_para_el_cae_la_primavera_montenegro-seccion-la_regin-nota-102533', 'Con el fin de consolidar un sitio de reclusión adecuado donde se garanticen los derechos de los menores en alimentación, educación y seguridad, la secretaría de Familia del Quindío dispuso $70 millones para  adecuaciones del Centro de Atención Especial, CAE, La Primavera, Montenegro. \n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(16, 'Quindío, único departamento con cero deforestación en 2015', 'http://www.cronicadelquindio.com/noticia-completa-titulo-quindo_nico_departamento_con_cero_deforestacin_en_2015-seccion-la_economa-nota-102486', 'Durante el año 2015, el Quindío fue el único departamento de Colombia en el que no se registraron hectáreas de bosque deforestadas, según un informe del Instituto de Hidrología, Meteorología y Estudios Ambientales de Colombia, Ideam.\n', 'Colombia, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(17, 'Dos heridos y afectación a un local comercial por hinchas', 'http://www.cronicadelquindio.com/noticia-completa-titulo-dos_heridos_y_afectacin_a_un_local_comercial_por_hinchas-seccion-la_judicial-nota-102531', 'Las riñas entre hinchas y algunos desórdenes marcaron el entorno del partido entre el Deportes Quindío y el América de Cali jugado la noche del lunes en el estadio Centenario de Armenia.\n', 'herido, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(18, 'Inició postulación de artistas para recibir el Cafeto de Oro', 'http://www.cronicadelquindio.com/noticia-completa-titulo-inici_postulacin_de_artistas_para_recibir_el_cafeto_de_oro-seccion-la_ciudad-nota-102477', 'El alcalde de Armenia, Carlos Mario Álvarez Morales y la directora de la Corporación de Cultura y Turismo, Corpocultura, María Fernanda Fernández Granada, abrieron a partir de hoy y hasta el próximo 23 de septiembre, la convocatoria para postular a los artistas y gestores culturales al reconocimiento Cafeto de Oro.\n', 'granada, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(19, 'Sandra Paola Hurtado: ‘No’', 'http://www.cronicadelquindio.com/noticia-completa-titulo-sandra_paola_hurtado_no-seccion-la_regin-nota-102487', 'Los argumentos para apoyar el ‘sí’ o el ‘no’ en el plebiscito siguen manifestándose en el Quindío. Para la quinta entrega de esta sección LA CRÓNICA DEL QUINDÍO conversó con la exgobernadora del departamento Sandra Paola Hurtado Palacio. \n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(20, '“Áreas cultivadas con plátano han decaído un 40% aproximadamente”', 'http://www.cronicadelquindio.com/noticia-completa-titulo-reas_cultivadas_con_pltano_han_decado_un_40_aproximadamente-seccion-la_economa-nota-102459', 'Álvaro Ernesto Palacio Peláez, gerente de la Asociación Hortifrutícola de Colombia, Asohofrucol, afirmó que en el Quindío las áreas cultivadas con plátano han decaído aproximadamente 40%.\n', 'Colombia, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(21, 'Murió tras ser hallado pendiendo de una soga dentro de su vivienda', 'http://www.cronicadelquindio.com/noticia-completa-titulo-muri_tras_ser_hallado_pendiendo_de_una_soga_dentro_de_su_vivienda-seccion-la_judicial-nota-102481', 'Por motivos que aún se desconocen Luis Ángel Morales Cano decidió ponerle fin a su vida.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(22, '$20 millones para capacitar jóvenes víctimas del conflicto armado', 'http://www.cronicadelquindio.com/noticia-completa-titulo-20_millones_para_capacitar_jvenes_vctimas_del_conflicto_armado-seccion-la_ciudad-nota-102479', 'La secretaria de Desarrollo Social, Maydenrocío Rojas Vásquez, explicó que por instrucción del mandatario local, Carlos Mario Álvarez Morales, el municipio suscribió un convenio con la fundación Hogar San Juan Bosco para brindar capacitación en turismo y sistemas a los jóvenes víctimas del conflicto armado. \n', 'arma, armad, conflicto, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(23, 'Rayo, protagonista en 3ra exposición de la sala Roberto Henao Buriticá', 'http://www.cronicadelquindio.com/noticia-completa-titulo-rayo_protagonista_en_3ra_exposicin_de_la_sala_roberto_henao_buritic-seccion-la_regin-nota-102478', 'Se inauguró en la sala de exposiciones Roberto Henao Buriticá la tercera muestra del año, ‘De la calcografía al intaglio’, un recorrido por las primeras planchas del maestro Ómar Rayo. El evento de apertura contó con la participación y presentación de Águeda Pizarro Rayo, esposa del artista y Juan José Madrid, curador de la obra. \n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(24, 'Menor secuestrado en Quindío fue encontrado en el Tolima', 'http://www.cronicadelquindio.com/noticia-completa-titulo-menor_secuestrado_en_quindo_fue_encontrado_en_el_tolima-seccion-la_judicial-nota-102482', 'En el barrio Pablo VI de El Guamo, Tolima, las autoridades ubicaron a niño, de 13 años de edad, que había sido plagiado en el municipio de La Tebaida.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(25, 'Por no cumplir requisitos de habilitación, sancionadas 9 empresas de ambulancias', 'http://www.cronicadelquindio.com/noticia-completa-titulo-por_no_cumplir_requisitos_de_habilitacin_sancionadas_9_empresas_de_ambulancias-seccion-la_ciudad-nota-102445', 'La secretaría de Salud del Quindío como autoridad sanitaria y al término de las visitas de inspección a las empresas dedicadas al transporte básico de pacientes, sancionó a nueve de estas entidades por no cumplir los requisitos básicos de habilitación para la atención prehospitalaria, lo que deja habilitadas solo a cinco empresas que sí cumplen con los requerimientos exigidos por la normatividad.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(26, 'Encuentro Internacional de Mujeres Poetas llegó hasta Circasia y Filandia', 'http://www.cronicadelquindio.com/noticia-completa-titulo-encuentro_internacional_de_mujeres_poetas_lleg_hasta_circasia_y_filandia-seccion-la_regin-nota-102488', 'El III Encuentro Internacional de Mujeres Poetas sigue su ruta cultural por los municipios del Quindío, esta vez llegó a Circasia y Filandia en donde las invitadas ofrecieron talleres y recitales a los locales. \n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(27, 'Héctor sufrió fatal accidente cuando iba hacia Yumbo', 'http://www.cronicadelquindio.com/noticia-completa-titulo-hctor_sufri_fatal_accidente_cuando_iba_hacia_yumbo-seccion-la_judicial-nota-102483', 'Un accidente de tránsito le costó la vida a Héctor Quintero Yela luego de que saliera de Armenia con destino al municipio de Yumbo, Valle del Cauca.\n', 'accidente, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(28, '“La región debe proponer soluciones a los problemas de la educación”', 'http://www.cronicadelquindio.com/noticia-completa-titulo-la_regin_debe_proponer_soluciones_a_los_problemas_de_la_educacin-seccion-la_regin-nota-102489', 'Antonio José Vélez Melo, líder del área de calidad educativa de la secretaría de Educación de Armenia, señaló en el marco de la IV cumbre regional de secretarios de Educación que se llevó a cabo en la ciudad, que es deber de la región irradiar la solución a los problemas educativos.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(29, 'Dos muertos y siete heridos tras balacera en un estanquillo en Alcalá', 'http://www.cronicadelquindio.com/noticia-completa-titulo-dos_muertos_y_siete_heridos_tras_balacera_en_un_estanquillo_en_alcal-seccion-la_judicial-nota-102492', 'La incursión de un hombre armado en un establecimiento de diversión nocturna en el municipio de Alcalá, Valle del Cauca, dejó como saldo dos personas muertas y siete más heridas.\n', 'arma, armad, bala, herido, muert, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(30, 'Es hora de pasar la página de la violencia: Sergio Fajardo ', 'http://www.cronicadelquindio.com/noticia-completa-titulo-es_hora_de_pasar_la_pgina_de_la_violencia_sergio_fajardo-seccion-la_regin-nota-102490', 'Apostarle al ‘sí’ al plebiscito por el fin del conflicto armado con las Farc significa pasar la página de la violencia, que ya está llena, así lo definió el exgobernador de Antioquia Sergio Fajardo Valderrama en el foro sobre paz y salud mental que se realizó en la corporación Alexander von Humboldt de Armenia. \n', 'arma, armad, conflicto, farc, violencia, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(31, 'Autoridades atendieron intento de motín en calabozos de la Sijín', 'http://www.cronicadelquindio.com/noticia-completa-titulo-autoridades_atendieron_intento_de_motn_en_calabozos_de_la_sijn-seccion-la_judicial-nota-102493', 'La oportuna atención del personal de la Policía Nacional en el Quindío permitió controlar a tiempo un incendio que pretendían causar las personas que se encuentran detenidas en los calabozos de la Seccional de Investigación Criminal, Sijín.\n', 'mina, incendio, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(32, 'Abren convocatoria pública para profesionales en ciencias sociales', 'http://www.cronicadelquindio.com/noticia-completa-titulo-abren_convocatoria_pblica_para_profesionales_en_ciencias_sociales-seccion-la_regin-nota-102491', 'Profesionales en el área de ciencias humanas pueden participar en la convocatoria pública para pertenecer al Consejo Departamental de Patrimonio Cultural que busca salvaguardar o conservar el patrimonio de los quindianos.\n', '\n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(33, 'Ayer en Armenia despidieron al señor Hugoberto, asesinado en Piedecuesta', 'http://www.cronicadelquindio.com/noticia-completa-titulo-ayer_en_armenia_despidieron_al_seor_hugoberto_asesinado_en_piedecuesta-seccion-la_judicial-nota-102494', 'Familiares, amigos y conocidos le brindaron ayer en el cementerio Jardines de Armenia el último adiós a Hugoberto Ramírez Ardila, de 50 años de edad, quien fue asesinado en el municipio de Piedecuesta, área metropolitana de Bucaramanga, en Santander.\n', 'asesin, asesina, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(34, 'Dieron muerte a Pintuco en calle de Caicedonia', 'http://www.cronicadelquindio.com/noticia-completa-titulo-dieron_muerte_a_pintuco_en_calle_de_caicedonia-seccion-la_judicial-nota-102441', 'Con arma de fuego dieron muerte en el municipio de Caicedonia, Valle del Cauca, a Alexánder Mauricio Arroyave Montes. El crimen fue perpetrado ayer a eso de las 2:00 a. m. en la carrera 15 con calle 13 esquina, frente al bar El Guayabo de dicha localidad.\n', 'arma, frente, muert, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(35, 'Hoy, homenaje en Calarcá a Mauricio Londoño muerto en el Valle del Cauca', 'http://www.cronicadelquindio.com/noticia-completa-titulo-hoy_homenaje_en_calarc_a_mauricio_londoo_muerto_en_el_valle_del_cauca-seccion-la_judicial-nota-102442', 'Con una misa a las 3:00 p. m. en la iglesia San José del municipio de Calarcá familiares, conocidos y amigos le brindarán un homenaje póstumo a Mauricio Londoño Ramírez. El ciudadano, oriundo de la mencionada localidad quindiana, perdió la vida en confusos hechos ocurridos el pasado jueves en el vecino departamento del Valle del Cauca.\n', 'muert, \n', 'Cronica del Quindio', '2016-09-14 20:33:17'),
(36, '22 lesionados dejó accidente de un bus de Flota Magdalena', 'http://www.cronicadelquindio.com/noticia-completa-titulo-22_lesionados_dej_accidente_de_un_bus_de_flota_magdalena-seccion-la_judicial-nota-102443', 'Un saldo final de 22 personas lesionadas, por fortuna ninguna de gravedad, dejó accidente de bus de servicio público interdepartamental afiliado a la empresa Flota Magdalena de número interno 1605 y placas WFI 705.\n', 'accidente, \n', 'Cronica del Quindio', '2016-09-14 20:33:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
