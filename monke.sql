-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2025, 18:25:24
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `monke`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `yor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `form`
--

INSERT INTO `form` (`id`, `name`, `surname`, `mail`, `yor`) VALUES
(19, 'enver', 'bağcı', 'ebagci@gmail.com', 'oğlum gözlerimi yaşarttın. ellerine sağlık!'),
(20, 'serhat burak', 'özbakır', 'szbakir@gmail.com', 'ben yaptım diye demiyorum harika oldu!'),
(21, 'Koç ', 'Kebap', 'kockebap@gmail.com', 'Bu site 1,5 kuşbaşı hak etti!'),
(22, 'Monke', 'Tur', 'turakos@gmail.com', 'Uaaa Uaaaa!'),
(23, 'Ali', 'Rosegül', 'tarsusia@gmail.com', 'Tarsus,Tarsus,Tarsus,Tarsus...'),
(24, 'serhat burak', 'özbakır', 'szbakir@gmail.com', '1212312\r\n213146'),
(25, 'serhat burak', 'özbakır', 'ebagci@gmail.com', 'çok iyi'),
(26, 'enver', 'bağcı', 'tarsusia@gmail.com', 'çok iyi\r\n'),
(27, 'serhat burak', 'bağcı', 'tarsusia@gmail.com', 'çok iyi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `i̇letisim`
--

CREATE TABLE `i̇letisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `i̇letisim`
--

INSERT INTO `i̇letisim` (`id`, `ad`, `soyad`, `email`, `aciklama`) VALUES
(1, 'Ali', 'Ak', 'aliak@gmail.com', 'deneme amaçlıdır.'),
(2, 'serhat', 'burak', 'sbozba@gmail.com', '2. yorum like');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `form`
--
ALTER TABLE `form`
  ADD UNIQUE KEY `id` (`id`);

--
-- Tablo için indeksler `i̇letisim`
--
ALTER TABLE `i̇letisim`
  ADD UNIQUE KEY `id` (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `i̇letisim`
--
ALTER TABLE `i̇letisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
