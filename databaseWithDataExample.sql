-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2016 at 02:31 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suratmasuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `tterima` date NOT NULL,
  `tsurat` date NOT NULL,
  `klt` int(11) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL,
  `perkara` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `no`, `tterima`, `tsurat`, `klt`, `dari`, `kepada`, `perkara`, `time`) VALUES
(1, 1, '2016-01-04', '2016-01-04', 224, 'Planetarium Melaka Sdn Bhd ', '', 'Isu Kebocoran Pada Bumbung Dome Melaka Planetarium Adventure Science Centre ', 0),
(2, 2, '2016-01-04', '2016-01-04', 224, 'Anson LED Engineering ', '', 'Sales Quatation ', 0),
(3, 3, '2016-01-04', '2015-12-31', 224, 'Bahagian Khidmat Pengurusan ', '', 'Makluman Pangaktifan Bilik Gerakan Operasi Pemantauan Banjir Jabatan Pengairan Dan Saliran Malaysia Bagi Menghadapi Musim Tengkujuh 2015 ? 2016', 0),
(4, 4, '2016-01-04', '2015-12-31', 224, 'Timbalan Setiausaha Kerajaan (Pengurusan) ', '', 'Ceramah Agama Mingguan Dan Ceramah Perdana Anjuran Kerajaan Negeri Melaka Dan Jabatan Agama Islam Melaka Jaim  Bagi Bulan Januari 2016 M /1437 H', 0),
(5, 5, '2016-01-04', '2016-01-04', 224, 'Kiwitech Sdn Bhd ', '', 'Baucer Bayaran ', 0),
(6, 6, '2016-01-04', '2015-10-01', 224, 'Digistar Rauland MSC Sdn. Bhd', '', 'Baucer Bayaran ', 0),
(7, 7, '2016-01-04', '2015-08-01', 224, 'Digistar Rauland MSC Sdn. Bhd', '', 'Baucer Bayaran ', 0),
(8, 8, '2016-01-04', '2015-12-21', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Permohonan Pengambilan Tanah Di Atas Lot 78, 79 Dan Lot 80 (tanah Kerajaan) Bandar Pulau Sebang Seksyen Ii Seluas 1605 M.P Dan Lot 2881 Mukim Pulau Sebang Seluas 3150 M.P Daerah Alor Gajah. Melaka Untuk Tujuan Kemudahan Awam', 0),
(9, 9, '2016-01-04', '2016-01-04', 224, 'Pentadbiran, JKMM', '', 'Hebahan Borang Penyertaan Majlis Tilawah Al-Quran Peringkat Saringan Parlimen Negeri Melaka Tahun 1437h/2016m & Borang Penyertaan Majlis Menghafaz Al-Quran Peringkat Saringan Negeri Melaka Tahun 1437h/2016/M.', 0),
(10, 10, '2016-01-04', '2016-12-30', 224, 'Pengurusan sumber manusia, JKMM', '', 'Pembertahuan Pertukaran Pembantu Tadbir )perkeranian/operasi) N17 (kontrak) Di Pentadbiran Setiausaha Kerajaan Negeri Melaka', 0),
(11, 11, '2016-01-04', '2015-12-31', 224, 'pentadbiran, JKMM', '', 'Ceramah Agama Mingguan Dan Ceramah Perdana Anjuran Kerajaan Negeri Melaka Dan Jabatan Agama Islam Melaka Jaim  Bagi Bulan Januari 2016 M /1437 H', 0),
(12, 12, '2016-01-04', '2015-12-23', 224, 'Thomas Ong Leong & Associates', '', 'A Ground Floor Of Four Storey Shop Offiice Described As Lot No. 177 (Lot Asal:159-G) Bearing Postal Addres Of Parcel No. 96 ,ground Floor Block H, Jalan Pulau Melaka 8, Pulau Melaka, 75000 Melaka Meansuring Approximately 1300 Square Feet And Held Under Ma', 0),
(13, 13, '2016-01-04', '2015-12-28', 224, 'Universiti Sains Islam Malaysia', '', 'Permohonan Penempatan Latihan Industri', 0),
(14, 14, '2016-01-04', '2015-12-31', 224, 'Pentadbiran, JKMM', '', 'Jemputan Majlis Penyampaian Amanat Tahun Baru Oleh Yab Ketua Menteri Melaka', 0),
(15, 15, '2016-01-04', '2016-01-04', 224, 'Majlis Perbandaran Hang Tuah Jaya', '', 'Taklimat Ringkas Pertandingan Kurangkan Karbon 2016 Majlis Perbandaran Hang Tuah Jaya', 0),
(16, 16, '2016-01-04', '2015-12-31', 224, 'Inovasi, JKMM', '', 'Audit Dalaman Ekosistem Konduksif Sektor Awam (EKSA) Jabatan Ketua Menteri Melaka Bil. 3/2015', 0),
(17, 17, '2016-01-04', '2015-12-30', 224, 'Pejabat Ketua Menteri Melaka', '', 'Pementasan Konsert ?MUSIC Of The Night National Symphony Ochestra?', 0),
(18, 18, '2016-01-04', '2015-12-30', 224, 'Pentadbiran, JKMM', '', 'Jemputan Majlis Penyampaian Amanat Tahun Baru Oleh Yab Ketua Menteri Melaka', 0),
(19, 19, '2016-01-04', '2016-01-04', 224, 'Bahagian Komunikasi Koprat', '', 'Pencapaian Piagam Pelanggan Bagi Bulan November Dan Disember 2015', 0),
(20, 20, '2016-01-04', '2016-01-04', 224, 'Lorans A/L Mariyadas (rayuan)', '', 'Rayuan Pembayaran Semula Tunggakan Sewa Premis Lams Tech Auto Dan Kurang Sewa Kedai', 0),
(21, 21, '2016-01-04', '2015-12-31', 224, 'Pentadbiran, JKMM', '', 'Jemputan Majlis Penyampaian Amanat Tahun Baru Oleh Yab Ketua Menteri Melaka', 0),
(22, 22, '2016-01-05', '2015-12-31', 224, 'TZ Security Services Sdn. Bhd.', '', 'Invoice No. Mlk 02/12/2015 Pembayaran Perkhidmatan Kawalan Keselamatan Tanpa Senjata Api Di Pangsapuri Pulau Melaka, Daerah Melaka Tengah Bagi Bulan Disember 2015', 0),
(23, 23, '2016-01-05', '2015-12-31', 224, 'TZ Security Services Sdn. Bhd.', '', 'Invoice No. Mlk 05/12/2015 Pembayaran Perkhidmatan Kawalan Keselamatan Tanpa Senjata Api Di Bangunan Hotel Permaisuri, Stadium Hang Jebat Melaka Bagi Bulan Disember 2015', 0),
(24, 24, '2016-01-05', '2015-12-31', 224, 'TZ Security Services Sdn. Bhd.', '', 'Invoice No. Mlk 08/12/2015 Pembayaran Perkhidmatan Kawalan Keselamatan Tanpa Senjata Api Di Restoran Melayu, Kampung Morten Kb Viii, Melaka Bagi Bulan Disember 2015', 0),
(25, 25, '2016-01-05', '2015-12-31', 224, 'TZ Security Services Sdn. Bhd.', '', 'Invoice No. Mlk 07/12/2015 Pembayaran Perkhidmatan Kawalan Perkhidmatan Keselamatan Tanpa Senjata Api Di Bangunan Rumah, Kedai Pulau Melaka Tengah, Melaka Bagi Bulan Disember 2015', 0),
(26, 26, '2016-01-05', '2015-12-01', 224, 'Toshiba Tec Malaysia Sdn. Bhd.', '', 'Invoice No Gs1512003565', 0),
(27, 27, '2016-01-05', '2015-12-15', 224, 'Toshiba Tec Malaysia Sdn. Bhd.', '', 'Invoice No Gs1512003566', 0),
(28, 28, '2016-01-05', '2016-01-04', 224, 'Putra Hospital Sdn Bhd.', '', 'Bantuan Kewangan Kepada Putra Specialist Hospital (Batu Pahat)', 0),
(29, 29, '2016-01-05', '2015-12-28', 224, 'Klinik Famili', '', 'Kenaikan Harga Konsultansi', 0),
(30, 30, '2016-01-05', '2016-01-04', 224, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Invoice No. Iv-03464', 0),
(31, 31, '2016-01-05', '2015-12-31', 224, 'Jabatan Ketua Menteri Melaka', '', 'Maklumbalas Minit Mesyuarat Jawatankuasa Kira-Kira Wang Awam Negeri Melaka (PAC) Bil. 1/2015 ? Laporan Ketua Audit Negara Tahun 2012 Siri 2', 0),
(32, 32, '2016-01-05', '2015-12-31', 224, 'Jabatan Ketua Menteri Melaka', '', 'Maklumbalas Minit Mesyuarat Jawatankuasa Kira-Kira Wang Awam Negeri Melaka (PAC) Bil. 1/2015 ? Laporan Ketua Audit Negara Tahun 2012 Siri 1', 0),
(33, 33, '2016-01-05', '2015-12-28', 224, 'Zakat Melaka', '', 'Pembelian 3 Unit Bangunan Kedai/ Pejabat Milik Perbadanan Ketua Menteri Melaka, Di Atas Pt 118, Pt 119 Dan Pt 12, Pusat Niaga Bukit Baru, Bandar Baru Seksyen Iv, Daerah Melaka Tengah, Melaka', 0),
(34, 34, '2016-01-05', '2016-01-04', 224, 'Majlis Perbandaran Hang Tuah Jaya', '', 'Taklimat Ringkas Pertandingan Kurangkan Karbon 2016 Majlis Perbandaran Hang Tuah Jaya', 0),
(35, 35, '2016-01-05', '2016-01-05', 224, 'Unit Kerajaan Tempatan, JKMM', '', 'Mesyuarat Negeri Perumahan, Kerajaan Tempatan, Kesejahteraan Bandar Dan Alam Sekitar Bil.1/2016', 0),
(36, 36, '2016-01-05', '2016-01-05', 224, 'Juruukur  Mahadi ', '', 'Permohonan Tanah Kerajaan Di Atas Plot A Seluas 10,875 M.P, Mukim Kuala Sungei Baru, Daerah Alor Gajah, Melaka Untuk Tujuan Kitar Padu Loji Janakuasa (industri)', 0),
(37, 37, '2016-01-05', '2016-01-05', 224, 'Kumpulan melaka berhad', '', 'Memohon Laporan Kewangan Pengurusan Perbadanan Ketua Menteri (CMI)', 0),
(38, 38, '2016-01-05', '2016-01-05', 224, 'T.G. Koh & Song', '', 'Permohonan Untuk Kebenaran Pindahmilik Dan Pindahmilik Bagi Rumah Pangsa Taman Aunler, Kg. Lapan Melaka', 0),
(39, 39, '2016-01-05', '2016-01-04', 224, 'Yeoh Mazlina & Partners', '', 'Perjanjian Jual Beli Bertarikh 18/6/2014', 0),
(40, 40, '2016-01-05', '2016-01-05', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mesyuarat Pelepasan Tanah Di Lot 58, Kawasan Bandar Xxvl, Melaka Tengah, Muzium Samudera Negeri Melaka', 0),
(41, 41, '2016-01-05', '2016-01-05', 224, 'blu jay industries sdn. Bhd. ', '', 'Borang Permohonan Rumah Kediaman  / Bangunan Perniagaan / Tanah (lee Fong Kwun)', 0),
(42, 42, '2016-01-05', '2016-01-05', 224, 'LD Future Enterprise', '', 'Borang Permohonan Rumah Kediaman  / Bangunan Perniagaan / Tanah (Luqman Bin Danial)', 0),
(43, 43, '2016-01-05', '2015-12-31', 224, 'Inspim Latihan', '', 'Seminar Strategi Lautan Biru Kebangsaan (NBOS) : Halatuju Perancangan Dan Pelan Tindakan Perlaksanaan Nbos', 0),
(44, 44, '2016-01-05', '2016-01-04', 224, 'Kiwitech Sdn Bhd ', '', 'Baucer Bayaran ( Pv 2314 )  ', 0),
(45, 45, '2016-01-05', '2015-12-31', 224, 'adillah A. Nordin', '', 'Perjanjain Jual Beli Bertarikh 5/6/2015', 0),
(46, 46, '2016-01-05', '2016-01-01', 224, 'HNH Managment & Services', '', 'Dokumen-Dokumen Untuk Tujuan Tuntutan Interim No.20', 0),
(47, 47, '2016-01-05', '2016-01-01', 224, 'HNH Managment & Services', '', 'Invoice Hnhc/Cmi/Pb/Inv/012', 0),
(48, 48, '2016-01-05', '2016-12-30', 224, 'Perbadanan Melaka Holdings', '', 'Tuntutan Pembayaran Perlindungan Insurans Kebakaran Bagi Perbadanan Ketua Menteri Melaka Tahun 2015/2016 (No 00002203)', 0),
(49, 49, '2016-01-05', '2015-12-30', 224, 'Perbadanan Melaka Holdings', '', 'Tuntutan Pembayaran Perlindungan Insurans Kebakaran Dan Tanggungan Awam Bagi Perbadanan Ketua Menteri Melaka Tahun 2015/2016 (No 00001902)', 0),
(50, 50, '2016-01-05', '2015-12-30', 224, 'Perbadanan Melaka Holdings', '', 'Tuntutan Pembayaran Perlindungan Insurans Kebakaran Dan Tanggungan Awam Bagi Perbadanan Ketua Menteri Melaka Tahun 2015/2016 (No 00002513)', 0),
(51, 51, '2016-01-05', '2015-12-30', 224, 'Perbadanan Melaka Holdings', '', 'Persetujuan Pembaharuan Perlindungan Insurans Kebakaran Dan Tanggungan Awam Bagi Perbadanan Ketua Menteri Melaka Tahun 2015/2016 ( Pangsapuri Pulau Melaka ) ', 0),
(52, 52, '2016-01-05', '2015-12-31', 224, 'SUK, JKMM', '', 'Perlaksanaan Arahan Wajib Pembayaran Zakat Pendapatan Menerusi Potongan Gaji Bagi Kakitangan Kerajaan Negeri/ Persekutuan , Badan Berkanun, Pihak Berkuasa Tempatan Serta Agensi Dan Anak Syarikat Kerajaan Negeri', 0),
(53, 53, '2016-01-05', '2016-01-04', 224, 'Pentadbiran, JKMM', '', 'Hebahan Borang Penyertaan Majlis Tilawah Al-Quran Peringkat Saringan Parlimen Negeri Melaka Tahun 1437h/2016m & Borang Penyertaan Majlis Menghafaz Al-Quran Peringkat Saringan Negeri Melaka Tahun 1437h/2016/M.', 0),
(54, 54, '2016-01-05', '2016-01-05', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mesyuarat Jawatankuasa Begeri Kewangan, Tanah, Perancangan Ekonomi, Pelaburan Dan Perindustrian, Hal Ehwal Agama, Warisan, Pembangunan Belia Dan Pelancongan Bil. 1/2016', 0),
(55, 55, '2016-01-05', '2016-01-04', 224, 'Thomas Ong Leong & Associates', '', 'A Ground Floor Of Four Storey Shop Offiice Described As Lot No. 177 (Lot Asal:159-G) Bearing Postal Addres Of Parcel No. 96 ,ground Floor Block H, Jalan Pulau Melaka 8, Pulau Melaka, 75000 Melaka Meansuring Approximately 1300 Square Feet And Held Under Ma', 0),
(56, 56, '2016-01-05', '2015-12-31', 224, 'MK Nizam Rizal & Partners', '', 'Penyediaan Perjanjian Penyewaan Perbadanan Ketua Menteri Melaka ? Suite 1.21, Bangunan Inkubator K-Ekonomi, Melaka', 0),
(57, 57, '2016-01-05', '2016-01-04', 224, 'jabatan pertanian', '', 'Mesyuarat Post Exco Jk Pertanian Dan Pembangunan Usahawan Bil. 1/2016', 0),
(58, 58, '2016-01-05', '2015-12-31', 224, 'Khairil & co', '', 'Perjanjian Jualbeli ? Lot 248, Pn 4103, Kawasan Bandar Ii, Daerah Melaka Tengah, Negeri Melaka ( Tee Yan Ping )', 0),
(59, 59, '2016-01-06', '2016-01-05', 224, 'desmond ho & Associates advocates & solicitors', '', 'Dalam Mahkamah Majistret Di Melaka Guaman No. A71-281-05 Tahun 2015', 0),
(60, 60, '2016-01-06', '2015-01-06', 224, 'Juruukur  Mahadi ', '', 'Permohonan Cantuman Tanah Di Atas Lot 187-196, Lot 217-226, Lot 259-274, Lot 281-287, Lot 288-295, Lot 296-301, Lot 302-307, Lot 308-315, Lot 316-321, Lot 322-329, Lot 333-337, Lot 349-360 Dan Lot 361-366, Kawasan Bandar Xliii, Daerah Me;Aka Tengah, Melak', 0),
(61, 61, '2016-01-06', '2016-01-05', 224, 'MiTCH', '', 'Makluman Status Pembaharuan Lesen Tahunan Bagi Pembangunan Dan Pemyelenggaraan Bulanan ?asset Management System? (AMS)', 0),
(62, 62, '2016-01-06', '2016-02-01', 224, 'Mansor bin Daud', '', 'Kerja-Kerja Pembersihan Dan Pemotonan Rumput Kawasan Dataran Cmi, Mitc Ayer Keroh Melaka Bawah Seliaan Perbadanan Ketua Menteri Melaka (CMI) Invoice No : 1425', 0),
(63, 63, '2016-01-06', '2015-12-31', 224, 'Mansor bin Daud', '', 'Sebutharga Bagi Kerja-Kerja Pembersihan Dan Keindahan Pulau Upeh Di Bawah Seliaan Pegawai Perbadanan Ketua Menteri Melaka (CMI)', 0),
(64, 64, '2016-01-06', '2016-01-06', 224, 'TZ Security Services Sdn. Bhd.', '', 'Laporan Di Bangunanrumah / Kedai Pejabat Empat (4) Tingkat, Pulau Melaka (fasa I, Fasa Ii Dan Fasa Iii) Daerah Melaka Tengah, Melaka Milik Perbadanan Ketua Menteri Melaka (CMI)', 0),
(65, 65, '2016-01-06', '2016-01-12', 224, 'Puspanita', '', 'Jemputan Untuk Menyertai Seminar Literasi Hak Wanita Menurut Undang-Undang Keluarga Islam Anjuran Puspanita Cawangan Negeri Melaka Dengan Kerjasama Jabatan Bantuan Guaman Negeri Melaka', 0),
(66, 66, '2016-01-06', '2016-01-06', 224, 'jabatan kewangan dan perbendaharaan negeri', '', 'Mesyuarat Perbincangan Berkenaan Sewaan Bangunan Pentadbiran Kolej Antarabangsa Yayasan Melaka', 0),
(67, 67, '2016-01-06', '2016-01-05', 224, 'MK Nizam Rizal & Partners', '', 'Persetujuan Pembelian Unit B-3-04, Pangsapuri Padang Jambu, Bukit Baru', 0),
(68, 68, '2016-01-06', '2016-01-05', 224, 'SUK, JKMM', '', 'Menjalankan Tugas-Tugas Setiausaha Kerajaan Negeri Melaka', 0),
(69, 69, '2016-01-06', '2016-01-04', 224, 'yong chen lim & saridah', '', 'Perjanjian Jual Beli (?SPA?) = Pm 301- Pm 305. Lot No 5446- Lot No. 5450 All The Mukim Of Paya Rumput, District Of Melaka Tengah, State Of Melaka', 0),
(70, 70, '2016-01-06', '2016-01-04', 224, 'yong chen lim & saridah', '', 'Perjanjian Jual Beli (?SPA?) = Pm 301- Pm 306 , Lot No 5451- Lot No 5455, All In The Mukim Of Paya Rumput, District Of Melaka Tengah, State Of Melaka', 0),
(71, 71, '2016-01-06', '2016-01-06', 224, 'MiTCH', '', 'Makluman Kemasukkan Insentif Tahunan 2015 Kepada Lembaga Pengarah Mitch', 0),
(72, 72, '2016-01-06', '2015-12-29', 224, 'MK Nizam Rizal & Partners', '', 'Menandatangani Perjanjian Jual Beli Dan Ikatan Waad-Waad Bersaling Bagi Pangsa Puri Padang Jambu. Unit No : A-3-06, Pangsapuri Padang Jambu Melaka. Pembeli : Zaliha Binti Mohd Sani', 0),
(73, 73, '2016-01-06', '2016-01-05', 224, 'Jabatan Pengangkutan Jalan (JPJ)', '', 'Mesyuarat Post Exco Jawatankuasa Pengangkutan, Pemulihan Projek Dan Perdagangan Antarabangsa Bil.01/2016', 0),
(74, 74, '2016-01-07', '2016-01-07', 224, 'Bahagian Aset, JKMM', '', 'Minit Mesyuarat Pengumpulan Dan Pengemaskinian Maklumat Aset Tanah Dan Bangunan Kerajaan Negeri Bil1/2015', 0),
(75, 75, '2016-01-07', '2016-01-07', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Minit Mesyuarat Jawatankuasa Penswastaan Negeri Bil. 9/2015', 0),
(76, 76, '2016-01-07', '2015-12-30', 224, 'Pertronas Dagangan Berhad', '', 'Surat Tawaran Penambahan Had Kredit Limit Bagi Akaun Petronas Smartpay Fleetcard ? 54163889', 0),
(77, 77, '2016-01-07', '2016-01-07', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Lawatan Kerja Ke Tapak Kekal Pavilion Negeri Melaka Sempena Persiapan Pameran Malaysia Agriculture Horiculture And Agrotourism International Show (MAHA) 2016', 0),
(78, 78, '2016-01-07', '2016-01-05', 224, 'pejabat daerah dan tanah galian (PDTG)', '', 'Mesyuarat Penyelarasan Kelulusan Permit Pengeluaran Pasir Di Atas Rizab Sungai Nyalas, Mukim Nyalas, Daerah Jasin, Melaka', 0),
(79, 79, '2016-01-07', '2016-01-04', 224, 'pejabat tanah dan galian ( PTG )', '', 'Permohonan Untuk Mendapatkan Pertimbangan Dan Kelulusan Menjalankan Aktiviti Perlombongan Pasir Di Sebahagian Kompartment 14d, 15, 17c Dan 17d, Seluas 40 Hektar, Hutan Simpan Bukit Sedanan, Mukim Selandar, Daerah Jasin, Melaka.', 0),
(80, 80, '2016-01-07', '2016-01-07', 224, 'Unit Kerajaan Tempatan, JKMM', '', 'Jemputan Majlis Angkat Sumpah Terima Perlantikan Datuk Bandar, Yang Dipertua Dan Ahli Majlis Pihak Berkuasa Tempatan (pbt) Negeri Melaka Bagi Tahun 2016', 0),
(81, 81, '2016-01-07', '2016-01-07', 224, 'Panorama Melaka Sdn. Bhd.', '', 'Jemputan Ke Mesyuarat Bersama Amdac (M) Sdn. Bhd. Untuk Membincangkan Mengenai Permohonan Kelulusan Permit Import Bagi Kemasukkan 8 Unit Cbu (Complete Built Up) Bas Elektrik Daripada China', 0),
(82, 82, '2016-01-07', '2016-01-07', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Minit Mesyuarat Jawatankuasa Penswastaan Negeri Bil. 9/2015', 0),
(83, 83, '2016-01-07', '2016-01-04', 224, 'poliklinik wahidah', '', 'Bil Rawatan Perubatan', 0),
(84, 84, '2016-01-07', '2016-01-06', 224, 'adillah A. Nordin', '', 'Perjanjian Jual Berli Bertarikh 15/10/2015 Harta : H. S. (D) 71151 Pt 121 Bandar Bukit Baru Seksyen Iv, Melaka. Pembeli Majlis Agam Islam Melaka', 0),
(85, 85, '2016-01-07', '2016-01-05', 224, 'Inovasi, JKMM', '', 'Perlawaan Menyertai Anugerah /  Pertandingan Inovasi Peringkat Negeri Melaka Bagi Tahun 2016', 0),
(86, 86, '2016-01-08', '2016-01-07', 224, 'ADUN, Dun Asahan Melaka', '', 'Permohonan Sumbangan Bagi Pogram Basikal Ria Anjuran Japerun Dun Asahan 2016', 0),
(87, 87, '2016-01-08', '2016-01-06', 224, 'JH Land (Autocity) Sdn. Bhd. ', '', 'Cadangan Pembangunan Pusat Bersepadu Automotif Melaka Autocity Ayer Keroh, Melaka Di Atas Hak Milik Hsd 20202 Pt 7661, Mukim Durian Tunggal, Alor Gajah, Hang Tuah Jaya, Melaka. Sebagai Pusat Penjualan Kereta Terpakai Untuk Negeri Melaka', 0),
(88, 88, '2016-01-08', '2016-01-06', 224, 'Pejabat Daerah dan Tanah Galian Alor Gajah', '', 'Pengambilan Balik Tanah Untuk Tujuan Cadangan Pembangunan Pekan Pulau Sebang Di Atas Lot 131, Mukim Pulau Sebang,Daerah Alor Gajah, Melaka ? Puan Hajah Hazimah Binti Abdolah', 0),
(89, 89, '2016-01-08', '2016-01-06', 224, 'Wayang ? malaysiaku', '', 'Persembahan Wayang ? Malaysiaku  Di Auditorium Panggung Bangsawan', 0),
(90, 90, '2016-01-08', '2016-01-04', 224, 'Thomas Ong Leong & Associates', '', 'A Ground Floor Of Four Storey Shop Offiice Described As Lot No. 177 (Lot Asal:159-G) Bearing Postal Addres Of Parcel No. 96 ,ground Floor Block H, Jalan Pulau Melaka 8, Pulau Melaka, 75000 Melaka Meansuring Approximately 1300 Square Feet And Held Under Ma', 0),
(91, 91, '2016-01-08', '2016-01-07', 224, 'Panorama Melaka Sdn. Bhd.', '', 'Notis Mesyuarat Lembaga Pengarah Panorama Melaka Sdn. Bhd. Bil 1/2016', 0),
(92, 92, '2016-01-08', '2016-01-08', 224, 'Tan Hui wah & Tan Hui Ling', '', 'Permohonan Surat Akujanji ( Letter Of Undertaking)', 0),
(93, 93, '2016-01-08', '2016-01-05', 224, 'klinik famili', '', 'Payment Clain For The Month Of December 2015 ? Cmi', 0),
(94, 94, '2016-01-08', '2016-01-05', 224, 'klinik famili', '', 'Payment Clain For The Month Of December 2015 ? Restoran Melayu Melaka', 0),
(95, 95, '2016-01-08', '2016-01-08', 224, 'syairazi b zakaria', '', 'Borang Permohonan Rumah Kediaman  / Bangunan Perniagaan / Tanah ( Syairazi Bin Zakaria )', 0),
(96, 96, '2016-01-11', '2016-01-11', 224, 'Bahagian Komunikasi Koprat, JKMM', '', 'Bengkel Kajian Semula Piagam Pelanggan Jabatan Ketua Menteri Melaka', 0),
(97, 97, '2016-01-11', '2016-01-11', 224, 'Premier Water Services', '', 'Mesyuarat Bagi Membincangkan Cadangan Melaksanakan Kerja ''advance Pressure Management And Control (APMC)'' Fasa Ke-2 Di Seluruh Negeri Melaka', 0),
(98, 98, '2016-01-11', '2016-01-11', 224, 'Premier Water Services', '', 'Cadangan Melaksanakan Kerja ''advance Pressure Management And Control (APMC)'' Fasa Ke-2 Di Seluruh Negeri Melaka Bagi Tempoh Tiga (3) Tahun', 0),
(99, 99, '2016-01-11', '2016-01-11', 224, 'Jabatan Penilaian Dan Perkhidmatan Harta Negeri Melaka', '', 'Penilaian Harga Jualan Dan Sewaan Hartanah :Lot 1986, Mukim Tangga Batu, Daerha Meaak Tengah, Melaka Keluasan : 15,180.00 M.P', 0),
(100, 100, '2016-01-11', '2016-01-11', 224, 'Jabatan Penilaian Dan Perkhidmatan Harta Negeri Melaka', '', 'Penilaian Harga Jualan Dan Sewaan Hartanah : Plot A (Lot 262) Kawasan Bandar Ii, Daerah Melaka Tengah, Melaka Keluasan : 193.00 M.P', 0),
(101, 101, '2016-01-11', '2016-01-11', 224, 'Jabatan Penilaian Dan Perkhidmatan Harta Negeri Melaka', '', 'Penilaian Harga Jualan Dan Sewa Hartanah Lot 99, Kawasan Bandar Ii, Daerah Melaka Tengah, Melaka. Keluasan : 226.264 M.P', 0),
(102, 102, '2016-01-11', '2016-01-11', 224, 'Perbadanan Kemajuan Negeri Melaka PKNM', '', 'Cadangan Kerja-Kerja Baik Pulih Pembangunan Di Pulau Melaka Meliputi Bangunan Dan Kerja-Kerja Infrastruktur Serta Lain Lain Kerja Yang Berkaitan Secara Reka Dan Bina (design & Build) Di Pulau Melaka, Daerah Melaka Tengah, Melaka.', 0),
(103, 103, '2016-01-11', '2016-01-11', 224, 'Perbadanan teknologi hijau', '', 'Jemputan Menyertai Bengkel Peningkatan Kemahiran Kakitangan Kumpulan Sokongan 2: Perlaksanaan Ict Hijau Didalam Sektor Perkhidmatan Awan', 0),
(104, 104, '2016-01-11', '2016-01-11', 224, 'bahagian aset JKMM', '', 'Mesyuarat Jawatankuasa Pengurusan Aset Alih Kerajaan (JKPAK) Bilangan 4 Tahun 2015', 0),
(105, 105, '2016-01-11', '2016-01-11', 224, 'Pertubuhan kebajikan ibu tunggal islam malaysia', '', 'Memohon Tabung Tajaan Pendidikan Anak Ibu Tunggal Islam Malaysia', 0),
(106, 106, '2016-01-11', '2015-12-07', 224, 'Inovasi, JKMM', '', 'Penundaan Tarikh Audit Pensijilan Ekosistem Kondusif Sektor Awa (EKSA) Jabatan Ketua Menteri Melaka', 0),
(107, 107, '2016-01-11', '2016-01-11', 224, 'bahagian promosi pelancongan ', '', 'Mesyuarat Penyelarasan Lawatan Kerja Kerajaan Negeri Melaka Ke Melaka Cultural & Tourism Festival Sempena Pan Delta Super Racing Festival Di Zhuhai, Wilayah Guandong, China Pada 17-21 Mac 2016 (bil :2 )', 0),
(108, 108, '2016-01-11', '2016-01-08', 224, 'menara teknik', '', 'Tawaran Perlaksanaan Kerja-Kerja Perundingan Untuk Pemohonan Semula Bekalan Elektrik Di Bangunan Hotel Permaisuri Stadium Hanjebat, Krubong Melaka ? Surat Setuju Pelantikan', 0),
(109, 109, '2016-01-11', '2016-01-08', 224, 'MK Nizam Rizal & Partners', '', 'Cadangan Sebut Harga Penyediaan Dokumentasi Perjanjian Jual Beli Dan Permohonan Kebenaran Pindah Milik Bagi Hartanah Pajakan Negeri 48454, Lot 2002, Kawasan Bandar Xxxix, Daerah Melaka Tengah Negeri Melaka', 0),
(110, 110, '2016-01-11', '2016-01-11', 224, 'MK Nizam Rizal & Partners', '', 'Penyediaan Perjanjian Penyewaan Perbadanan Ketua Menteri Melaka Penyewa : Knm Process Systems Sdn. Bhd.. Premis : Lot 4041 Pekan Klebang Iii, Mukim Tanjung Kling, Daerah Melaka Tengah, Melaka', 0),
(111, 111, '2016-01-11', '2016-01-11', 224, 'adnan rashid & co', '', 'Perjanjian Jual Beli (PJB) Penjual : Perbadanan Ketua Menteri Melaka, Pembeli Kasthuri A/P Nagaratnam A/L Amaranathan A/P Pathmanathan. Hartanah H.S 80682, Pt 566, Pekan Klebang Seksyen Ii, Daerah Melaka Tengah, Melaka. Harga Jual Beli : Rm 600 000', 0),
(112, 112, '2016-01-11', '2016-01-07', 224, 'Jabatan Ketua Menteri Melaka', '', 'Lawatan Kerja Ke Tapak Kekal Pavilion Negeri Melaka Sempena Persiapan Pameran Malaysia Agriculture Horiculture And Agrotourism International Show (MAHA) 2016', 0),
(113, 113, '2016-01-11', '2016-01-07', 224, 'Panorama Melaka Sdn. Bhd.', '', 'Notis Mesyuarat Lembaga Pengarah Panorama Melaka Sdn. Bhd. Bil 1/2016', 0),
(114, 114, '2016-01-11', '2016-01-07', 224, 'Planetarium Melaka Sdn Bhd ', '', 'Maklumbalas Minit Mesyuarat Jawatankuasa Kira-Kira Wang Awam Negeri Melaka (PAC) Bil. 1/2015 ? Laporan Ketua Audit Negara Tahun 2012 Siri 2', 0),
(115, 115, '2016-01-11', '2016-01-11', 224, 'Dunia Melayu Dunia Islam (DMDI)', '', 'Notis Mesyuarat Lembaga Pengarah Khas Dmdi Finance House Bil 1/2016', 0),
(116, 116, '2016-01-11', '2016-01-11', 224, 'PUSPANITA', '', 'Jemputan Liputan Media Untuk Seminar Literasi Hak Wanita Menurut Undang-Undang Keluarga Islam Anjuran Pispanita Cawangan Negeri Melaka Dengan Kerjasama Jabatan Ketua Menteri Melaka', 0),
(117, 117, '2016-01-12', '2016-01-12', 224, 'adillah A. Nordin', '', 'Cadangan Kerja-Kerja Baikpulih Pembangunan Di Pulau Melaka Meliputi Bangunan Dan Kerja-Kerja Infrastruktur Serta Lain-Lain Kerja Yang Berkaitan Secara Reka Dan Bina (design & Build) Di Pulau Melaka, Daerah Melaka Tengah, Melaka', 0),
(118, 118, '2016-01-12', '2016-01-11', 224, 'bahagian promosi pelancongan ', '', 'Jemputan Menghadiri Perasmian Pejabat Bahagian Promosi Pelancongan, Jabatan Ketua Menteri Melaka', 0),
(119, 119, '2016-01-12', '2015-12-29', 224, 'suruhanjaya tenaga', '', 'Peringatan Perakuan Pendaftaran Semula Pemasangan No Pendaftaran : St(Mlk)An00223/Mlka/0001-P', 0),
(120, 120, '2016-01-12', '2015-11-01', 224, 'Pejabat daerah dan tanah melaka tengah', '', 'Ulasan Teknikal Bagi Permohonan Tanah Kerajaan Di Atas Plot A (berhampiran Lot 1691) Mukim Bukit Katil, Daerah Melaka Tengah, Melaka Bagi Tujuan Pertanian', 0),
(121, 121, '2016-01-12', '2016-01-07', 224, 'Pejabat daerah dan tanah melaka tengah', '', 'Semakan Tunggakan Cukai Tanah Bagi Agensi Kerajaan Negeri Dan Badan Berkanun Negeri Melaka', 0),
(122, 122, '2016-01-12', '2016-01-12', 224, 'persatuan permotoran intergrasi 1 malaysia', '', 'Permohonan Kebenaran Dan Sokongan Menjayakan Program Permotoran Pada Setiap Hujung Minggu Bermula Tahun 2016 Di Pulau Melaka', 0),
(123, 123, '2016-01-12', '2016-01-06', 224, 'Salina Taib & Co', '', 'Perjanjian Jualbeli Bertarikh 4 September 2015 Harta : H.S (D) 67867 Pt 70, Kawasan Bandar Ii, Daerah Melaka Tengah, Melaka ( Juta Meranti )', 0),
(124, 124, '2016-01-12', '2016-01-12', 224, 'Pejabat Ketua Menteri Melaka', '', 'Rayuan Pembelian Tapak Restoran Seafarer Di Atas Tanah Pt185, Seluas 5130 Mp, Pekan Klebang Besar, Daerah Melaka Tengah, Melaka', 0),
(125, 125, '2016-01-12', '2016-01-12', 224, 'Pemasaran Melaka Sdn. Bhd.', '', 'Aduan Kerosakan Di Bangunan Kota Fesyen 1', 0),
(126, 126, '2016-01-12', '2016-01-12', 224, 'Unit Kerajaan Tempatan, JKMM', '', 'Mesyuarat Negeri Perumahan, Kerajaan Tempatan, Kesejahteraan Bandar Dan Alam Sekitar Bil.2/2016', 0),
(127, 127, '2016-01-12', '2016-01-12', 224, 'Planetarium Melaka Sdn Bhd ', '', 'Laporan Pihak Jabatan Kerja Raya (JKR) Melaka Berhubung Isu Kebocoran Bumbung Dome Dan Keluar Planetarium', 0),
(128, 128, '2016-01-12', '2015-12-31', 224, 'Majlis Bandaraya Melaka Bersejarah', '', 'Cadangan Menaiktaraf Jalan Melaka Raya 5 Bagi Projek Pembangunan Di Pulau Melaka Secara Reka Dan Bina (design & Build) Serta Kerja-Kerja Yang Berkaitan Dengan Pembinaan Jalan Masuk Di Pulau Melaka, Daerah Melaka Tengah, Melaka Untuk Perbadanan Ketua Mente', 0),
(129, 129, '2016-01-12', '2016-01-12', 224, 'Rumah Media Melaka', '', 'Aduan Kerosakan ? A-Con 2.5 Hp Jenis Syiling Didapati Tidak Sejuk Di Ruang Pejabat ? 2 Unit', 0),
(130, 130, '2016-01-12', '2016-01-12', 224, 'Rumah Media Melaka', '', 'Aduan Kerosakan ? 1. Didapati 3 Unit Sistem Penghawa Dingin Di Dewan Pameran Tidak Sejuk  2. 2unit Ahu Dan Penghawa Dingin Di Auditorum Di Dapati Tidak Sejuk', 0),
(131, 131, '2016-01-12', '2016-01-12', 224, 'Salina Taib & Co', '', 'Perjanjian Jual Beli Bertarikh 16/1/2015 Pembeli : Johnny Chee  Harta : Pn 54285 Lot 11013, Kawasan Bandar 1, Daerah Melaka Tengah, Melaka', 0),
(132, 132, '2016-01-12', '2016-01-11', 224, 'Pentadbiran, JKMM', '', 'Agihan Buku Harian Rasmi Kerajaan Negeri Melaka Bagi Tahun 2016', 0),
(133, 133, '2016-01-12', '2016-06-16', 224, 'Dover Elevators', '', 'Traction Elevator Maintenance Repot', 0),
(134, 134, '2016-01-12', '2016-01-12', 224, 'Majlis Perbandaran Hang Tuah Jaya', '', 'Pindaan Tarikh Taklimat Ringkasan Pertandingan Kurangkan Karbon 2016 Majlis Perbandaran Hang Tuah Jaya', 0),
(135, 135, '2016-01-12', '2016-01-12', 224, 'jabatan pertanian', '', 'Mesyuarat Post Exco Jk Pertanian Dan Pembangunan Usahawan Bil. 2/2016', 0),
(136, 136, '2016-01-12', '2016-01-11', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Perbincangan Bagi Bengkel Memuktamadkan Risalat Majlis Mesyuarat Kerajaan Negeri (MMKN)  : Cadangan Penambahbaikan Dasar Berkaitan Kelulusan Projek Penambakan Laut Negeri Melaka Bagi Daerah Melaka Tengah, Melaka', 0),
(137, 137, '2016-01-12', '2016-01-06', 224, 'Kelab Kebajikan Dan Sukan Sumber Air Melaka', '', 'Memohon Sumbangan Kewangan Bagi Dana Kelab', 0),
(138, 138, '2016-01-12', '2015-12-04', 224, 'R.J. Esa & Co', '', 'Perjanjian Jual Beli Bertarikh 29/8/1994  Harta : Pn. No. 4084, Lot No. 824, Bandar Kawasan Bandar, Daerah Melaka Tengah, Negeri Melaka', 0),
(139, 139, '2016-01-12', '2016-01-06', 224, 'Dover Elevators', '', 'Traction Elevator Maintenance Repot', 0),
(140, 140, '2016-01-12', '2016-01-12', 224, 'Jabatan Ketua Menteri Melaka', '', 'Mesyuarat Jawatankuasa Kira-Kira Wang Awam (PAC)negeri Bil.1/2016', 0),
(141, 141, '2016-01-12', '2016-01-12', 224, 'LVS Properties Sdn. Bhd.', '', 'Cadangan Untuk Memindahkan Kuota Bumiputra Dan Penyediaan Rumah Kos Rendah Di Atas Tanah Kerajaan Seluas 16.852 Ekar, Kawasan Bandar Vi Ke Lot 152 Dan Lot 2429, Kawasan Bandar V, Daerah Melaka Tengah Oleh Tetuan Lvs Properties Sdn. Bhd.', 0),
(142, 142, '2016-01-12', '2015-12-02', 224, 'Tham Ah Ching', '', 'Bil Sewa *80340000733*', 0),
(143, 143, '2016-01-12', '2015-12-07', 224, 'Permata Mudi Enterprise ', '', 'Quotation (QUO/CMI/07122015)', 0),
(144, 144, '2016-01-12', '2016-07-12', 224, 'EP Maintenance', '', 'Quotation (QUO/CMI/1215-01)', 0),
(145, 145, '2016-01-12', '2016-01-11', 224, 'Artcon Sdn. Bhd.', '', 'Quotation (QUO/PPNM/101501)', 0),
(146, 146, '2016-01-12', '2015-12-31', 224, 'New Allwell Pest & Cleaning Sdn. Bhd.', '', 'Debtor Statement A/C No : 300r/012', 0),
(147, 147, '2016-01-12', '2016-01-12', 224, 'Bahagian Komunikasi Koprat', '', 'Borang Soal Selidik Kajian Kepuasa Bekerja Kakitangan Jkmm', 0),
(148, 148, '2016-01-13', '2016-01-12', 224, 'Go Tiong Siew & Associates', '', 'Percel No. 07, Storey No.3 Building No. Block E, Pangsapuri Pulau Melaka Held Under Master Title Pn 53934, Lot 10686 (previously Known As Hs(D) 71488, Pt 828), Kawasan Bandar Xliii, District Of Melaka Tengah, State Of Melaka', 0),
(149, 149, '2016-01-13', '2016-01-12', 224, 'Pentadbiran, JKMM', '', 'Jemputan Sesi Penerangan Perjanjian Perkongsian Trans-Pasifik (tpp) Peringkat Negeri Melaka Oleh Menteri Perdagangan Antara Bangsa Dan Industri (MITI)', 0),
(150, 150, '2016-01-13', '2016-01-12', 224, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Cadangan Merekabentuk, Membina Dan Menyiapkan Planetarium Secara ?design & Build? Di Kawasan Bulatan Mitc Ayer Keroh, Melaka.   Perkara ?kebocoran Kerja-Kerja Waterprofing External Dome.', 0),
(151, 151, '2016-01-13', '2016-01-11', 224, 'Affin Bank', '', 'Review And Renewal Of Banking Facility (IES)', 0),
(152, 152, '2016-01-13', '2016-01-06', 224, 'Salina Taib & Co', '', 'Perjanjian Jual Beli Bertarikh 4hb September 2015. Harta : H.S.(D) 67867 Pt 70, Kawasan Bandar Ii, Daerah Melaka Tengah, Melaka. Pembeli : Juta Meranti', 0),
(153, 153, '2016-01-13', '2016-01-12', 224, 'Jabatan Pengangkutan Jalan (JPJ)', '', 'Mesyuarat Post Exco Jawatankuasa Pengangkutan, Pemulihan Projek Dan Perdagangan Antarabangsa Bil.02/2016', 0),
(154, 154, '2016-01-13', '2016-01-12', 224, 'KAJ Development Sdn. Bhd.', '', 'Pelawaan Bagi Menganggotai Ahli Lembaga Pengarah Syarikat Kaj Development Sdn.Bhd.  (melaka Gateway)', 0),
(155, 155, '2016-01-13', '2016-01-12', 224, 'Jabatan Ketua Menteri Melaka', '', 'Mesyuarat Jawatankuasa Kira-Kira Wang Awam (PAC)negeri Bil.1/2016', 0),
(156, 156, '2016-01-13', '2016-01-11', 224, 'Premier Water Services', '', 'Mesyuarat Bagi Membincangkan Cadangan Melaksanakan Kerja (advance Pressure Management And Control (APMC)'' Fasa Ke-2 Di Seluruh Negeri Melaka', 0),
(157, 157, '2016-01-13', '2016-01-13', 224, 'Pengurusan sumber manusia, JKMM', '', 'Fungsi Utama Bahagian / Unit Jabatan Ketua Menteri Melaka', 0),
(158, 158, '2016-01-13', '2015-12-23', 224, 'evertech paints trading', '', 'Penyewaan Premis Perniagaan Di Taman Malim Jaya', 0),
(159, 159, '2016-01-13', '2016-01-12', 224, 'Katherine Loh, Low & Co', '', 'Request For Consent Property : A Unit Of Shop Office Known As Unit No. 108-3b, Storeyno.3 Floor (B) Of Building No G, Lot No. 171 In A Commercial Development Known As Pulau Melaka Meansuring Approximately 770 Square Feet And Bearing Postal Addres At Block', 0),
(160, 160, '2016-01-13', '2016-01-06', 224, 'PUSPANITA', '', 'Mesyuarat Penyelarasan Biro Agama Dan Kebajikan Puspanita Cawangan Negeri Melaka Bagi Tahun 2016', 0),
(161, 161, '2016-01-13', '2016-01-13', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Jemputan Ke Bengkel Memuktamadkan Risalat Majlis Mesyuarat Kerajaan Negeri (MMKN) : Cadangan Penambahbaikan Dasar Berkaitan Kelulusan Projek Penambahbaikan Dasar Berkaitan Kelulusan Projek Penambakan Laut Negeri Melaka Bagi Daerah Melaka Tengah, Melaka', 0),
(162, 162, '2016-01-13', '2016-01-13', 224, 'Thomas Ong Leong & Associates', '', 'A Ground Floor Of Four Storey Shop Offiice Described As Lot No. 177 (Lot Asal:159-G) Bearing Postal Addres Of Parcel No. 96 ,ground Floor Block H, Jalan Pulau Melaka 8, Pulau Melaka, 75000 Melaka Meansuring Approximately 1300 Square Feet And Held Under Ma', 0),
(163, 163, '2016-01-13', '2016-01-12', 224, 'Juruukur  Mahadi ', '', 'Permohonan Tanah Kerajaan Di Atas Lot 1001, Kawasan Bandar Xxvii Seluas 101m.P, Daerah Melaka Tengah, Melaka Untuk Tujuan Bangunan Perniagaan.', 0),
(164, 164, '2016-01-13', '2016-01-13', 224, 'Melaka Hari Ini', '', 'Terima Kasih (PROJEKTOR)', 0),
(165, 165, '2016-01-14', '2016-01-01', 224, 'Fuji Xerox', '', 'Invoice No 301079568', 0),
(166, 166, '2016-01-14', '2015-11-13', 224, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 11/1/2012. Harta : Unit No.21-2a, Blok F, Lot No : 159, Lot : Pulau Melaka. Pembeli : Leroy Wee Chow Min & Adelene Wee Lian Suun. Harga Jualan : Rm 66,960-00', 0),
(167, 167, '2016-01-14', '2016-01-07', 224, 'Jabatan kastam diraja malaysia', '', 'Notis Kegagalan Mengemukakan Penyata Gst-03 Di Bawah Seksyen 41 Akta Cukai Barang Dan Perkhidmatan 2014', 0),
(168, 168, '2016-01-14', '2016-01-14', 224, 'Jabatan Ketua Menteri Melaka', '', 'Resit Bayaran Sumbangan Kepada Tabung Amanah Negeri Melaka Bagi Penjualan Tanah Lot 106 & Lot 107 Seluas 6.0 Ekar Di Pulau Melaka, Daerah Melaka Tengah, Melaka', 0),
(169, 169, '2016-01-14', '2016-01-12', 224, 'Lian Bang Ventures Sdn. Bhd.', '', 'Legal Documents Projek : Dataran Pahlawan Melaka Megamall. Property Type : Commercial Retail Lot. Lot. No. E-085. Original Purchaser : Zainon Binti Ismail & Zainon Binte Abdul Majid. Second Purchaser : Yong Han Yoong & Lain Lan @ Lai Chiou Lan. New Purcha', 0),
(170, 170, '2016-01-14', '2016-01-08', 224, 'MK Nizam Rizal & Partners', '', 'Nasihat Undang-Undang Berkaitan Surat Makluman Dan Kebenaran (''letter Of Consent?) Daripada Peguamcara Bank Simpanan Nasional Bertarikh 17.11.2015', 0),
(171, 171, '2016-01-14', '2016-01-11', 224, 'MK Nizam Rizal & Partners', '', 'Perjanjian Jual Beli . Unit : B-3-11, Pangsa Puri Padang Jambu. Pembeli : Noraznam Binti Khamis', 0),
(172, 172, '2016-01-14', '2016-01-11', 224, 'MK Nizam Rizal & Partners', '', 'Perjanjian Jual Beli . Unit : B-3-13, Pangsa Puri Padang Jambu. Pembeli : Arnisarina Binti Salim', 0),
(173, 173, '2016-01-14', '2016-01-11', 224, 'MK Nizam Rizal & Partners', '', 'Permohonan Perlanjutan Masa Bagi Perjanjian Jual Beli Pembeli : Hasfizana Binti Mohamad Fadzin & Mohd Nazmi Syazwani Bin Wahiri', 0),
(174, 174, '2016-01-14', '2016-01-12', 224, 'MK Nizam Rizal & Partners', '', 'Pengesahan Deraf Perjanjian Pajakan Bagi Plot C (PT24) Seluas 0.411 Ekar, Jalan Kota Laksmana, Kawasan Bandar Xvii, Daerah Melaka Tengah, Negeri Melaka Di Antara Perbadanan Ketua Menteri Melaka Dan Casa Del Rio (M) Sdn Bhd', 0),
(175, 175, '2016-01-14', '2016-01-13', 224, 'MK Nizam Rizal & Partners', '', 'Menandatangani Perjanjian Jual Beli Dan Ikatan Waad-Waad Bersaling Bagi Pangsa Puri Padang Jambu. Unit No : B-3-03, Pangsapuri Padang Jambu Melaka. Pembeli : Muhamad Bakhtiar Bin Raihan', 0),
(176, 176, '2016-01-14', '2016-01-12', 224, 'Jabatan Ketua Menteri Melaka', '', 'Edaran Minit Mesyuarat Perbincangan Berkenaan Sewaan Bangunan Pentadbiran Kolej Antarabangsa Yayasan Melaka', 0),
(177, 177, '2016-01-14', '2016-01-12', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mesyuarat Penyelarasan Pembukaan Galeri Melaka Di Guandong,China', 0),
(178, 178, '2016-01-14', '2016-01-12', 224, 'Mahuzah Enterprise', '', 'Tuntutan Bayaran Kerja-Kerja Pemotongan Rumput Dan Pembersihan Di Hotel Permaisuri, Stadium Hang Jebat, Paya Rumput, Melaka', 0),
(179, 179, '2016-01-14', '2016-01-12', 224, 'Mahuzah Enterprise', '', 'Tuntutan Bayaran Kerja-Kerja Pemotongan Rumput Fan Pembersihan Di Rumah Kedai Tesco Cheng, Melaka', 0),
(180, 180, '2016-01-14', '2016-01-13', 224, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 21.8.2015 Harta : Pm 301-305, Lot No.5446-5450, Mukim Paya Rumput Daerah Melaka Tengah, Melaka. Pembeli : Jm Bestari Sdn. Bhd.', 0),
(181, 181, '2016-01-14', '2016-01-13', 224, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Jemputan Ke Bengkel Memuktamadkan Risalat Majlis Mesyuarat Kerajaan Negeri (MMKN) : Cadangan Penambahbaikan Dasar Berkaitan Kelulusan Projek Penambahbaikan Dasar Berkaitan Kelulusan Projek Penambakan Laut Negeri Melaka Bagi Daerah Melaka Tengah, Melaka', 0),
(182, 182, '2016-01-14', '2016-01-12', 224, 'Majlis Bandaraya Melaka Bersejarah', '', 'Tawaran Pembelian Tanah Milik Majlis Bandaraya Melaka Bersejarah Di Atas Lot 2002 (dahulunya Pt847), Pajakan Negeri 48454 Kawasan Bandar Xxxix, Daerah Melaka Tengah, Melaka', 0),
(183, 183, '2016-01-14', '2016-01-13', 224, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 21.8.2015 Harta : Pm 306-310, Lot No.5451-5455, Mukim Paya Rumput Daerah Melaka Tengah, Melaka. Pembeli : Datuk Wee Ka Keng', 0),
(184, 184, '2016-01-14', '2016-01-14', 224, 'Majlis Perbandaran Hang Tuah Jaya', '', 'Pindaan Tarikh Taklimat Ringkasan Pertandingan Kurangkan Karbon 2016 Majlis Perbandaran Hang Tuah Jaya', 0),
(185, 185, '2016-01-14', '2016-01-13', 224, 'PUSPANITA', '', 'Mesyuarat Agung Puspanita Cawangan Negeri Melaka Kali Ke-34', 0),
(186, 186, '2016-01-14', '2016-01-06', 224, 'Ibrahim Nik Junainah & Associates', '', 'Request For Letter Of Undertaking/Confirmation Manzili Housing Financing-I Of Rm 59,067.00 (inclusive Of Mrtt Of Rm 2,367.00', 0),
(187, 187, '2016-01-14', '2016-01-13', 224, 'Thomas Ong Leong & Associates', '', 'A Ground Floor Of Four Storey Shop Offiice Described As Lot No. 177 (Lot Asal:159-G) Bearing Postal Addres Of Parcel No. 96 ,ground Floor Block H, Jalan Pulau Melaka 8, Pulau Melaka, 75000 Melaka Meansuring Approximately 1300 Square Feet And Held Under Ma', 0),
(188, 188, '2016-01-14', '2016-01-14', 224, 'Rumah Media Melaka', '', 'Permohonan Cuti (amir Bin Mamat)', 0),
(189, 189, '2016-01-14', '2016-01-13', 224, 'Persatuan Bekas Anggota Kemas (PBAKM)', '', 'Memohon Menggunakan Kebenaran Ruang Legar Berbumbung Di Lokasi Jalan Kf 2 Kota Fesyen (MITC) Ayer Keroh 75450 Melaka', 0),
(190, 190, '2016-01-14', '2015-12-31', 224, 'Rakeba Security Sdn. Bhd.', '', 'Invoice No : Cmi 0551', 0),
(191, 191, '2016-01-14', '2015-12-31', 224, 'Rakeba Security Sdn. Bhd.', '', 'Invoice No : Cmi 0552', 0),
(192, 192, '2016-01-14', '2015-12-31', 224, 'Rakeba Security Sdn. Bhd.', '', 'Invoice No : Cmi 0550', 0),
(193, 1, '2016-01-14', '2016-01-14', 225, 'Jabatan Perhutanan Negeri Melaka', '', 'Kelulusan Permohonan Untuk Menjalankan Aktiviti Perlombongan Pasir Di Sebahagian Kompartmen 14d, 15, 17c Dan 17d, Hutan Simpan Bukit Sedanan ,mukim Selandar, Daerah Jasin, Melaka Seluas 40 Hektar', 0),
(194, 2, '2016-01-14', '2016-01-14', 225, 'Total Renewables Energy', '', 'Guangjong-Melaka Initiative Jasin Power Generation Project Potential Sites Inspection And Analysis Report', 0),
(195, 3, '2016-01-14', '2016-01-14', 225, 'Total Renewables Energy', '', 'Minutes Of Sites Investigation ? Melaka/Jasin Power Project', 0),
(196, 4, '2016-01-14', '2016-01-14', 225, 'Total Renewables Energy', '', 'Melaka Jasin Power Project 1320mw Coal Fired Power Plant', 0),
(197, 5, '2016-01-14', '2016-01-13', 225, 'Inovasi, JKMM', '', 'Jemputan Bengkel Inovasi Ke Arah Kecemerlangan Organisasi Untuk Pegawai Inovasi Tahun 2016', 0),
(198, 6, '2016-01-14', '2016-12-01', 225, 'Pusat Sumber JKMM', '', 'Senarai Buku Rujukan / Majalah Terkini Pusat Sumber', 0),
(199, 7, '2016-01-15', '2016-12-01', 225, 'Majlis Bandaraya Melaka Bersejarah', '', 'Tawaran Pembelian Tanah Milik Majlis Bandaraya Melaka Bersejarah Di Atas Lot 2002 (dahulunya Pt847), Pajakan Negeri 48454 Kawasan Bandar Xxxix, Daerah Melaka Tengah, Melaka (SERAHAN Tangan)', 0),
(200, 8, '2016-01-15', '2016-01-13', 225, 'Perbadanan teknologi hijau', '', 'Jemputan Ke Kursus Energy Efficency And Conservation Siri 1 Negeri Melaka', 0),
(201, 9, '2016-01-15', '2016-01-14', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Minit Mesyuarat Permohonan Pelepasantanah Di Lot 58, Kawasan Bandar Xxvi, Melaka Tengah, Muzium Samudera Negeri Melaka', 0),
(202, 10, '2016-01-15', '2016-01-14', 225, 'Hock & Associates', '', 'Sale And Purchase Of Pulau Shop Office Distinguished As Unit No. 17-2a, 2nd Floor (A), Building No. F Lot No. 161 Held Under Master Tittle Lot No.161, Pajakan Negeri No. Hak Milik 55289, Kawasan Bandar Xliii, Daerah Melaka Tengah, Melaka.  \\vendor / Assig', 0),
(203, 11, '2016-01-15', '2016-01-15', 225, 'bahagian promosi pelancongan ', '', 'Makluman Pindaan Masa Perasmian Pejabat Bahagian Promosi Pelancongan, Jabatan Ketua Menteri Melaka', 0),
(204, 12, '2016-01-15', '2016-01-14', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Minit Daripada Yab Ketua Menteri Melaka Berkenaan Cadangan Mewujudkan Galeri Melaka-Guongdong Di Guangzhou Worls Trade Centre, Guangzhou, Republik Rakyat China', 0),
(205, 13, '2016-01-15', '2015-12-28', 225, 'Koperasi Pekerja-pekerja Melayu Melaka', '', 'Tawaran Penyewaan Satu (1) Unit Bangunan Perniagaan Dua (2) Tingkat Di Lot 13118, Jalan Kf 4 Kota Fesyen Mitc Bagi Ruang Pejabat Kementerian Perdagangan Dalam Negeri, Koperasi Dan Kepenggunaan (KPDNKK) Negeri Melaka.', 0),
(206, 14, '2016-01-15', '2016-12-01', 225, 'Katherine Loh, Low & Co', '', 'Aunit Of Shop Office As Unit No. 108-3b, Storey No.3 Floor (B) Of Building No. G. Lot No.171in Comersial Development Known As Pulau Melaka Meansuring Approximately 770  Square Feet And Bearing Postal Address At Block G, No. Pintu 108-3b, Lot No.171, Jln B', 0),
(207, 15, '2016-01-15', '2016-01-15', 225, 'Bahagian Aset, JKMM', '', 'Pindaan Mesyuarat Jawatankuasa Pengurusan Aset Alih Kerajaan (JKPAK) Jabatan Ketua Menteri Melaka Bil. 4/2015', 0),
(208, 16, '2016-01-15', '2016-01-15', 225, 'Pengurusan sumber manusia, JKMM', '', 'Mesyuarat Penyelarasan Pegawai Pengesahan Latihan (PSL) Bagi Pentadbiran Kerajaan Negeri Melaka Tahun 2016', 0),
(209, 17, '2016-01-15', '2016-06-01', 225, 'MK Nizam Rizal & Partners', '', 'Persetujuan Tawaran Pembelian Unit B-4-07, Pangsapuri Padang Jambu, Bukit Baru Melaka ? Redzuan Ang Bin Abdullah', 0),
(210, 18, '2016-01-15', '2016-06-01', 225, 'MK Nizam Rizal & Partners', '', 'Persetujuan Tawaran Pembelian Unit B-3-02, Pangsapuri Padang Jambu, Bukit Baru Melaka ? Hamimie Bin Rahim', 0),
(211, 19, '2016-01-15', '2016-06-01', 225, 'MK Nizam Rizal & Partners', '', 'Menandatangani Perjanjian Jual Beli (?SPA?). Penjual : Perbadanan Ketua Menteri Melaka. Hartanah : Blok A-1-03, Pangsapuri Padang Jambu, Melaka', 0),
(212, 20, '2016-01-15', '2016-01-15', 225, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Cadangan Pembinaan Supermarket Belacan Di Atas Tanah Tambak Seluas 5 Ekar Di Pekan Kelebang, Seksyen 3, Daerah Melaka Tengah, Melaka', 0),
(213, 21, '2016-01-15', '2016-01-14', 225, 'Pentadbiran, JKMM', '', 'Mesyuarat Penyelarasan Perhimpunan Bulanan Pentadbiran Kerajaan Negeri Melaka Bil 1/2016', 0),
(214, 22, '2016-01-15', '2016-01-13', 225, '   pejabat Tanah & Galian Melaka', '', 'Permohonan Berkelompok Daripada Zety Aida Binti Zainudindan 7 Yang Lain Untuk Memiliki Tanah Kerajaan Di Atas Lot 1049 Seluas 715.79 Meter Persegi (0.177 Ekar), Lot 1050 Seluas 827.08 Meter Persegi (0.204 Ekar), Lot, Lot 1052 Seluas 819 Meter Persegi(0.20', 0),
(215, 23, '2016-01-15', '2016-01-13', 225, 'Alumni Fakulti Undang-undang UKM', '', 'Pelawaan Pembelian Meja Dan/Atau Tajaan Majlis Makan Malam Amal Fakulti Undang-Undang Ukm, 2016', 0),
(216, 24, '2016-01-15', '2016-12-01', 225, 'Pusat Sumber JKMM', '', 'Senarai Buku Rujukan / Majalah Terkini Pusat Sumber', 0),
(217, 25, '2016-01-15', '2016-12-01', 225, 'Lim Ban Lian & Lim Ban Kiong', '', 'Cukai Taksiran Harta No. A/C 2430-1000-0740 &  A/C 2430-1000-0741 &  A/C 2430-1000-0742 &  A/C 2430-1000-0744', 0),
(218, 26, '2016-01-15', '2016-01-15', 225, 'Jabatan Audit Negara', '', 'Senarai Syarikat Perbadanan Ketua Menteri Yang Di Anggotai Oleh Ketua Menteri ', 0),
(219, 27, '2016-01-15', '2016-01-13', 225, 'MFZ Umbai Enterprise', '', 'Qoutation (13/1/2016)', 0),
(220, 28, '2016-01-15', '2016-12-01', 225, 'Melaka Hari Ini', '', 'Tuntutan Pembayaran Jualan Iklan Di Melaka Hari Ini Sdn. Bhd.', 0),
(221, 29, '2016-01-18', '2016-01-15', 225, 'Maj;is Perbandaran Jasin', '', 'Perbincangan Isu Tanah Taman Ekstrem Tasik Chinchin Bersama Perbadan Ketua Menteri (CMI) Dan Majlis Perbandaran Jasin', 0),
(222, 30, '2016-01-18', '2016-01-14', 225, 'Gan & Zul', '', 'Property : Parcel No.8-3a, Floor (A) Building No. O Lot 271, Pulau Melaka. Purchaser : Goh Siew Lang', 0),
(223, 31, '2016-01-18', '2016-01-18', 225, 'Dunia Melayu Dunia Islam (DMDI)', '', 'Notis Mesyuarat Lembaga Pengarah Khas Dmdi Finance House Bil 2/2016', 0),
(224, 32, '2016-01-18', '2015-09-11', 225, 'Anuar Bin Mohamad @ Mohamad Salleh', '', 'Keraguan Tentang Taksiran Harta Di Pulau Melaka. Harta  No Unit 26-3a  Lot : 262  Blok : N', 0),
(225, 33, '2016-01-18', '2016-01-15', 225, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Kerja Kerja Membaiki Kerosakan Sebuah Restoran Melayu Melaka Dan Kerja-Kerja Berkaitan Di Kampung Morten Melaka.  Perkara :  ?panggilan Mesyuarat Khas Pelarasan Dokumentasi & Serahan Projek?', 0),
(226, 34, '2016-01-18', '2016-01-15', 225, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Cadangan Kerja-Kerja Pengubahsuaian Sebuah Restoran Melayu Melaka Dan Kerja-Kerja Berkaitan Secara Design & Build Di Kampung Morten Kb Viii. Melaka Untuk Perbadanan Ketua Menteri Melaka (CMI)  Perkara :  ?panggilan Mesyuarat Khas Pelarasan Dokumentasi & S', 0),
(227, 35, '2016-01-18', '2016-11-01', 225, 'pejabat tanah dan galian ( PTG )', '', 'Permohonan Bagi Meminda Pelan Pa(B) Yang Telah Diluluskan Di Atas Lot 10689 Pajakan Negeri 53934, Kawasan Bandar Xliii, Daerah Melaka Tengah, Melaka', 0),
(228, 36, '2016-01-18', '2015-12-31', 225, 'Hajjah Dina Nordin Associates', '', 'Muhammad Firdaus Bin Mohd Said. Ketua Menteri Melaka (incoporation). H.S (D) 71149, Pt 123 In The Bandar Bukit Baru Seksyen Iv, District Og Melaka Tengah, Melaka', 0),
(229, 37, '2016-01-18', '2016-11-01', 225, 'Hong Leong Bank', '', 'Master Fire Insurance Policy. Location Of Risk : Pangsapuri Kampung Padang Jambu. Unit No. : As Per List Attached Purchaser : As Per List Attached', 0),
(230, 38, '2016-01-18', '2016-01-14', 225, 'Pejabat Ketua Menteri Melaka', '', 'Permohonan Tanah Kerajaan Di Atas Plot A (berhampiran Lot 1691) Mukim Bukit Katil, Daerah Melaka Tengah Melaka Bagi Tujuan Pertanian Oleh Ybhg. Datuk Che Amran Bin Mohd Yusoff', 0),
(231, 39, '2016-01-18', '2016-01-13', 225, 'BADSA, JKMM', '', 'Pelantikan Sebagai Ahli Jawatankuasa Siasatan Berhubung Ketidakakuran Yang Dilaporkan Dalam Laporan Ketua Audit Negara Tahun 2014 Siri 3 ', 0),
(232, 40, '2016-01-18', '2016-01-15', 225, 'adillah A. Nordin', '', 'Sale And Purchase Agreement Property : Pm 306-310, Lot No ? 5455, Mukim Paya Rumput, District Of Melaka, Melaka Tengah, Melaka. Vendor Chief Minister Melaka (incorporation). Purchaser : Datuk Wee Ka Kang', 0),
(233, 41, '2016-01-18', '2016-01-15', 225, 'adillah A. Nordin', '', 'Sale And Purchase Agreement Property : Pm 301-305, Lot No ? 5446-5450, Mukim Paya Rumput, District Of Melaka, Melaka Tengah, Melaka. Vendor Chief Minister Melaka (incorporation). Purchaser : Jm Bistari Sdn. Bhd', 0),
(234, 42, '2016-01-18', '2015-12-23', 225, 'S.Nadarajah a/l SM. Sinnasamy', '', 'Permohonan Penukaran Nama Atas Surat Tawaran Pembelian Rumah Pangsapuri Kos Rendah Di Kampung Padang Jambu, Daerah Melaka Tengah Melaka. Unit No : B-2-15, Pangsapuri Padang Jambu. Pembeli : S.Nadaraja A/L Sm Sinnasamy & Sathyaeelan A/L S.Nadaraja', 0),
(235, 43, '2016-01-18', '2016-01-01', 225, 'MS Evelators', '', 'Invoice No : Smw/16000726', 0),
(236, 44, '2016-01-18', '2015-10-25', 225, 'Perbadanan teknologi hijau', '', 'Perlaksanaan Penggunaan Penarafan Meterai Hijau Melaka Bagi Bangunan-Bangunan Baru Di Melaka', 0),
(237, 45, '2016-01-18', '2015-11-30', 225, 'Harven Holdings (M) Sdn. Bhd.', '', 'Cadangan Pembangunan Sekolah Antarabangsa Serta Pembangunan Bercampur Diatas Tanah Tambak Laut Seluas 10.0 Ekar Di Pekan Klebang, Daerah Melaka Tengah Secara Usahasama Dengan Perbadanan Ketua Menteri Melaka (CMI) Oleh Syarikat Harven Holdings (M) Sdn. Bhd', 0),
(238, 46, '2016-01-18', '2016-01-18', 225, 'Harven Holdings (M) Sdn. Bhd.', '', 'Cadangan Pembangunan Sekolah Antarabangsa Serta Pembangunan Bercampur Diatas Tanah Tambak Laut Seluas 10.0 Ekar Di Pekan Klebang, Daerah Melaka Tengah Secara Usahasama Dengan Perbadanan Ketua Menteri Melaka (CMI) Oleh Syarikat Harven Holdings (M) Sdn. Bhd', 0),
(239, 47, '2016-01-18', '2016-07-01', 225, 'ADUN Rembia', '', 'Jemputan Penyertaan Mbor Tenpin Championship-The Most Youth Participants', 0),
(240, 48, '2016-01-19', '2016-01-19', 225, 'Inspim Latihan', '', 'Invoice Inspim/0813', 0),
(241, 49, '2016-01-19', '2016-01-14', 225, 'Jabatan Alam Sekitar', '', 'Permohonan Permit Mengeluarkan Bahan Batuan (pasir Sungai) Di Atas Rezab Jps, Mukim Chinchin Daerah Jasin, Melaka Oleh Perbadanan Ketua Menetri Melaka (CMI)', 0),
(242, 50, '2016-01-19', '2016-01-15', 225, 'Inspim Latihan', '', 'Cd Nota Ceramah Simposium Pengurusan & Pengauditan Kewangan 2016 : Akauntabiliti, Intergriti, Tadbir Urus & Pengauditan Pengurusan Kewangan', 0),
(243, 51, '2016-01-19', '2015-12-22', 225, 'Inspim Latihan', '', '1) Penghargaan Atas Sokongan Menyertai  Program Latihan Inspim Bagi Tahun 2016 2) Jemputan Menyertai Program Latihan Inspim', 0),
(244, 52, '2016-01-19', '2016-01-18', 225, 'Khairil & Co', '', 'Perjanjian Jual Beli. Pembeli : Tee Yan Ping. Hartanah : Lot 248, Pn 4103, Kawasan Bandar Ii, Daerah Melaka Tengah, Negeri Melaka', 0),
(245, 53, '2016-01-19', '2016-01-14', 225, 'Riezal Integrated Engineering', '', 'Sebut Harga ? Kerja-Kerja Penyelenggaraan Kabel Lampu Awam Di Pulau Melaka, Melaka', 0),
(246, 54, '2016-01-19', '2015-12-15', 225, 'Prisma', '', 'Sebut Harga ? No : 2972', 0),
(247, 55, '2016-01-19', '2016-12-01', 225, 'Puspanita', '', 'Mesyuarat Agung Puspanita Cawangan Daerah Jasin Kali Ke-27', 0),
(248, 56, '2016-01-19', '2016-01-18', 225, 'Jabatan Ketua Menteri Melaka', '', 'Mesyuarat Jawatan Kuasa Penswastaan Negeri Bil 1/2016', 0);
INSERT INTO `record` (`id`, `no`, `tterima`, `tsurat`, `klt`, `dari`, `kepada`, `perkara`, `time`) VALUES
(249, 57, '2016-01-19', '2016-01-19', 225, 'Majlis perbandaran jasin', '', 'Tawaran Pembahagian Sewa Taman Ekstrem Tasik Chinchin, Jasin Melaka Di Antara Majlis Perbandaran Jasin Dan Perbadanan Ketua Menteri Melaka Secara Pembahagian Keuntungan (profit Sharing)', 0),
(250, 58, '2016-01-19', '2016-01-19', 225, 'Salina Taib & Co', '', 'Invoice No : C000/2016', 0),
(251, 59, '2016-01-19', '2016-01-18', 225, 'Bahagian Teknologi Maklumat JKMM', '', 'Kerja-Kerja Peningkatan Peralatan Keselamatan Rangkain 1melaka*Net Kerajaan Negeri Melaka', 0),
(252, 60, '2016-01-19', '2016-01-18', 225, 'Pentadbiran, JKMM', '', 'Jemputan Perhimpunan Bulaann Pentadbiran Kerajaan Negeri Melaka Bil. 1/2016', 0),
(253, 61, '2016-01-19', '2016-01-13', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Pindaan ? Jemputan Ke Mesyuarat Memukatamadkan Risalat Majlis Mesyuarat Kerajaan Negeri (MMKN) : Cadangan Penambahbaikan Dasar Berkaitan Kelulusan Projek Penambakan Laut Negeri Melaka Bagi Daerah Melaka Tengah, Melaka', 0),
(254, 62, '2016-01-19', '2016-01-17', 225, 'ADUN Rembia', '', 'Jemputan Penyertaan Mbor Tenpin Championship-The Most Youth Participants', 0),
(255, 63, '2016-01-19', '2016-01-15', 225, 'MS Evelators', '', 'One (1) Unit Of Toshiba Lift No.L1 Installed At Melaka K-Economy Incubator Division, Lot 1, Kawasan It City, Melaka International Trade Centre (MITC) ,bukit Katil, Melaka', 0),
(256, 64, '2016-01-19', '2016-01-19', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mesyuarat Jawatankuasa Negeri Kewangan, Tanah, Perancangan Ekonomi, Pelaburan Dan Perindustrian, Hal Ehwal Agama, Warisan, Pembangunan Belia Dan Pelancongan Bil. 3/2016', 0),
(257, 65, '2016-01-19', '2016-01-18', 225, 'jabatan pertanian', '', 'Persidangan Meja Bulat Portfolio J/K Negeri Pertanian Dan Pembangunan Usahawan Negeri Melaka Tahun 2016 ? Laporan Aktiviti Tahunan 2015 Di Bawah Portfolio', 0),
(258, 66, '2016-01-19', '2016-01-18', 225, 'jabatan pertanian', '', 'Persidangan Meja Bulat Portfolio J/K Negeri Pertanian Dan Pembangunan Usahawan Negeri Melaka Tahun 2016 ? Jemputan Majlis Persidangan Meja Bulat', 0),
(259, 67, '2016-01-19', '2016-01-19', 225, 'MK Nizam Rizal & Partners', '', 'Penyediaan Perjanjian Penyewaan Perbadanan Ketua Menteri Melaka. Penyewa : Agile Computing Solutions Sdn. Bhd.. Premis : Suite 1.18 Bangunan Inkubator K-Ekonomi, Melaka. Tempoh : 1/1/2016-31/12/2016', 0),
(260, 68, '2016-01-19', '2016-01-14', 225, 'Perbadanan Melaka Holdings', '', 'Persetujuan Pembaharuan Perlindungan Takaful Kebakaran Bagi Perbadanan Ketua Menteri Melaka Tahun 2016/2017. Tarikh Perlindungan : 9/1/2016-8/1/2017. Lokasi : Rumah Media Melaka, Ayer Keroh, 75450 Melaka', 0),
(261, 69, '2016-01-19', '2016-01-19', 225, 'Jabatan Pengangkutan Jalan (JPJ)', '', 'Mesyuarat Post Exco Jawatankuasa Penangkutan, Pemulihan Projek Dan Perdagangan Antarabangsa Bil 3/2016', 0),
(262, 70, '2016-01-19', '2016-01-13', 225, 'Yeoh Mazlina & Partners', '', 'Sale & Purchase Agreement Dated 18/6/2014. Vendor : Perbadanan Ketua Menteri Melaka (CMI). Purchaser : Mohammad Afif Bin Sharani. Property : B-4-08 Pangsapuri Kampung Padang Jambu, Bandar Bukit Baru Seksyen Iii 75300 Melaka', 0),
(263, 71, '2016-01-19', '2016-01-16', 225, 'Pejabat daerah dan tanah melaka tengah', '', 'Permohonan Penyerahan Balik Dan Pemberimilikan Semula Tanah Di Atas Hakmilik Hsd 80453 Pt 2251, Kawasan Bandar Vi, Daerha Melaka Tengah, Melaka', 0),
(264, 72, '2016-01-19', '2016-01-15', 225, 'Bahagian Teknologi Maklumat JKMM', '', 'Jemputan Mesyuarat Jawatankuasa Teknikal Teknologi Maklumat Bil.1/2016, Mesyuarat Jawatankuasa Teknikal Laman Web/Portal Bil.1/2016 Dan Mesyuarat Pasukan Computer Emergency Respone Team (cert) Bil.1/2016 Negeri Melaka', 0),
(265, 73, '2016-01-19', '2016-01-19', 225, 'Unit Kerajaan Tempatan, JKMM', '', 'Mesyuarat Jawatankuasa Negeri Perumahan , Kerajaan Tempatan, Kesejahteraan Bandar Dan Alam Sekitar Bil. 3/2016', 0),
(266, 74, '2016-01-20', '2016-01-18', 225, 'Pentadbiran, JKMM', '', 'Perlantikan Ahli Jawatankuasa Dan Mesyuarat Induk Peringkat Negeri Sempena Penganjuran Majlis Rumah Terbuka Malaysia (MRTM) Tahun Baru Cina 2016 Di Negeri Melaka', 0),
(267, 75, '2016-01-20', '2016-01-19', 225, 'Pentadbiran, JKMM', '', 'Pasukan Kior Jabatan Ketua Menteri Melaka (JKMM)', 0),
(268, 76, '2016-01-20', '2016-01-19', 225, 'Terus Maju AGMS Enterprise', '', 'Kerja-Kerja Membaiki Slab Bocor Dan Kerja Berkaitan Di Pejabat Syarikat Takdir Teguh, No.8e, Jalan Hang Tuah, Melaka ? Tuntutan Pembayaran', 0),
(269, 77, '2016-01-20', '2016-01-19', 225, 'Chong Kah Khen & Harris', '', 'Housing Loan Facility Of Rm125,318-00 (Inclusive Of Mrtt Rm5,318.00) Project : Taman Paya Rumput Utama. Property : Pm339, Lot 5520, Mukim Of Paya, District Melaka Tengah, Melaka. Purchaser : Adlee Bin Hisyamuddin & Roslina Aida Binti Rahimi. Borrower : Ad', 0),
(270, 78, '2016-01-20', '2016-01-18', 225, 'Majlis Bandaraya Melaka Bersejarah', '', 'Cukai Taksiran Harta Bagi Hartanah No.35,35-1 & 39, 39-1 (PT 15058 & Pt 15060) Jalan Mp 1 Taman Merdeka Permai, Batu Berendam, Melaka', 0),
(271, 79, '2016-01-20', '2016-01-19', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Bayaran Sewa Bangunan Majlis Gabungan Belia Melaka (MGBM) & Tanah Kerajaan Negeri Melaka Lot 1130 Untuk Kawasan Plkn Ayer Keroh, Melaka Oleh Syarikat Usima Sdn. Bhd. Kerajaan Negeri (CMI) : Rm 120,000.00 Mgbn : Rm 120,000.00', 0),
(272, 80, '2016-01-20', '2016-01-19', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Proposal On Tenancy Agreement Between Melaka Chief Minister Incorporated (CMI) And China World Trade Corporation (CTWC) In Guangzhou For The Establishment Of Melaka-Guangdong Gallery At Level 3, Goldlion Digital Network Centre, Guangzhou', 0),
(273, 81, '2016-01-20', '2016-01-18', 225, 'Unit Kewangan JKMM', '', 'Perkara : Penayata Gaji Akhir Puan Nadiah Binti Roslan No K/P : 850809-04-5336 Jawatan : Pembantu Tadbir (perkeranian/operasi) (N17)', 0),
(274, 82, '2016-01-20', '2016-01-19', 225, 'Jurukur Prestij', '', 'Tajuk Projek : Pelan Ukuran Bagi Penyediaan Laporan Kajian Ke Atas Kerja0kerja Pengorekan Dan Pengeluaran Bahan Batuan (pasir) Di Atas Tanah Rezab Jps, Mukim Kemuning (sec. B), Daerah Alor Gajah, Melaka. Tarikh Inbois 3/12/2015 Jumlah Inbois : Rm30,187.53', 0),
(275, 83, '2016-01-20', '2016-01-19', 225, 'Jurukur Prestij', '', 'Tajuk Projek : Permohonan Tanah Kerajaan Di Atas Lot 364, Pekan Batu Berendam, Daerah Melaka Tengah, Melaka. Tarikh Inbois 8/12/2015. Jumlah Inbois : Rm 1,500.00.-PERINGATAN Pertama', 0),
(276, 84, '2016-01-20', '2016-01-19', 225, 'Jurukur Prestij', '', 'Tajuk Projek : Permohonan Tanah Kerajaan Di Atas Lot 61, Bandar Melaka, Daerah Melaka Tengah, Melaka. Tarikh Inbois 8/12/2015 Jumlah Inbois : Rm 1,500.00 ? Peringatan Pertama', 0),
(277, 85, '2016-01-20', '2016-01-19', 225, 'Jurukur Prestij', '', 'Tajuk Projek : Permohonan Tanah Kerajaan Di Atas Lot 16, Bandar Melaka, Daerah Melaka Tengah, Melaka. Tarikh Inbois 8/12/2015 Jumlah Inbois : Rm 1,500.00 ? Peringatan Pertama', 0),
(278, 86, '2016-01-20', '2016-01-19', 225, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 21.8.2015 Harta : Pm 306-310, Lot No 5451-5455, Mukim Paya Rumput, Daerah Melaka Tengah, Melaka. Pembeli : Datuk Wee Ka Keng. Peminjam Datukk Wee Ka Keng. Bank : Maybank Islamic Berhad. Jumlah Pinjaman : Rm360,000.00 (untuk ', 0),
(279, 87, '2016-01-20', '2016-01-18', 225, 'Dover Elevators', '', 'Maintenance & Servicing Of One (1) Unit Of Dover Elevator At Media House Dataran Mitc, Melaka', 0),
(280, 88, '2016-01-20', '2016-01-20', 225, 'Hean Yi Holding Sdn. Bhd.', '', 'Cadangan Untuk Membangunkan Tanah Kerajaan Di Kawasan Bandar Xlii, Daerah Melaka Tengah, Melaka Seluas 1.647 Ekar Oleh Syarikat Hean Yi Holding Sdn. Bhd.', 0),
(281, 89, '2016-01-20', '2016-01-19', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Cadangan Untuk Megeluar, Mengedar Dan Mejual Syiling Dan Jongkong Komomeratif Negeri Melaka Bandaraya Bersejarah, Serta Rekabentuk Siri Pertama Syiling Emas ? Oz Edisi Terhad Melaka Bandaraya Bersejarah-Pahlawan Melaka Secara Usahasama Bersama Perbadanan ', 0),
(282, 90, '2016-01-20', '2016-01-20', 225, 'Bahagian K-Ekonomi', '', 'Tan Mik Xin. Syarikat : Agile Matrix Solutions. Borang Aduan Kerosakkan', 0),
(283, 91, '2016-01-20', '2016-01-20', 225, 'MNZWAJAssociates', '', 'Pemulangan Dokumen (31 Disember 2016)', 0),
(284, 92, '2016-01-20', '2016-01-19', 225, 'Inovasi, JKMM', '', 'Jemputan Ke Mesyuarat Pembukaan, Penutup Dan Majlis Makan Malam Sempena Audit Pensijilanekosistem Kondusif Sektor Awam (EKSA) Jabatan Ketua Meneteri Melaka', 0),
(285, 93, '2016-01-20', '2016-01-18', 225, 'jabatan pertanian', '', 'Mesyuarat Post Exco Jk Pertanian Dan Pembangunan Usahawan Bil. 3/2016', 0),
(286, 94, '2016-01-20', '2016-01-19', 225, 'DMDI Finance House', '', 'Notis Mesyuarat Lembaga Pengarah Dmdi Finance House Berhad Bil 1/2016', 0),
(287, 95, '2016-01-20', '2016-01-20', 225, 'Pentadbiran, JKMM', '', 'Penundaan ? Perlantikan Ahli Jawatankuasa Dan Mesyuarat Induk Peringkat Negeri Sempena Penganjuran Majlis Rumah Terbuka Malaysia (MRTM) Tahun Baru Cina 2016 Di Negeri Melaka', 0),
(288, 96, '2016-01-20', '2016-01-20', 225, 'Juruukur  Mahadi ', '', 'Permohonan Serentak Pecah Sempadan Dan Tukar Syarat Tanah Di Atas Lot 12080 (PN 53423), Seluas 12,028, Bandar Baru Seksyen  Iii, Daerah Melaka Tengah Melaka. Melaka', 0),
(289, 97, '2016-01-20', '2016-01-20', 225, 'Juruukur  Mahadi ', '', 'Permohonan Tanah Kerajaan Di Atas Lot 307, Kawasan Bandar Xxxvi, Daerah Melaka Tengah, Melaka Untuk Tujuan Bangunan Kediaman', 0),
(290, 98, '2016-01-20', '2016-01-20', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Jemputan Lawatan Kerja Kerja Teknikal Kerajaan Negeri Melaka Ke Guangzhou, China Berhubung Pembukaan Pejabat Perhubungan Dan Galeri Melaka-Guangzhou', 0),
(291, 99, '2016-01-20', '2016-01-20', 225, 'Pejabat daerah dan tanah melaka tengah', '', 'Laporan Cadangan Pengambilan Tanah Di Atas Lot 10637, Lot 240, Lot 241,Lot 242 Dan Lot 245 Seluas 6,251.704 M.P, Di Kawasan Bandar Xix, Daerah Melaka Tengah', 0),
(292, 100, '2016-01-20', '2016-01-20', 225, 'Pejabat daerah dan tanah melaka tengah', '', 'Maklumat Berkaitan Lot Bersebelahan Yayasan Toh Puan Zurina', 0),
(293, 101, '2016-01-20', '2016-01-18', 225, 'Abdul Aziz Rahim & Co.', '', 'Letter Of Consent. Property : One (1) Of Unit Of Medium Apartment Known As B-4-15, Storey No.4, Petak No.15, Building No.B Pangsapuri Padang Jambu Measuring Approximately 750 Square Feets Held Under Master Tittle No Hs(D) 71126,Pt 280, Bandar Bukit Baru S', 0),
(294, 102, '2016-01-20', '2016-01-20', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Jemputan Lawatan Kerja Teknikal Kerajaan Negeri Melakas Ke Guangshou, China Berhubungan Pembukaan Pejabat Perhubungan Dan Galeri Melaka ? Guangzhou.', 0),
(295, 103, '2016-01-20', '2016-01-20', 225, 'Yeoh Mazlina & Partners', '', 'Customers : Mohammad Afif Bin Sharani. Purchaser (S) : Mohammad Afif Bin Sharani & Fariza Binti Abdol Rahman. Property : B-4-08 Pangsapuri Kampung Padang Jambu, Bandar Bukit Baru Seksyen Iii, 75300 Melaka. Tittle/Master : Lot 12080, Pn 53423, Bandar Bukit', 0),
(296, 104, '2016-01-21', '2016-01-21', 225, 'MESSRS Adnan Rashid & Co', '', 'Quotation Of Legal Fees For Joint Venture Agreement. Property : Lot 1367, Mukim Melaka Pindah, District Of Alor Gajah Melaka. Proprietor Chief Minister Of Melaka', 0),
(297, 105, '2016-01-21', '2016-01-20', 225, 'adillah A. Nordin', '', 'Sale And Purchase Agreement Property : Pm 306-310, Lot No. 5451-5455, Mukim Paya Rumput, District Of Melaka, Melaka Tengah, Melaka. Vendor : Chief Minister Melaka (incorporation). Puchaser : Datuk Wee Ka Keng', 0),
(298, 106, '2016-01-21', '2016-01-20', 225, 'adillah A. Nordin', '', 'Perjanjian Jual Beli ? Pulau Melaka, Melaka. Harta : Unit No : 2a-A Blok No : A Lot No : 126. Pembeli Asal : Choo Koon Kong. Pembeli Penama : Choo Chin Yat. Harga Jualan : Rm 81,840.00. Peguam : Tetuan Kik Fenny & Co.', 0),
(299, 107, '2016-01-21', '2016-01-21', 225, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 21.08.2015 Harta Pm 306-310, Lot No.5451-5455, Mukim Paya Rumput, Daerah Melaka Tengah. Pembeli : Datuk Wee Ka Keng', 0),
(300, 108, '2016-01-21', '2016-01-21', 225, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 05.06.2016. Harta : Pajakan Mukin 218 Lot 5363 Mukim Paya Rumput, Melaka. Penjual : Perbadanan Ketua Menteri Melaka (CMI). Pembeli : Dato'' Dr Tan Meng Lee.', 0),
(301, 109, '2016-01-21', '2016-01-18', 225, 'TZ Security Services Sdn. Bhd.', '', 'Tunggakan Invois Bagi Bulan Oktober Dan November 2015', 0),
(302, 110, '2016-01-21', '2016-01-19', 225, 'Lembaga Perumahan Melaka', '', 'Perjanjian Jual Beli Bertarikh 29.08.1994. Hartanah : Pn 4084 Lot 824 Bandar Kawasan Bandar, Daerah Melaka Tengah, Negeri Melaka. Penjual : Ketua Menteri Melaka (perbadanan). Pembeli : Cecily Louis A/L J.Louis', 0),
(303, 111, '2016-01-21', '2016-01-20', 225, 'Razin (M) Sdn. Bhd.', '', 'Kertas Cadangan Untuk ?recrational Flight Interactive Concept?', 0),
(304, 112, '2016-01-21', '2016-01-21', 225, 'jabatan pertanian', '', 'Minit Mesyuarat Post Exco J/K Negeri Pertanian Dan Pembangunan Usahawan Bil. 2/2016', 0),
(305, 113, '2016-01-21', '2016-01-20', 225, 'Jabatan Ketua Menteri Melaka', '', 'Permohonan Bertindih Bagi Tanah Kerajaan Daripada Perbadanan Ketua Menteri Melaka Dan Yayasan Melaka Di Atas Lot 15055 Seluas 2,045 Mp Dan Lot 15056, Seluas 4,247 Mp Di Mukim Bukit Katil, Daerah Melaka Tengah, Melaka Untuk Bangunan Perniagaan Dan Kediaman', 0),
(306, 114, '2016-01-21', '2016-01-19', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Cadangan Untuk Megeluar, Mengedar Dan Mejual Syiling Dan Jongkong Komomeratif Negeri Melaka Bandaraya Bersejarah, Serta Rekabentuk Siri Pertama Syiling Emas ? Oz Edisi Terhad Melaka Bandaraya Bersejarah-Pahlawan Melaka Secara Usahasama Bersama Perbadanan ', 0),
(307, 115, '2016-01-21', '2016-01-20', 225, 'Jabatan Ketua Menteri Melaka', '', 'Mesyuarat Penyelarasan Pembangunan Pelabuhan Tanjung Bruas', 0),
(308, 116, '2016-01-22', '2016-11-01', 225, 'C H Williams Talhar & Wong', '', 'Lot No.3082 (formerly Pt 1888) Mukim Of Balai Panjang District Of Melaka Tengah, Melaka', 0),
(309, 117, '2016-01-22', '2016-11-01', 225, 'Noffaz Trade (M) Sdn. Bhd.', '', 'Permohonan Kebenaran Untuk Kerja Kerja Servis Penyaman Udara', 0),
(310, 118, '2016-01-22', '2016-01-18', 225, 'Majlis Bandaraya Melaka Bersejarah', '', 'Cadangan Menaiktaraf Jalan Melaka Raya 5 Bagi Projek Pembangunan Di Pulau Melaka Secara Reka Dan Bina (design & Build) Serta Kerja-Kerja Yang Berkaitan Dengan Pembinaan Jalan Masuk Di Pulau Melaka, Daerah Melaka Tengah, Melaka Untuk Perbadanan Ketua Mente', 0),
(311, 119, '2016-01-22', '2016-10-01', 225, 'Muo Station MITC', '', 'Permohonan Penggunaan Ruang Legar Jalan Kf1 Untuk Majlis Persandingan Pada 30 Januari 2016', 0),
(312, 120, '2016-01-22', '2016-01-21', 225, 'jabatan pertanian', '', 'Persidangan Meja Bulat Portfolio J/K Negeri Pertanian Dan Pembangunan Usahawan Negeri Melaka Tahun 2016 ? Jemputan Majlis Persidangan Meja Bulat', 0),
(313, 121, '2016-01-22', '2016-01-21', 225, 'desmond ho & Associates advocates & solicitors', '', 'Perkara : Dalam Mahkamah Majistret Di Melaka Guaman No. A71-281-05 Tahun 2015. Plantif : Syarikat Koperasi Bekas Perajurit Melaka Berhad. Defendan : Perbadanan Ketua Menteri Melaka', 0),
(314, 122, '2016-01-22', '2016-01-21', 225, 'pejabat tanah dan galian ( PTG )', '', 'Permohonan Rayuan Daripada Perbadanan Ketua Menteri Melaka Untuk Mngurangkan Bayaran Sebanyak 50% Bagi Pemberimilikan Tanah Kerajaan Di Atas Lot 874, Seluas 2.937 Ekar (11,885 M.P), Di Mukim Klebang Besar, Daerah Melaka Tengah, Melaka Bagi Tujuan Bangunan', 0),
(315, 123, '2016-01-22', '2016-01-21', 225, 'pejabat tanah dan galian ( PTG )', '', 'Permohonan Daripada Ho Wee Keong (No. Kad Pengenalan : 581021-04-5119) Untuk Memiliki Tanah Kerajaan Di Atas Lot 131 Seluas 332 Kaki Persegi (30.84M.P.) Di Kawasan Bandar Xxvii, Daerah Melaka Tengah, Melaka Untuk Tujuan Bangunan (kediaman) Di Bawah Seksye', 0),
(316, 124, '2016-01-22', '2016-01-22', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Memohon Maklumbalas Untuk Dibentangkan Dalam Mesyuarat Jawatankuasa Pemandu Pelancong Melaka-Guangdong (MAGIC) Bil.1/2016', 0),
(317, 125, '2016-01-22', '2016-01-14', 225, 'Jabatan Agama Islam Melaka (JAIM)', '', 'Jemputan Ke Perasmian Penutup Dan Penyampaian Hadiah Majlis Menghafaz Al-Quran Peringkat Ngeri Melaka Tahun 1437h/2016m', 0),
(318, 126, '2016-01-22', '2016-01-21', 225, 'adillah A. Nordin', '', 'Perjanjian Jual Beli Bertarikh 21.8.2015. Harta Pm301-3015, Lot No. 5446-5450, Mukim Paya Rumput Daerah Melaka Tengah, Melaka. Pembeli Jm Bestari Sdn. Bhd.', 0),
(319, 127, '2016-01-22', '2016-01-22', 225, 'Puncak Hallaj Enterprise', '', 'Surat Rayuan Untuk Melanjutkan Penyambungan Sewaan Kedai No.17 Jalan Inang 1, Taman Paya Rumput Utama 76540 Cheng Melaka', 0),
(320, 128, '2016-01-22', '2016-01-22', 225, 'Dunia Melayu Dunia Islam (DMDI)', '', 'Notis Pindaan Mesyuarat Lembaga Pengarah Dmdi Finance House Berhad Bil.1/2016', 0),
(321, 129, '2016-01-22', '2016-01-22', 225, 'Pentadbiran, JKMM', '', 'Taklimat Pasukan Koir Jabatan Ketua Menteri Melaka (JKMM)', 0),
(322, 130, '2016-01-22', '2016-01-20', 225, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Cadangan Kerja-Kerja Pengubahsuaian Sebuah Restoran Melayu Melaka Dan Kerja-Kerja Berkaitan Secara Design & Build Di Kampung Morten Kb Viii. Melaka Untuk Perbadanan Ketua Menteri Melaka (CMI)  Perkara :  ?peringatan Bagi Memepercepatkan Dokumentasi Penyer', 0),
(323, 131, '2016-01-22', '2016-01-20', 225, 'Perbadanan Kemajuan Negeri  Melaka', '', 'Kerja-Kerja Membaiki Kerosakan Sebuah Restoran Melayu Melaka Dan Kerja-Kerja Berkaitan Di Kampung Morten, Melaka. - ?peringatan Bagi Mempercepatkan Dokumentasi Penyerahan Projek?', 0),
(324, 132, '2016-01-25', '2016-01-15', 225, 'Perbadanan Melaka Holdings', '', 'Polisi Pembaharuan Perlindungan Insurans Kebakaran Dan Tanggungan Awam Bagi Perbadanan Ketua Menteri Melaka Tahun 2016. Tempoh Perlindungan : 01/01/2016 ? 31/12/2015. Lokasi : Pangsapuri Pulau Melaka', 0),
(325, 133, '2016-01-25', '2016-01-21', 225, 'Perbadanan Melaka Holdings', '', 'Tuntutan Pembayaran Perlindungan Takaful Kebakaran Bagi Perbadanan Ketua Meneteri Melaka Tahun 2016/2017. Tarikh Perlindungan : 09/01/2016 ? 08/01/2016', 0),
(326, 134, '2016-01-25', '2016-01-23', 225, 'Ong Kim Tiak', '', 'Maintenance Fee September 2014 + Deposit + Fire Insurans 2014-2015. Cheque No : Pbb461025', 0),
(327, 135, '2016-01-25', '2016-01-25', 225, 'Noor Juliana Mohamad Jamal', '', 'Borang Permohonan Kediaman', 0),
(328, 136, '2016-01-25', '2016-01-25', 225, 'muhammad Amir hafiz bin mohamad jamal', '', 'Borang Permohonan Kediaman', 0),
(329, 137, '2016-01-25', '2016-01-13', 225, 'Yap Kien Wha', '', 'Appeal For Redactim Of Fees. No. 8-2a, Blok V, Jalan Baiduri 4, Pelau Melaka.', 0),
(330, 138, '2016-01-25', '2016-01-15', 225, 'Jabatan Audit Negara', '', 'Senarau Syarikat Perbadanan Ketua Menteri Yang Di Anggotai Oleh Ketua Menteri, Setiausaha Kerajaan Negeri, Pegawai Kewangan Negeri Dan Lain-Lain Pegawai Kerajaan Sebagai Ahli Pengarah', 0),
(331, 139, '2016-01-25', '2016-12-31', 225, 'chempro technology (M) Sdn. Bhd.', '', 'Statement ? Acc/No : P160526', 0),
(332, 140, '2016-01-25', '2016-01-14', 225, 'Jabatan kastam diraja malaysia', '', 'Notis Pemberitahuan Penangguhan Pembayaran Balik Dibawah Seksyen 38(5)(B) Akta Cukai Barang Dan Perkhidmatan 2014', 0),
(333, 141, '2016-01-25', '2016-01-22', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mohon Maklumabalas Untuk Dibentangkan Dalam Mesyuarat Jawatankuasa Pemandu Melaka-Guangdong (MAGIC) Bil. 1/2016', 0),
(334, 142, '2016-01-25', '2016-01-22', 225, 'adillah A. Nordin', '', 'Sale And Purchase Agreement Dated 04/03/2015. Project : Pulau Melaka, Melaka. Prperty : Unit No : 3-2a Block No : O Lot No :236. Master Title : H.S.(D) No. 70937, Pt No : 652, Kawasan Bandar Xliii, District Of Melaka Tengah, State Of Negeri Melaka. Purcha', 0),
(335, 143, '2016-01-25', '2016-01-22', 225, 'Lim Yew Beng', '', 'Top Floor Flat Of 4-Storey Office-Pulau Melaka. Type A 349 Blok X 22a-3a Invoice : Rm 28,014', 0),
(336, 144, '2016-01-25', '2015-01-25', 225, 'Siti Aminah Binti Ahmad', '', 'Membatalakn Penyewaan Premis Di No. 19 Jalan Inang 1, Taman Paya Rumput Utama', 0),
(337, 145, '2016-01-25', '2016-01-22', 225, 'Jabatan Pengairan Dan Saliran Melaka', '', 'Permohonan Permit Mengeluarkan Bahan Batuan (pasir Sungai) Sebanyak 3,000 Meter Padu Di Atas Rezabsungai Nyalas, Daerah Jasin, Melaka', 0),
(338, 146, '2016-01-25', '2016-01-22', 225, 'Dataran Pahlawan', '', 'Legal Document- Project : Dataran Pahlawan Melaka Megamall. Property Type : Commercial Retail Lot. Lot No : E-113a. Original Purchaser : Tee Peng Guan & Lye Poh Choo. Perchaser : Liauswee Leong', 0),
(339, 147, '2016-01-25', '2016-01-19', 225, 'Dataran Pahlawan', '', 'Legal Document : Project : Dataran Pahlawan Melaka Megamall. Property Type : Commercial Retail Lot. Lot No : E-168 Purchaser : Lim Seng Chin', 0),
(340, 148, '2016-01-25', '2016-01-22', 225, 'Zali Bertiga Enterprise', '', 'Invoice No : Cmi/0001/2016', 0),
(341, 149, '2016-01-25', '2016-01-18', 225, 'Jabatan Agama Islam Melaka (JAIM)', '', 'Jemputan Ke Majlis Menghafaz Al-Quran Peringkat Negeri Melka Tahun 1437h/2016m', 0),
(342, 150, '2016-01-25', '2016-01-20', 225, 'Kumpulan melaka berhad', '', 'Pemberitahuan Pelantikan Ketua Pegawai Eksekutif Kumpulan Melaka Berhad', 0),
(343, 151, '2016-01-25', '2016-01-25', 225, 'Majlis Bandaraya Melaka Bersejarah', '', 'Kerja-Kerja Lawatperiksa Bangunan Dan Pengumpulan Data Bagi Maksud Menilai Harta Di Dalam Kawasan Majlis Bandaraya Melaka Bersejarah, Melaka', 0),
(344, 152, '2016-01-25', '2016-01-25', 225, 'Jabatan Ketua Menteri Melaka', '', 'Mesyuarat Penyelarasan Pembangunan Pelabuhan Melaka', 0),
(345, 153, '2016-01-25', '2016-01-21', 225, 'MK Nizam Rizal & Partners', '', 'Perjanjian Jual Beli- B-3-11 Pangsapuri Padang Jambu. Penjual : Perbadanan Ketua Menteri Melaka (CMI) Pembeli : Noraznam Binti Khamis. Peminjam : Noraznam Binti Khamis. Pembiaya : Maybank Islamic Berhad. Harga Jualbeli : Rm 63,000.00', 0),
(346, 154, '2016-01-25', '2016-01-20', 225, 'MK Nizam Rizal & Partners', '', 'Pro Forma ? Invoice : Penjual : Perbadanan Ketua Menteri Melaka. Pembeli ? Casa Del Rio', 0),
(347, 155, '2016-01-25', '2016-01-21', 225, 'MK Nizam Rizal & Partners', '', 'Perjanjian Jualbeli Bertarikh 25/2/2015. Pembeli : Gabungan Penaga (M) Sdn. Bhd. Peminjam : Gabungan Penaga (M) Sdn. Bhd. Penjual : Perbadanan Ketua Menteri Melaka. Hartanah : Pm 365 Lot 5546, Pm 367 Lot 5548 & Pm 368 Lot5549 Mukim Paya Rumput, Daerah Mel', 0),
(348, 156, '2016-01-25', '2016-01-21', 225, 'MK Nizam Rizal & Partners', '', 'Perjanjian Jual Beli Bertarikh 25/2/2015. Pembeli : Sidek Bin Jantan. Peminjam : Sidek Bin Jantan & Sherina Binti Sidek. Penjual : Perbadanan Ketua Menteri Melaka. Hartanah Pm 369, Lot 5550dan Pm 370 Lot 5551 Mukim Paya Rumputdaerah Melaka Tengah Negeri M', 0),
(349, 157, '2016-01-25', '2016-01-20', 225, 'MK Nizam Rizal & Partners', '', 'Menandatangai Perjanjian Jual Beli Dan Ikatan Waad-Waad Bersalingan Bagi Pangsapuri Padang Jambu. Unit No :A-1-03, Pangsapuri Padang Jambu, Melaka. Pembeli : Muhammad Izami Bin Kamarudin', 0),
(350, 158, '2016-01-25', '2016-01-25', 225, 'Akademi Kemahiran Melaka Sdn. Bhd.', '', 'Notis Mesyuarat Lembaga Pengarah Akademi Kemahiran Melaka Sdn. Bhd. Bil 1/2016', 0),
(351, 159, '2016-01-25', '2016-01-20', 225, 'MK Nizam Rizal & Partners', '', 'Permohonan Pemulangan Bayaran Yang Telah Didahulukan Bagi Hartanah Pm340, Lot 5521, Mukim Paya Rumput, Daerah Melaka Tengah, Negeri Melaka. Pembeli : Hasfizana Fariza Binti Mohd Fadzin & Mohd Nazmi Syazwan Bin Wahiri. Pembiaya : Cimb Bank Berhad', 0),
(352, 160, '2016-01-25', '2016-01-20', 225, 'PG Pure Gold Sdn. Bhd.', '', 'Penyambungan Penyewaan Van Bagi Kegunaan Restoran Melayu Melaka', 0),
(353, 161, '2016-01-25', '2016-01-21', 225, 'MK Nizam Rizal & Partners', '', 'Pengesahan Perlaksanaan Perjanjian Jual Beli Bagi Hartanah Lot 10, Lorong Hang Jebat, Pn 30291, Lot 10 Kawasan Bandar Xiv, Daerah Melaka Tengah, Negeri Melaka Di Antara Perbadanan Ketua Menteri Melaka Dan Haji Mohamed Said Bin Salleh', 0),
(354, 162, '2016-01-26', '2016-01-26', 225, '', '', 'Cadangan Kerja-Kerja Membaikpulih Pembangunan Pangsapuri Lima (5) Tingkat Yang Mengandungi 160 Unit (4blok) Dan Kerja-Kerja Infrastruktur Yang Berkaitan Secara Reka Dan Bina Di Pulau Melaka, Melaka Tengah.', 0),
(355, 163, '2016-01-26', '2016-12-01', 225, 'Lembaga Perumahan Melaka', '', 'Notis Pemberitahuan Sebelum Sitaan Harta Alih Borang G/Notis H Cukai Taksiran Harta Bertarikh 23 Disember 2016', 0),
(356, 164, '2016-01-26', '2016-01-15', 225, 'Bahagian Teknologi Maklumat JKMM', '', 'Pindaan Tarikh Jemputan Mesyuarat Jawatankuasa Teknikal Teknologi Maklumat Bil. 1/2016, Mesyurat Jawatankuasa Teknikal Laman Web/Portal Bil.1/2016 Dan Mesyuarat Pasukan Computer Emergency Respone Team (cert) Bil.1/2016 Negeri Melaka', 0),
(357, 165, '2016-01-26', '2016-01-22', 225, 'MK Nizam Rizal & Partners', '', 'Perjanjian Jual Beli Dan Permohonan Kebenaran Oindahmilik Bagi Hartanah Plot 1, Kawasan Bandar Xlii, Daerah Melaka Tengah, Negeri Melaka Di Antara Perbadanan Ketua Menteri Melaka Dan Hean Yi Holding Sdn. Bhd.', 0),
(358, 166, '2016-01-26', '2015-01-25', 225, 'Salina Taib & Co', '', 'Financing Facility Of Rm 66,806.60 (MRTT Of Rm3,106.60. Property : Pn 46853 Lot 271, Kawasan Bandar Ii, District Of Melaka Tengah, State Of Melaka. Purchaser (s) Warren Franco', 0),
(359, 167, '2016-01-26', '2016-01-25', 225, 'Mohd Azizal Bin Ali', '', 'Borang Permohonan Kediaman', 0),
(360, 168, '2016-01-26', '2015-03-12', 225, 'Azam-Malek & Soh', '', 'Perjanjian Jual Beli- Projek Pulau Melaka. Harta/Unit : Parcel No.38-1, Floor No.1st, Building No.1 Lot No.206 Pemaju : Perbadanan Ketua Menteri Melaka -CHIA Seng Huat & Sow Chorng Chun', 0),
(361, 169, '2016-01-26', '2016-01-25', 225, 'Jabatan Ketua Menteri Melaka', '', 'Mesyuarat Penyelarasan Pembangunan Pelabuhan Melaka', 0),
(362, 170, '2016-01-26', '2016-01-21', 225, 'pejabat tanah dan galian ( PTG )', '', 'Pemrmohonan Rayuan Daripada Perbadanan Ketua Menteri Melaka Untuk Pengurangan Premium Bagi Pemberimilikan Tanah Kerajaan Di Atas Plot1, Seluas 40,469 Mp Untuk Tujuan Bangunan Perniagaan Di Bawah Seksyen 42 (1)(a) Kanun Tanah Negara 1965', 0),
(363, 171, '2016-01-26', '2016-01-21', 225, 'pejabat tanah dan galian ( PTG )', '', 'Permohonan Daripada Lau Bee Lee (NO Kp : 650825-04-5263) Untuk Memiliki Tanah Kerajaan Di Atas Plot A (lot 571) Seluas 150.498 M.P Di Kawasan Bandar V, Daerah Melaka Tengah , Melaka, Untuk Tujuan Bangunan (kediaman)dibawah Seksyen 42(1)9a) Kanun Tanah Neg', 0),
(364, 172, '2016-01-26', '2016-01-26', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mesyuarat Jawatankuasa Negeri Kewangan, Tanah, Perancangan Ekonomi, Pelaburan Dan Perindustrian, Hal Ehwal Agama, Warisan, Pembangunan Belia Dan Pelancongan Bil. 4/2016', 0),
(365, 173, '2016-01-26', '2016-07-01', 225, 'ADUN Rembia', '', 'Jemputan Penyertaan Mbor Tenpin Championship-The Most Youth Participants', 0),
(366, 174, '2016-01-26', '2016-01-22', 225, 'Unit Perancang Ekonomi Negeri, JKMM', '', 'Mesyuarat Jawatankuasa Pemandu Melaka-Guangdong (MAGIC) Bil1./2016', 0),
(367, 175, '2016-01-26', '2016-01-26', 225, 'Inspim Latihan', '', 'Invoice Inspim/0845', 0),
(368, 176, '2016-01-26', '2015-12-28', 225, 'Kumpulan Ukur Petanah (LS) Sdn. Bhd.', '', 'Credit Note ? C/N No : Ls 018/2015', 0),
(369, 177, '2016-01-26', '2016-01-25', 225, 'Zakat Melaka', '', 'Pengesahan Bayaran Zakat Melalui Potongan Gaji', 0),
(370, 178, '2016-01-26', '2016-01-26', 225, 'Jabatan Pengangkutan Jalan (JPJ)', '', 'Mesyuarat Post Exco Jawatankuasa Penangkutan, Pemulihan Projek Dan Perdagangan Antarabangsa Bil 4/2016', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
