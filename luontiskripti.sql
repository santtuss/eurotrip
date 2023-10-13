-- --------------------------------------------------------
-- Verkkotietokone:              127.0.0.1
-- Palvelinversio:               11.1.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versio:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for demogame
CREATE DATABASE IF NOT EXISTS `demogame` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `demogame`;

-- Dumping structure for taulu demogame.airport
CREATE TABLE IF NOT EXISTS `airport` (
  `id` int(11) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `latitude_deg` double DEFAULT NULL,
  `longitude_deg` double DEFAULT NULL,
  `elevation_ft` int(11) DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `iso_country` varchar(40) DEFAULT NULL,
  `iso_region` varchar(40) DEFAULT NULL,
  `municipality` varchar(40) DEFAULT NULL,
  `scheduled_service` varchar(40) DEFAULT NULL,
  `gps_code` varchar(40) DEFAULT NULL,
  `iata_code` varchar(40) DEFAULT NULL,
  `local_code` varchar(40) DEFAULT NULL,
  `home_link` varchar(40) DEFAULT NULL,
  `wikipedia_link` varchar(40) DEFAULT NULL,
  `keywords` varchar(40) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `is_capital` tinyint(1) DEFAULT NULL,
  `passengers` int(11) DEFAULT NULL,
  PRIMARY KEY (`ident`),
  KEY `iso_country` (`iso_country`),
  CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`iso_country`) REFERENCES `country` (`iso_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table demogame.airport: ~107 rows (suunnilleen)
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `elevation_ft`, `continent`, `iso_country`, `iso_region`, `municipality`, `scheduled_service`, `gps_code`, `iata_code`, `local_code`, `home_link`, `wikipedia_link`, `keywords`, `population`, `is_capital`, `passengers`) VALUES
	(123, 'BIKF', 'large_airport', 'Keflavik International Airport', 63.985001, -22.6056, 171, 'EU', 'IS', 'IS-2', 'Reykjavík', 'yes', 'BIKF', 'KEF', '', 'https://www.isavia.is/en/keflavik-airpor', 'https://en.wikipedia.org/wiki/Keflav%C3%', 'Keflavik Naval Air Station,REK', 131136, 1, 6126421),
	(2155, 'EBBR', 'large_airport', 'Brussels Airport', 50.901401519800004, 4.48443984985, 184, 'EU', 'BE', 'BE-BRU', 'Brussels', 'yes', 'EBBR', 'BRU', '', 'http://www.brusselsairport.be/en/', 'https://en.wikipedia.org/wiki/Brussels_A', '', 1208542, 1, 18930698),
	(301881, 'EDDB', 'large_airport', 'Berlin Brandenburg Airport', 52.351389, 13.493889, 157, 'EU', 'DE', 'DE-BR', 'Berlin', 'yes', 'EDDB', 'BER', '', 'https://ber.berlin-airport.de/', 'https://en.wikipedia.org/wiki/Berlin_Bra', '', 3562166, 1, 19846114),
	(2212, 'EDDF', 'large_airport', 'Frankfurt am Main Airport', 50.036249, 8.559294, 364, 'EU', 'DE', 'DE-HE', 'Frankfurt am Main', 'yes', 'EDDF', 'FRA', '', 'http://www.frankfurt-airport.de/', 'https://en.wikipedia.org/wiki/Frankfurt_', 'EDAF, Rhein-Main Air Base', 753056, 0, 48918482),
	(2214, 'EDDH', 'large_airport', 'Hamburg Helmut Schmidt Airport', 53.630402, 9.98823, 53, 'EU', 'DE', 'DE-HH', 'Hamburg', 'yes', 'EDDH', 'HAM', '', 'https://www.hamburg-airport.de/en/', 'https://en.wikipedia.org/wiki/Hamburg_Ai', 'Hamburg-Fuhlsbüttel Airport', 1841179, 0, 11091026),
	(2216, 'EDDK', 'large_airport', 'Cologne Bonn Airport', 50.8658981323, 7.1427397728, 302, 'EU', 'DE', 'DE-NW', 'Cologne', 'yes', 'EDDK', 'CGN', '', 'http://www.koeln-bonn-airport.de/en/', 'https://en.wikipedia.org/wiki/Cologne_Bo', 'Köln', 1085664, 0, 8740000),
	(2217, 'EDDL', 'large_airport', 'Düsseldorf Airport', 51.289501, 6.76678, 147, 'EU', 'DE', 'DE-NW', 'Düsseldorf', 'yes', 'EDDL', 'DUS', '', 'http://www.dus.com/dus_en/', 'https://en.wikipedia.org/wiki/D%C3%BCsse', '', 621877, 1, 16048794),
	(2218, 'EDDM', 'large_airport', 'Munich Airport', 48.353802, 11.7861, 1487, 'EU', 'DE', 'DE-BY', 'Munich', 'yes', 'EDDM', 'MUC', '', 'http://www.munich-airport.com/', 'https://en.wikipedia.org/wiki/Munich_Air', 'Franz Josef Strauss Airport, Flughafen M', 1464301, 0, 31642702),
	(2219, 'EDDN', 'large_airport', 'Nuremberg Airport', 49.498699, 11.078056, 1046, 'EU', 'DE', 'DE-BY', 'Nuremberg', 'yes', 'EDDN', 'NUE', '', 'https://www.airport-nuernberg.de/english', 'https://en.wikipedia.org/wiki/Nuremberg_', 'Nürnberg', 518365, 0, 4051404),
	(2220, 'EDDP', 'large_airport', 'Leipzig/Halle Airport', 51.423889, 12.236389, 465, 'EU', 'DE', 'DE-SN', 'Leipzig', 'yes', 'EDDP', 'LEJ', '', 'http://www.leipzig-halle-airport.de/en/i', 'https://en.wikipedia.org/wiki/Leipzig/Ha', 'Schkeuditz Airport', 586410, 0, 2989653),
	(2222, 'EDDS', 'large_airport', 'Stuttgart Airport', 48.689899444599995, 9.22196006775, 1276, 'EU', 'DE', 'DE-BW', 'Stuttgart', 'yes', 'EDDS', 'STR', '', 'http://www.flughafen-stuttgart.de/', 'https://en.wikipedia.org/wiki/Stuttgart_', '', 640511, 0, 6971513),
	(2224, 'EDDV', 'large_airport', 'Hannover Airport', 52.461101532, 9.685079574580001, 183, 'EU', 'DE', 'DE-NI', 'Hannover', 'yes', 'EDDV', 'HAJ', '', '', 'https://en.wikipedia.org/wiki/Hanover/La', '', 536925, 0, 6561285),
	(2301, 'EETN', 'large_airport', 'Lennart Meri Tallinn Airport', 59.41329956049999, 24.832799911499997, 131, 'EU', 'EE', 'EE-37', 'Tallinn', 'yes', 'EETN', 'TLL', '', 'http://www.tallinn-airport.ee/eng', 'https://en.wikipedia.org/wiki/Tallinn_Ai', '', 437619, 1, 3276281),
	(2307, 'EFHK', 'large_airport', 'Helsinki Vantaa Airport', 60.3172, 24.963301, 179, 'EU', 'FI', 'FI-18', 'Helsinki', 'yes', 'EFHK', 'HEL', '', 'http://www.finavia.fi/en/helsinki-airpor', 'https://en.wikipedia.org/wiki/Helsinki_A', '', 656229, 1, 12882861),
	(2385, 'EGAA', 'large_airport', 'Belfast International Airport', 54.6575012207, -6.2158298492399995, 268, 'EU', 'GB', 'GB-NIR', 'Belfast', 'yes', 'EGAA', 'BFS', '', 'http://www.belfastairport.com/', 'https://en.wikipedia.org/wiki/Belfast_In', 'Aldergrove, RAF Aldergrove', 343542, 0, 2889170),
	(2389, 'EGBB', 'large_airport', 'Birmingham International Airport', 52.453899383499994, -1.74802994728, 327, 'EU', 'GB', 'GB-ENG', 'Birmingham', 'yes', 'EGBB', 'BHX', '', 'http://www.bhx.co.uk/', 'https://en.wikipedia.org/wiki/Birmingham', '', 1153717, 0, 8087146),
	(2398, 'EGCC', 'large_airport', 'Manchester Airport', 53.349375, -2.279521, 257, 'EU', 'GB', 'GB-ENG', 'Manchester', 'yes', 'EGCC', 'MAN', '', 'http://www.manchesterairport.co.uk/', 'https://en.wikipedia.org/wiki/Manchester', 'Ringway Airport, RAF Ringway', 547627, 0, 23369770),
	(2429, 'EGKK', 'large_airport', 'London Gatwick Airport', 51.148102, -0.190278, 202, 'EU', 'GB', 'GB-ENG', 'London', 'yes', 'EGKK', 'LGW', '', 'http://www.gatwickairport.com/', 'https://en.wikipedia.org/wiki/Gatwick_Ai', 'LON, Crawley, Charlwood', 8136000, 1, 32839000),
	(2461, 'EGPF', 'large_airport', 'Glasgow International Airport', 55.871899, -4.43306, 26, 'EU', 'GB', 'GB-SCT', 'Paisley, Renfrewshire', 'yes', 'EGPF', 'GLA', '', 'http://www.glasgowairport.com/', 'https://en.wikipedia.org/wiki/Glasgow_In', 'Port-adhair Eadar-nàiseanta Ghlaschu, RA', 80000, 0, 6516000),
	(2462, 'EGPH', 'large_airport', 'Edinburgh Airport', 55.950145, -3.372288, 135, 'EU', 'GB', 'GB-SCT', 'Edinburgh', 'yes', 'EGPH', 'EDI', '', 'http://www.edinburghairport.com/', 'https://en.wikipedia.org/wiki/Edinburgh_', '', 536775, 1, 11261873),
	(2513, 'EHAM', 'large_airport', 'Amsterdam Airport Schiphol', 52.308601, 4.76389, -11, 'EU', 'NL', 'NL-NH', 'Amsterdam', 'yes', 'EHAM', 'AMS', '', 'http://www.schiphol.nl/', 'https://en.wikipedia.org/wiki/Amsterdam_', '', 872680, 1, 52472188),
	(2518, 'EHEH', 'large_airport', 'Eindhoven Airport', 51.4500999451, 5.37452983856, 74, 'EU', 'NL', 'NL-NB', 'Eindhoven', 'yes', 'EHEH', 'EIN', '', 'http://www.eindhovenairport.nl/', 'https://en.wikipedia.org/wiki/Eindhoven_', 'Welschap Airport', 234235, 0, 6300000),
	(2533, 'EIDW', 'large_airport', 'Dublin Airport', 53.421299, -6.27007, 242, 'EU', 'IE', 'IE-D', 'Dublin', 'yes', 'EIDW', 'DUB', '', 'http://www.dublinairport.com/', 'https://en.wikipedia.org/wiki/Dublin_Air', 'Aerfort Bhaile Átha Cliath', 1388038, 1, 27787556),
	(2537, 'EINN', 'large_airport', 'Shannon Airport', 52.702, -8.92482, 46, 'EU', 'IE', 'IE-CE', 'Shannon', 'yes', 'EINN', 'SNN', '', 'http://www.shannonairport.com/', 'https://en.wikipedia.org/wiki/Shannon_Ai', '', 9500, 0, 812401),
	(2541, 'EKBI', 'large_airport', 'Billund Airport', 55.7402992249, 9.15178012848, 247, 'EU', 'DK', 'DK-83', 'Billund', 'yes', 'EKBI', 'BLL', '', 'http://www.billund-airport.dk/?sc_lang=e', 'https://en.wikipedia.org/wiki/Billund_Ai', '', 6500, 0, 3712400),
	(2542, 'EKCH', 'large_airport', 'Copenhagen Kastrup Airport', 55.617900848389, 12.656000137329, 17, 'EU', 'DK', 'DK-84', 'Copenhagen', 'yes', 'EKCH', 'CPH', '', 'http://www.cph.dk/en/', 'https://en.wikipedia.org/wiki/Copenhagen', 'København, Malmö', 626508, 1, 22143135),
	(2563, 'ELLX', 'large_airport', 'Luxembourg-Findel International Airport', 49.6233333, 6.2044444, 1234, 'EU', 'LU', 'LU-L', 'Luxembourg', 'yes', 'ELLX', 'LUX', '', 'http://www.lux-airport.lu/en/', 'https://en.wikipedia.org/wiki/Luxembourg', '', 626108, 1, 4114291),
	(2570, 'ENBR', 'large_airport', 'Bergen Airport, Flesland', 60.2934, 5.21814, 170, 'EU', 'NO', 'NO-46', 'Bergen', 'yes', 'ENBR', 'BGO', '', 'http://www.avinor.no/en/airport/bergen', 'https://en.wikipedia.org/wiki/Bergen_Air', '', 283929, 0, 5995234),
	(2578, 'ENGM', 'large_airport', 'Oslo Airport, Gardermoen', 60.193901, 11.1004, 681, 'EU', 'NO', 'NO-30', 'Oslo', 'yes', 'ENGM', 'OSL', '', 'https://avinor.no/en/airport/oslo-airpor', 'https://en.wikipedia.org/wiki/Oslo_Airpo', '', 700000, 1, 22467510),
	(2599, 'ENTC', 'large_airport', 'Tromsø Airport, Langnes', 69.683296, 18.9189, 31, 'EU', 'NO', 'NO-54', 'Tromsø', 'yes', 'ENTC', 'TOS', '', 'http://www.avinor.no/en/airport/tromso', 'https://en.wikipedia.org/wiki/Troms%C3%B', 'Langnes, Tromsøya, Tromso', 77000, 0, 2262622),
	(2601, 'ENVA', 'large_airport', 'Trondheim Airport, Værnes', 63.457802, 10.924, 56, 'EU', 'NO', 'NO-50', 'Trondheim', 'yes', 'ENVA', 'TRD', '', 'https://avinor.no/en/airport/trondheim-a', 'https://en.wikipedia.org/wiki/Trondheim_', '', 205116, 0, 3803933),
	(2602, 'ENZV', 'large_airport', 'Stavanger Airport, Sola', 58.876701, 5.63778, 29, 'EU', 'NO', 'NO-11', 'Stavanger', 'yes', 'ENZV', 'SVG', '', 'http://www.avinor.no/en/airport/stavange', 'https://en.wikipedia.org/wiki/Stavanger_', 'Sola Air Station, Stavanger lufthavn, So', 132798, 0, 4410766),
	(2608, 'EPGD', 'large_airport', 'Gda?sk Lech Wa??sa Airport', 54.377601623535156, 18.46619987487793, 489, 'EU', 'PL', 'PL-PM', 'Gda?sk', 'yes', 'EPGD', 'GDN', '', 'http://www.airport.gdansk.pl/', 'https://en.wikipedia.org/wiki/Gda%C5%84s', 'Gda?sk-R?biechowo', 485378, 0, 4576705),
	(2609, 'EPKK', 'large_airport', 'Kraków John Paul II International Airpor', 50.077702, 19.7848, 791, 'EU', 'PL', 'PL-MA', 'Kraków', 'yes', 'EPKK', 'KRK', '', 'http://www.krakowairport.pl/en/', 'https://en.wikipedia.org/wiki/Kraków_Joh', 'Krakov', 779115, 0, 7394219),
	(2637, 'EPWA', 'large_airport', 'Warsaw Chopin Airport', 52.1656990051, 20.967100143399996, 362, 'EU', 'PL', 'PL-MZ', 'Warsaw', 'yes', 'EPWA', 'WAW', '', 'http://www.lotnisko-chopina.pl/?lang=en', 'https://en.wikipedia.org/wiki/Warsaw_Fre', 'Ok?cie', 1797856, 1, 14946354),
	(2648, 'ESGG', 'large_airport', 'Gothenburg-Landvetter Airport', 57.662799835205, 12.279800415039, 506, 'EU', 'SE', 'SE-Q', 'Gothenburg', 'yes', 'ESGG', 'GOT', '', 'https://www.swedavia.com/landvetter/', 'https://en.wikipedia.org/wiki/Gothenburg', 'Göteborg-Landvetter', 600473, 0, 4965000),
	(2701, 'ESSA', 'large_airport', 'Stockholm-Arlanda Airport', 59.651901245117, 17.918600082397, 137, 'EU', 'SE', 'SE-AB', 'Stockholm', 'yes', 'ESSA', 'ARN', '', 'http://www.swedavia.se/arlanda/', 'https://en.wikipedia.org/wiki/Stockholm-', '', 975904, 1, 18427286),
	(2758, 'EVRA', 'large_airport', 'Riga International Airport', 56.92359924316406, 23.971099853515625, 36, 'EU', 'LV', 'LV-RIX', 'Riga', 'yes', 'EVRA', 'RIX', '', 'http://www.riga-airport.com/', 'https://en.wikipedia.org/wiki/Riga_Inter', '', 632614, 1, 5380779),
	(2766, 'EYVI', 'large_airport', 'Vilnius International Airport', 54.634102, 25.285801, 648, 'EU', 'LT', 'LT-VL', 'Vilnius', 'yes', 'EYVI', 'VNO', '', 'http://www.vilnius-airport.lt/en/', 'https://en.wikipedia.org/wiki/Vilnius_In', '', 587581, 1, 3915960),
	(3077, 'GCFV', 'large_airport', 'Fuerteventura Airport', 28.4527, -13.8638, 85, 'EU', 'ES', 'ES-CN', 'Fuerteventura Island', 'yes', 'GCFV', 'FUE', '', 'https://www.aena.es/en/fuerteventura.htm', 'https://en.wikipedia.org/wiki/El_Matorra', '', 125000, 0, 7165580),
	(3081, 'GCLP', 'large_airport', 'Gran Canaria Airport', 27.9319, -15.3866, 78, 'EU', 'ES', 'ES-CN', 'Gran Canaria Island', 'yes', 'GCLP', 'LPA', '', 'https://www.aena.es/en/gran-canaria.html', 'https://en.wikipedia.org/wiki/Gran_Canar', 'Canary Islands, Las Palmas Airport, Gand', 875000, 0, 3591274),
	(3082, 'GCRR', 'large_airport', 'César Manrique-Lanzarote Airport', 28.945499, -13.6052, 46, 'EU', 'ES', 'ES-CN', 'Lanzarote Island', 'yes', 'GCRR', 'ACE', '', 'https://www.aena.es/en/cesar-manrique-la', 'https://en.wikipedia.org/wiki/Lanzarote_', 'Arrecife Airport', 175000, 0, 7424519),
	(3083, 'GCTS', 'large_airport', 'Tenerife Sur Airport', 28.0445, -16.5725, 209, 'EU', 'ES', 'ES-CN', 'Tenerife', 'yes', 'GCTS', 'TFS', '', 'https://www.aena.es/en/tenerife-sur.html', 'https://en.wikipedia.org/wiki/Tenerife%E', 'Canary Islands, Reina Sofía, TCI, Teneri', 925000, 0, 11483333),
	(3972, 'LATI', 'large_airport', 'Tirana International Airport Mother Tere', 41.4146995544, 19.7206001282, 126, 'EU', 'AL', 'AL-11', 'Tirana', 'yes', 'LATI', 'TIA', '', 'http://www.tirana-airport.com/', 'https://en.wikipedia.org/wiki/Tirana_Int', 'Rinas International Airport, Aeroporti N', 877717, 1, 2953909),
	(3974, 'LBBG', 'large_airport', 'Burgas Airport', 42.56959915161133, 27.515199661254883, 135, 'EU', 'BG', 'BG-02', 'Burgas', 'yes', 'LBBG', 'BOJ', '', '', 'https://en.wikipedia.org/wiki/Burgas_Air', '', 225000, 0, 3123864),
	(3977, 'LBSF', 'large_airport', 'Sofia Airport', 42.696693420410156, 23.411436080932617, 1742, 'EU', 'BG', 'BG-23', 'Sofia', 'yes', 'LBSF', 'SOF', '', 'http://sofia-airport.bg', 'https://en.wikipedia.org/wiki/Sofia_Airp', '', 1286591, 1, 6003653),
	(3979, 'LBWN', 'large_airport', 'Varna Airport', 43.232101, 27.8251, 230, 'EU', 'BG', 'BG-03', 'Varna', 'yes', 'LBWN', 'VAR', '', '', 'https://en.wikipedia.org/wiki/Varna_Airp', '', 341041, 0, 2768296),
	(3993, 'LDZA', 'large_airport', 'Zagreb Airport', 45.7429008484, 16.0687999725, 353, 'EU', 'HR', 'HR-21', 'Zagreb', 'yes', 'LDZA', 'ZAG', '', '', 'https://en.wikipedia.org/wiki/Zagreb_Air', 'Pleso', 804507, 1, 3243373),
	(3997, 'LEAL', 'large_airport', 'Alicante-Elche Miguel Hernández Airport', 38.2822, -0.558156, 142, 'EU', 'ES', 'ES-V', 'Alicante', 'yes', 'LEAL', 'ALC', '', 'https://www.aena.es/en/alicante-elche.ht', 'https://en.wikipedia.org/wiki/Alicante_A', '', 334678, 0, 13202880),
	(4004, 'LEBL', 'large_airport', 'Josep Tarradellas Barcelona-El Prat Airp', 41.2971, 2.07846, 12, 'EU', 'ES', 'ES-CT', 'Barcelona', 'yes', 'LEBL', 'BCN', '', 'https://www.aena.es/en/josep-tarradellas', 'https://en.wikipedia.org/wiki/Barcelona%', 'El Prat Airport,Barcelona International,', 1636762, 0, 41639622),
	(4013, 'LEIB', 'large_airport', 'Ibiza Airport', 38.872898, 1.37312, 24, 'EU', 'ES', 'ES-PM', 'Ibiza', 'yes', 'LEIB', 'IBZ', '', 'https://www.aena.es/en/ibiza.html', 'https://en.wikipedia.org/wiki/Ibiza_Airp', '', 55000, 0, 8750283),
	(4019, 'LEMD', 'large_airport', 'Adolfo Suárez Madrid–Barajas Airport', 40.471926, -3.56264, 1998, 'EU', 'ES', 'ES-M', 'Madrid', 'yes', 'LEMD', 'MAD', '', 'https://www.aena.es/en/adolfo-suarez-mad', 'https://en.wikipedia.org/wiki/Adolfo_Su%', 'Leganés, Madrid Barajas International Ai', 3334730, 1, 50633652),
	(4020, 'LEMG', 'large_airport', 'Málaga-Costa del Sol Airport', 36.6749, -4.49911, 53, 'EU', 'ES', 'ES-AN', 'Málaga', 'yes', 'LEMG', 'AGP', '', 'https://www.aena.es/en/malaga-costa-del-', 'https://en.wikipedia.org/wiki/M%C3%A1lag', 'Costa del Sol,Malaga', 578460, 0, 8058368),
	(4035, 'LEPA', 'large_airport', 'Palma de Mallorca Airport', 39.551701, 2.73881, 27, 'EU', 'ES', 'ES-PM', 'Palma De Mallorca', 'yes', 'LEPA', 'PMI', '', 'https://www.aena.es/en/palma-de-mallorca', 'https://en.wikipedia.org/wiki/Son_Sant_J', 'Son Sant Joan Airport, LESJ', 416065, 0, 28573364),
	(4038, 'LEST', 'large_airport', 'Santiago-Rosalía de Castro Airport', 42.896301, -8.41514, 1213, 'EU', 'ES', 'ES-GA', 'Santiago de Compostela', 'yes', 'LEST', 'SCQ', '', 'https://www.aena.es/en/santiago-rosalia-', 'https://en.wikipedia.org/wiki/Santiago_d', '', 95147, 0, 2503147),
	(4060, 'LFBD', 'large_airport', 'Bordeaux-Mérignac Airport', 44.8283, -0.715556, 162, 'EU', 'FR', 'FR-NAQ', 'Bordeaux/Mérignac', 'yes', 'LFBD', 'BOD', '', 'https://www.bordeaux.aeroport.fr/', 'https://en.wikipedia.org/wiki/Bordeaux%E', '', 275000, 0, 6011651),
	(4070, 'LFBO', 'large_airport', 'Toulouse-Blagnac Airport', 43.629101, 1.36382, 499, 'EU', 'FR', 'FR-OCC', 'Toulouse/Blagnac', 'yes', 'LFBO', 'TLS', '', 'http://www.toulouse.aeroport.fr/', 'https://en.wikipedia.org/wiki/Toulouse_B', '', 486421, 0, 5194000),
	(4137, 'LFLL', 'large_airport', 'Lyon Saint-Exupéry Airport', 45.725556, 5.081111, 821, 'EU', 'FR', 'FR-ARA', 'Lyon', 'yes', 'LFLL', 'LYS', '', 'https://www.lyonaeroports.com/', 'https://en.wikipedia.org/wiki/Saint-Exup', '', 515695, 0, 5700000),
	(4155, 'LFML', 'large_airport', 'Marseille Provence Airport', 43.439271922, 5.22142410278, 74, 'EU', 'FR', 'FR-PAC', 'Marseille', 'yes', 'LFML', 'MRS', '', '', 'https://en.wikipedia.org/wiki/Marseille_', '', 869815, 0, 10474516),
	(4156, 'LFMN', 'large_airport', 'Nice-Côte d\'Azur Airport', 43.6584014893, 7.215869903560001, 12, 'EU', 'FR', 'FR-PAC', 'Nice', 'yes', 'LFMN', 'NCE', '', '', 'https://en.wikipedia.org/wiki/C%C3%B4te_', '', 343629, 0, 12119043),
	(4185, 'LFPG', 'large_airport', 'Charles de Gaulle International Airport', 49.012798, 2.55, 392, 'EU', 'FR', 'FR-IDF', 'Paris', 'yes', 'LFPG', 'CDG', '', 'http://www.aeroportsdeparis.fr/', 'https://en.wikipedia.org/wiki/Charles_de', 'PAR, Aéroport Roissy-Charles de Gaulle, ', 2138551, 1, 57474033),
	(4226, 'LFSB', 'large_airport', 'EuroAirport Basel-Mulhouse-Freiburg Airp', 47.59, 7.529167, 885, 'EU', 'FR', 'FR-GES', 'Bâle/Mulhouse', 'yes', 'LFSB', 'BSL', '', 'http://www.euroairport.com/', 'https://en.wikipedia.org/wiki/EuroAirpor', 'MLH, EAP, LSZM', 225000, 0, 9709111),
	(4251, 'LGAV', 'large_airport', 'Athens Eleftherios Venizelos Internation', 37.936401, 23.9445, 308, 'EU', 'GR', 'GR-A1', 'Athens', 'yes', 'LGAV', 'ATH', '', 'http://www.aia.gr', 'https://en.wikipedia.org/wiki/Athens_Int', '', 664046, 1, 22728750),
	(4258, 'LGIR', 'large_airport', 'Heraklion International Nikos Kazantzaki', 35.3396987915, 25.180299758900002, 115, 'EU', 'GR', 'GR-91', 'Heraklion', 'yes', 'LGIR', 'HER', '', '', 'https://en.wikipedia.org/wiki/Heraklion_', 'Crete Island', 173993, 0, 7879463),
	(4293, 'LGTS', 'large_airport', 'Thessaloniki Macedonia International Air', 40.51969909667969, 22.97089958190918, 22, 'EU', 'GR', 'GR-54', 'Thessaloniki', 'yes', 'LGTS', 'SKG', '', '', 'https://en.wikipedia.org/wiki/Thessaloni', 'Makedonia. Macedonia. Salonica', 325182, 0, 5923175),
	(4296, 'LHBP', 'large_airport', 'Budapest Liszt Ferenc International Airp', 47.42976, 19.261093, 495, 'EU', 'HU', 'HU-PE', 'Budapest', 'yes', 'LHBP', 'BUD', '', 'http://www.bud.hu/english', 'https://en.wikipedia.org/wiki/Budapest_F', 'Ferihegyi nemzetközi repül?tér, Budapest', 1752286, 1, 12205070),
	(4318, 'LICC', 'large_airport', 'Catania-Fontanarossa Airport', 37.466801, 15.0664, 39, 'EU', 'IT', 'IT-82', 'Catania', 'yes', 'LICC', 'CTA', 'CT03', 'http://www.aeroporto.catania.it/', 'https://en.wikipedia.org/wiki/Catania-Fo', 'Lanza Di Trabie, Catania-Fontanarossa Vi', 311584, 0, 8182922),
	(4321, 'LICJ', 'large_airport', 'Falcone–Borsellino Airport', 38.175999, 13.091, 65, 'EU', 'IT', 'IT-82', 'Palermo', 'yes', 'LICJ', 'PMO', 'PA03', 'http://www.gesap.it/index.php', 'https://en.wikipedia.org/wiki/Falcone%E2', 'Palermo Airport, Punta Raisi Airport', 677656, 0, 7117822),
	(4332, 'LIEE', 'large_airport', 'Cagliari Elmas Airport', 39.251499, 9.05428, 13, 'EU', 'IT', 'IT-88', 'Cagliari', 'yes', 'LIEE', 'CAG', 'CA07', 'http://www.cagliariairport.it/en/', 'https://en.wikipedia.org/wiki/Cagliari_E', 'Cagliari Airport,Elmas', 154460, 0, 4396594),
	(4341, 'LIME', 'large_airport', 'Milan Bergamo Airport', 45.673901, 9.70417, 782, 'EU', 'IT', 'IT-25', 'Milan', 'yes', 'LIME', 'BGY', 'BG01', 'http://www.sacbo.it/', 'https://en.wikipedia.org/wiki/Orio_al_Se', 'Bergamo Orio al Serio Airport, Il Carava', 1420707, 0, 13155806),
	(4342, 'LIMF', 'large_airport', 'Turin Airport', 45.200802, 7.64963, 989, 'EU', 'IT', 'IT-21', 'Torino', 'yes', 'LIMF', 'TRN', 'TO11', 'http://www.aeroportoditorino.it/', 'https://en.wikipedia.org/wiki/Turin_Inte', 'Torino-Caselle Airport, Sandro Pertini A', 887402, 0, 4193881),
	(4354, 'LIPE', 'large_airport', 'Bologna Guglielmo Marconi Airport', 44.5354, 11.2887, 123, 'EU', 'IT', 'IT-45', 'Bologna', 'yes', 'LIPE', 'BLQ', 'BO08', 'http://www.bologna-airport.it/?LN=UK', 'https://en.wikipedia.org/wiki/Bologna_Ai', 'Guglielmo Marconi Airport, Borgo Panigal', 401000, 0, 5496000),
	(4366, 'LIPX', 'large_airport', 'Verona Villafranca Airport', 45.395699, 10.8885, 239, 'EU', 'IT', 'IT-34', 'Verona', 'yes', 'LIPX', 'VRN', 'VR10', 'http://www.aeroportoverona.it/', 'https://en.wikipedia.org/wiki/Verona_Air', 'Valerio Catullo, Villafranca Internation', 258870, 0, 4879945),
	(4368, 'LIPZ', 'large_airport', 'Venice Marco Polo Airport', 45.505299, 12.3519, 7, 'EU', 'IT', 'IT-34', 'Venice', 'yes', 'LIPZ', 'VCE', 'VE05', 'http://www.veniceairport.com/core/index.', 'https://en.wikipedia.org/wiki/Venice_Mar', 'Venezia Tessera', 260654, 0, 10590386),
	(4372, 'LIRF', 'large_airport', 'Rome–Fiumicino Leonardo da Vinci Interna', 41.804532, 12.251998, 13, 'EU', 'IT', 'IT-62', 'Rome', 'yes', 'LIRF', 'FCO', 'RM11', 'http://www.adr.it/portal/portal/adr/Fium', 'https://en.wikipedia.org/wiki/Leonardo_d', 'ROM, Rome Fiumicino Airport, Fiumicino A', 2870338, 1, 29360613),
	(4378, 'LIRN', 'large_airport', 'Naples International Airport', 40.886002, 14.2908, 294, 'EU', 'IT', 'IT-72', 'Nápoli', 'yes', 'LIRN', 'NAP', 'NA01', 'http://www.portal.gesac.it/', 'https://en.wikipedia.org/wiki/Naples_Int', 'Capodichino Airport, Aeroporto di Napoli', 959574, 0, 8961237),
	(4379, 'LIRP', 'large_airport', 'Pisa International Airport', 43.683899, 10.3927, 6, 'EU', 'IT', 'IT-52', 'Pisa', 'yes', 'LIRP', 'PSA', 'PI05', 'http://www.pisa-airport.com/', 'https://en.wikipedia.org/wiki/Pisa_Inter', 'Galileo Galilei Airport, San Giusto Airp', 90000, 0, 5378715),
	(4386, 'LJLJ', 'large_airport', 'Ljubljana Jože Pu?nik Airport', 46.223701, 14.4576, 1273, 'EU', 'SI', 'SI-061', 'Ljubljana', 'yes', 'LJLJ', 'LJU', '', 'http://www.lju-airport.si/', 'https://en.wikipedia.org/wiki/Ljubljana_', 'Ljubljana, Brnik, Kranj', 295504, 1, 1777722),
	(4408, 'LKPR', 'large_airport', 'Václav Havel Airport Prague', 50.1008, 14.26, 1247, 'EU', 'CZ', 'CZ-PR', 'Prague', 'yes', 'LKPR', 'PRG', '', 'http://www.prg.aero', 'https://en.wikipedia.org/wiki/Ruzyn%C4%9', 'Letišt? Praha-Ruzyn?, Ruzyn? Internation', 1327454, 1, 8616807),
	(4427, 'LMML', 'large_airport', 'Malta International Airport', 35.857498, 14.4775, 300, 'EU', 'MT', 'MT-25', 'Valletta', 'yes', 'LMML', 'MLA', '', 'http://www.maltairport.com/en/home.htm', 'https://en.wikipedia.org/wiki/Malta_Inte', 'Luqa Airport,Valletta,Gudja,RAF Luqa', 6760, 1, 7125471),
	(4434, 'LOWW', 'large_airport', 'Vienna International Airport', 48.110298, 16.5697, 600, 'EU', 'AT', 'AT-9', 'Vienna', 'yes', 'LOWW', 'VIE', '', 'http://www.viennaairport.com/en/', 'https://en.wikipedia.org/wiki/Vienna_Int', '', 1897491, 1, 23682133),
	(4448, 'LPFR', 'large_airport', 'Faro Airport', 37.0144004822, -7.96590995789, 24, 'EU', 'PT', 'PT-08', 'Faro', 'yes', 'LPFR', 'FAO', '', 'http://www.ana.pt/en-US/Aeroportos/algar', 'https://en.wikipedia.org/wiki/Faro_Airpo', '', 64560, 0, 9074956),
	(4456, 'LPPD', 'large_airport', 'João Paulo II Airport', 37.7411994934, -25.6979007721, 259, 'EU', 'PT', 'PT-20', 'Ponta Delgada', 'yes', 'LPPD', 'PDL', '', 'http://www.ana.pt/en-US/Aeroportos/acore', 'https://en.wikipedia.org/wiki/Jo%C3%A3o_', '', 68809, 0, 1790131),
	(4459, 'LPPR', 'large_airport', 'Francisco de Sá Carneiro Airport', 41.2481002808, -8.68138980865, 228, 'EU', 'PT', 'PT-13', 'Porto', 'yes', 'LPPR', 'OPO', '', 'http://www.ana.pt/en-US/Aeroportos/porto', 'https://en.wikipedia.org/wiki/Francisco_', '', 1787960, 0, 12638000),
	(4461, 'LPPT', 'large_airport', 'Humberto Delgado Airport (Lisbon Portela', 38.7813, -9.13592, 374, 'EU', 'PT', 'PT-11', 'Lisbon', 'yes', 'LPPT', 'LIS', '', 'http://www.ana.pt/en-US/Aeroportos/lisbo', 'https://en.wikipedia.org/wiki/Lisbon_Por', 'Lisboa', 547815, 1, 28262000),
	(4482, 'LROP', 'large_airport', 'Henri Coand? International Airport', 44.5711111, 26.085, 314, 'EU', 'RO', 'RO-B', 'Bucharest', 'yes', 'LROP', 'OTP', '', 'http://www.bucharestairports.ro/en/', 'https://en.wikipedia.org/wiki/Henri_Coan', 'BUH, Otopeni Airport, RoAF 90th Airlift ', 1883425, 1, 12601679),
	(4490, 'LSGG', 'large_airport', 'Geneva Cointrin International Airport', 46.23809814453125, 6.108950138092041, 1411, 'EU', 'CH', 'CH-GE', 'Geneva', 'yes', 'LSGG', 'GVA', '', 'http://www.gva.ch/', 'https://en.wikipedia.org/wiki/Geneva_Coi', '', 201818, 0, 14085282),
	(4505, 'LSZH', 'large_airport', 'Zürich Airport', 47.458056, 8.548056, 1417, 'EU', 'CH', 'CH-ZH', 'Zurich', 'yes', 'LSZH', 'ZRH', '', 'http://www.zurich-airport.com/', 'https://en.wikipedia.org/wiki/Zurich_Air', '', 434008, 0, 22561132),
	(4573, 'LWSK', 'large_airport', 'Skopje International Airport', 41.961601, 21.621401, 781, 'EU', 'MK', 'MK-004', 'Skopje', 'yes', 'LWSK', 'SKP', '', 'http://skp.airports.com.mk/', 'https://en.wikipedia.org/wiki/Skopje_Air', '', 550000, 1, 2597267),
	(4610, 'LYBE', 'large_airport', 'Belgrade Nikola Tesla Airport', 44.8184013367, 20.3090991974, 335, 'EU', 'RS', 'RS-00', 'Belgrade', 'yes', 'LYBE', 'BEG', '', 'http://www.beg.aero/', 'https://en.wikipedia.org/wiki/Belgrade_N', 'Beograd, Sur?in Airport', 1395363, 1, 5611920),
	(4613, 'LYPG', 'large_airport', 'Podgorica Airport / Podgorica Golubovci ', 42.359402, 19.2519, 141, 'EU', 'ME', 'ME-16', 'Podgorica', 'yes', 'LYPG', 'TGD', '', 'http://www.montenegroairports.com/?menu=', 'https://en.wikipedia.org/wiki/Podgorica_', 'Podgorica Airbase, Golubovci Airbase, ??', 204877, 1, 1004400),
	(4617, 'LZIB', 'large_airport', 'M. R. Štefánik Airport', 48.17020034790039, 17.21269989013672, 436, 'EU', 'SK', 'SK-BL', 'Bratislava', 'yes', 'LZIB', 'BTS', '', '', 'https://en.wikipedia.org/wiki/M._R._%C5%', '', 432864, 1, 2851481),
	(6467, 'UKBB', 'large_airport', 'Boryspil International Airport', 50.345001220703125, 30.894699096679688, 427, 'EU', 'UA', 'UA-32', 'Kiev', 'yes', 'UKBB', 'KBP', '', 'http://www.airport-borispol.kiev.ua/', 'https://en.wikipedia.org/wiki/Boryspil_I', 'Borispol, ??????????? ???????? "????????', 2971155, 1, 14700000),
	(6481, 'UKLL', 'large_airport', 'Lviv International Airport', 49.8125, 23.9561, 1071, 'EU', 'UA', 'UA-46', 'Lviv', 'yes', 'UKLL', 'LWO', '', 'http://www.airport.lviv.ua/index.php?id=', 'https://en.wikipedia.org/wiki/Lviv_Inter', '??????????? ???????? "?????"', 725000, 0, 2606315),
	(6489, 'ULLI', 'large_airport', 'Pulkovo Airport', 59.80030059814453, 30.262500762939453, 78, 'EU', 'RU', 'RU-SPE', 'St. Petersburg', 'yes', 'ULLI', 'LED', '', 'http://www.pulkovoairport.ru/', 'https://en.wikipedia.org/wiki/Pulkovo_Ai', '????????? ????????, Leningrad, Shosseyna', 5398253, 0, 18140100),
	(6501, 'UMMS', 'large_airport', 'Minsk National Airport', 53.888071, 28.039964, 670, 'EU', 'BY', 'BY-MI', 'Minsk', 'yes', 'UMMS', 'MSQ', '', 'http://airport.by/en', 'https://en.wikipedia.org/wiki/Minsk_Nati', '??????????? ????????, Minsk 2 Airport', 1937597, 1, 4431500),
	(326363, 'URRP', 'large_airport', 'Platov International Airport', 47.493888, 39.924722, 213, 'EU', 'RU', 'RU-ROS', 'Rostov-on-Don', 'yes', 'URRP', 'ROV', '', '', 'https://en.wikipedia.org/wiki/Platov_Int', '????, ????????????? ???????? ??????', 1138599, 0, 3741000),
	(6519, 'URSS', 'large_airport', 'Sochi International Airport', 43.449902, 39.9566, 89, 'EU', 'RU', 'RU-KDA', 'Sochi', 'yes', 'URSS', 'AER', '', 'http://basel.aero/en/sochi/', 'https://en.wikipedia.org/wiki/Sochi_Inte', 'Adler Airport, Black Sea, ????????????? ', 401740, 0, 6999000),
	(26396, 'UUEE', 'large_airport', 'Sheremetyevo International Airport', 55.972599, 37.4146, 622, 'EU', 'RU', 'RU-MOS', 'Moscow', 'yes', 'UUEE', 'SVO', '', 'http://www.svo.aero/en/', 'https://en.wikipedia.org/wiki/Sheremetye', 'MOW, ????????????? ???????? ???????????,', 12537954, 1, 28400000),
	(26404, 'UWKD', 'large_airport', 'Kazan International Airport', 55.606201171875, 49.278701782227, 411, 'EU', 'RU', 'RU-TA', 'Kazan', 'yes', 'UWKD', 'KZN', '', 'http://www.kazan.aero/en/', 'https://en.wikipedia.org/wiki/Kazan_Inte', '', 1273745, 0, 4018000),
	(339001, 'UWSG', 'large_airport', 'Gagarin International Airport', 51.712778, 46.171111, 103, 'EU', 'RU', 'RU-SAR', 'Saratov', 'yes', 'UWSG', 'GSV', '', 'http://gsv.aero/en/', 'https://en.wikipedia.org/wiki/Saratov_Ga', '', 837900, 0, NULL),
	(26411, 'UWUU', 'large_airport', 'Ufa International Airport', 54.557498931885, 55.874401092529, 449, 'EU', 'RU', 'RU-BA', 'Ufa', 'yes', 'UWUU', 'UFA', '', 'http://www.airportufa.ru/en/', 'https://en.wikipedia.org/wiki/Ufa_Intern', '????????????? ???????? ???', 1203279, 0, 4089111),
	(26412, 'UWWW', 'large_airport', 'Kurumoch International Airport', 53.504901885986, 50.16429901123, 477, 'EU', 'RU', 'RU-SAM', 'Samara', 'yes', 'UWWW', 'KUF', '', 'http://airport.samara.ru/en/', 'https://en.wikipedia.org/wiki/Kurumoch_I', '', 1164685, 0, 2500000);

-- Dumping structure for taulu demogame.encounter_location
CREATE TABLE IF NOT EXISTS `encounter_location` (
  `el_game` int(11) NOT NULL,
  `el_location` varchar(40) NOT NULL,
  `el_encounter` int(11) NOT NULL,
  `visited` int(11) DEFAULT NULL,
  KEY `el_game` (`el_game`),
  KEY `el_location` (`el_location`),
  KEY `el_encounter` (`el_encounter`),
  CONSTRAINT `encounter_location_ibfk_1` FOREIGN KEY (`el_game`) REFERENCES `game` (`id`),
  CONSTRAINT `encounter_location_ibfk_2` FOREIGN KEY (`el_location`) REFERENCES `airport` (`ident`),
  CONSTRAINT `encounter_location_ibfk_3` FOREIGN KEY (`el_encounter`) REFERENCES `random_encounters` (`re_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table demogame.encounter_location: ~0 rows (suunnilleen)

-- Dumping structure for taulu demogame.game
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(40) DEFAULT NULL,
  `money_budget` int(11) DEFAULT NULL,
  `range_budget` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `game_goal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location` (`location`),
  KEY `game_goal` (`game_goal`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`location`) REFERENCES `airport` (`ident`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`game_goal`) REFERENCES `goal` (`goal_id`),
  CONSTRAINT `game_ibfk_3` FOREIGN KEY (`game_goal`) REFERENCES `goal` (`goal_id`),
  CONSTRAINT `game_ibfk_4` FOREIGN KEY (`game_goal`) REFERENCES `goal` (`goal_id`),
  CONSTRAINT `game_ibfk_5` FOREIGN KEY (`game_goal`) REFERENCES `goal` (`goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table demogame.game: ~0 rows (suunnilleen)

-- Dumping structure for taulu demogame.goal
CREATE TABLE IF NOT EXISTS `goal` (
  `goal_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `reference` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table demogame.goal: ~2 rows (suunnilleen)
INSERT INTO `goal` (`goal_id`, `title`, `description`, `reference`) VALUES
	(1, 'Väkiluku', 'Löydä leimat suurimmista kaupungeista väkiluvun mukaan.', 'population'),
	(2, 'Matkustajamäärä', 'Löydä leimat vilkkaimmista lentokentistä matkustajamäärien mukaan.', 'passengers'),
	(3, 'Pääkaupungit', 'Kerää pääkaupungit', 'is_capital');

-- Dumping structure for taulu demogame.random_encounters
CREATE TABLE IF NOT EXISTS `random_encounters` (
  `re_id` int(11) NOT NULL AUTO_INCREMENT,
  `re_title` varchar(40) DEFAULT NULL,
  `re_description` varchar(100) DEFAULT NULL,
  `effect` varchar(40) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  PRIMARY KEY (`re_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table demogame.random_encounters: ~3 rows (suunnilleen)
INSERT INTO `random_encounters` (`re_id`, `re_title`, `re_description`, `effect`, `value`, `probability`) VALUES
	(1, 'Lentobonus', 'Saat lentobonuksen! +500 range', 'range_budget', 500, 12),
	(2, 'Lento peruttu', 'Lento on peruttu. Joudut nukkumaan yön hotellissa! -150 €', 'money_budget', -150, 12),
	(3, 'Passi hukassa', 'Joudut tilaamaan uuden passin! -200 €', 'money_budget', -200, 3),
	(4, 'Lääkärikäynti', 'Nilkka nyrjähtää. Käyt lääkärissä. -100 €', 'money_budget', -100, 3);

-- Dumping structure for taulu demogame.visited_city
CREATE TABLE IF NOT EXISTS `visited_city` (
  `id_game` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `stamp_achieved` int(11) DEFAULT NULL,
  KEY `id_game` (`id_game`),
  KEY `location` (`location`),
  CONSTRAINT `visited_city_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `game` (`id`),
  CONSTRAINT `visited_city_ibfk_2` FOREIGN KEY (`location`) REFERENCES `airport` (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table demogame.visited_city: ~0 rows (suunnilleen)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
