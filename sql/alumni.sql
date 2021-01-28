/*
 Navicat Premium Data Transfer

 Source Server         : SQL Saya
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : alumni

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 27/01/2021 20:28:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_event` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `event_title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `event_slug` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_posting` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (6, 'Jalan Sehat', 'Jalan Sehat', 'jalan-sehat', 'Jalan Sehat 17 Agustus di ITATS.\r\nTempat kumpul di lapangan ITATS\r\n\r\nitats.ac.id\r\n\r\nOke...', '2021-01-27 14:13:48');
INSERT INTO `event` VALUES (7, 'Seminar IT', 'Seminar IT', 'seminar-it', 'Ayo Seminar 11.', '2021-01-27 14:13:58');
INSERT INTO `event` VALUES (8, 'Kegiatan Belajar', 'Kegiatan Belajar', 'kegiatan-belajar', 'Ayo belajar di \r\nbrainly.com2255', '2021-01-27 14:11:13');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'admin', 'Administrator');
INSERT INTO `groups` VALUES (2, 'members', 'General User');

-- ----------------------------
-- Table structure for kritik_saran
-- ----------------------------
DROP TABLE IF EXISTS `kritik_saran`;
CREATE TABLE `kritik_saran`  (
  `id_kritiksaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `kritik` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `saran` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_posting` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kritiksaran`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `kritik_saran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kritik_saran
-- ----------------------------
INSERT INTO `kritik_saran` VALUES (2, 5, 'Tolong dikembangkan Aplikasinya ini !', 'Diperbaiki tampilan dan fungsinya ya !', '2021-01-27 07:11:11');

-- ----------------------------
-- Table structure for login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------
INSERT INTO `login_attempts` VALUES (11, '::1', 'danang@alumni.com', 1611731124);
INSERT INTO `login_attempts` VALUES (12, '::1', 'danang.priambodo66@gmail.com', 1611731698);
INSERT INTO `login_attempts` VALUES (13, '::1', 'danang@alumni.com', 1611745593);
INSERT INTO `login_attempts` VALUES (14, '::1', 'danang@alumni.com', 1611745605);

-- ----------------------------
-- Table structure for lowongan
-- ----------------------------
DROP TABLE IF EXISTS `lowongan`;
CREATE TABLE `lowongan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_slug` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_posting` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lowongan
-- ----------------------------
INSERT INTO `lowongan` VALUES (1, 'PT. Indofood', 'IT Staff', 'it-staff', 'Dibutuhkan segera IT Staff dengan Syarat  :\r\n\r\n- Pengalaman 1 Tahun dibidangnya\r\n- S1 Informatika , SMK TKJ\r\n- Memiliki Kemauan Belajar\r\n\r\nJika berminat kirim ke email danang.priambodo66@gmail.com', '2021-01-27 06:47:34');
INSERT INTO `lowongan` VALUES (2, 'Cv. Tech', 'Freelance', 'freelance', 'Dibutuhkan Freelance :\r\n\r\n- Pengalaman 1 Tahun dibidangnya\r\n- S1 Informatika , SMK TKJ\r\n- Memiliki Kemauan Belajar\r\n\r\nJika berminat kirim ke email ferdi@gmail.com .', '2021-01-27 16:26:15');
INSERT INTO `lowongan` VALUES (3, 'PT. Digitech', 'Posisi Admin', 'posisi-admin', 'Dibuthkan Freelance\r\n\r\n- Pengalaman 1 Tahun dibidangnya\r\n- minimal S1\r\n- Memiliki Kemauan Belajar\r\n\r\nJika berminat kirim ke email danang.priambodo66@gmail.com', '2021-01-27 06:51:55');

-- ----------------------------
-- Table structure for profil
-- ----------------------------
DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nisn` int(11) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ayah` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pekerjaan_ayah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ibu` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pekerjaan_ibu` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_masuk` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_lulus` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_ijazah` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_skhun` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profil
-- ----------------------------
INSERT INTO `profil` VALUES (7, 2, 'Perempuan', 'Surabaya 12', '2021-01-27', 2147483647, 'Sidoarjo', '087123123', 'Ayah', 'BELUM/TIDAK BEKERJA', 'Ibu', 'BELUM/TIDAK BEKERJA', '2021', '2021', '123', '1234');
INSERT INTO `profil` VALUES (8, 4, 'Laki-Laki', 'Sidoarjo', '1999-06-21', 6921023, 'Jl. Gajah Mada, Ngingas Waru, SIdoarjo1', '08623123123123', 'Ayah Danang', 'BELUM/TIDAK BEKERJA', 'Ibu Danang', 'BELUM/TIDAK BEKERJA', '2021', '2021', 'IJZ-123', 'SKHUN-123');

-- ----------------------------
-- Table structure for referensi_profesi
-- ----------------------------
DROP TABLE IF EXISTS `referensi_profesi`;
CREATE TABLE `referensi_profesi`  (
  `id_profesi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_profesi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_profesi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of referensi_profesi
-- ----------------------------
INSERT INTO `referensi_profesi` VALUES (1, 'BELUM/TIDAK BEKERJA');
INSERT INTO `referensi_profesi` VALUES (2, 'MENGURUS RUMAH TANGGA');
INSERT INTO `referensi_profesi` VALUES (3, 'PELAJAR/MAHASISWA');
INSERT INTO `referensi_profesi` VALUES (4, 'PENSIUNAN');
INSERT INTO `referensi_profesi` VALUES (5, 'PEGAWAI NEGERI SIPIL');
INSERT INTO `referensi_profesi` VALUES (6, 'TENTARA NASIONAL INDONESIA');
INSERT INTO `referensi_profesi` VALUES (7, 'KEPOLISIAN RI');
INSERT INTO `referensi_profesi` VALUES (8, 'PERDAGANGAN');
INSERT INTO `referensi_profesi` VALUES (9, 'PETANI/PEKEBUN');
INSERT INTO `referensi_profesi` VALUES (10, 'PETERNAK');
INSERT INTO `referensi_profesi` VALUES (11, 'NELAYAN/PERIKANAN');
INSERT INTO `referensi_profesi` VALUES (12, 'INDUSTRI');
INSERT INTO `referensi_profesi` VALUES (13, 'KONSTRUKSI');
INSERT INTO `referensi_profesi` VALUES (14, 'TRANSPORTASI');
INSERT INTO `referensi_profesi` VALUES (15, 'KARYAWAN SWASTA');
INSERT INTO `referensi_profesi` VALUES (16, 'KARYAWAN BUMN');
INSERT INTO `referensi_profesi` VALUES (17, 'KARYAWAN BUMD');
INSERT INTO `referensi_profesi` VALUES (18, 'KARYAWAN HONORER');
INSERT INTO `referensi_profesi` VALUES (19, 'BURUH HARIAN LEPAS');
INSERT INTO `referensi_profesi` VALUES (20, 'BURUH TANI/PERKEBUNAN');
INSERT INTO `referensi_profesi` VALUES (21, 'BURUH NELAYAN/PERIKANAN');
INSERT INTO `referensi_profesi` VALUES (22, 'BURUH PETERNAKAN');
INSERT INTO `referensi_profesi` VALUES (23, 'PEMBANTU RUMAH TANGGA');
INSERT INTO `referensi_profesi` VALUES (24, 'TUKANG CUKUR');
INSERT INTO `referensi_profesi` VALUES (25, 'TUKANG LISTRIK');
INSERT INTO `referensi_profesi` VALUES (26, 'TUKANG BATU');
INSERT INTO `referensi_profesi` VALUES (27, 'TUKANG KAYU');
INSERT INTO `referensi_profesi` VALUES (28, 'TUKANG SOL SEPATU');
INSERT INTO `referensi_profesi` VALUES (29, 'TUKANG LAS/PANDAI BESI');
INSERT INTO `referensi_profesi` VALUES (30, 'TUKANG JAHIT');
INSERT INTO `referensi_profesi` VALUES (31, 'TUKANG GIGI');
INSERT INTO `referensi_profesi` VALUES (32, 'PENATA RIAS');
INSERT INTO `referensi_profesi` VALUES (33, 'PENATA BUSANA');
INSERT INTO `referensi_profesi` VALUES (34, 'PENATA RAMBUT');
INSERT INTO `referensi_profesi` VALUES (35, 'MEKANIK');
INSERT INTO `referensi_profesi` VALUES (36, 'SENIMAN');
INSERT INTO `referensi_profesi` VALUES (37, 'TABIB');
INSERT INTO `referensi_profesi` VALUES (38, 'PARAJI');
INSERT INTO `referensi_profesi` VALUES (39, 'PERANCANG BUSANA');
INSERT INTO `referensi_profesi` VALUES (40, 'PENTERJEMAH');
INSERT INTO `referensi_profesi` VALUES (41, 'IMAM MESJID');
INSERT INTO `referensi_profesi` VALUES (42, 'PENDETA');
INSERT INTO `referensi_profesi` VALUES (43, 'PASTOR');
INSERT INTO `referensi_profesi` VALUES (44, 'WARTAWAN');
INSERT INTO `referensi_profesi` VALUES (45, 'USTADZ/MUBALIGH');
INSERT INTO `referensi_profesi` VALUES (46, 'JURU MASAK');
INSERT INTO `referensi_profesi` VALUES (47, 'PROMOTOR ACARA');
INSERT INTO `referensi_profesi` VALUES (48, 'ANGGOTA DPR-RI');
INSERT INTO `referensi_profesi` VALUES (49, 'ANGGOTA DPD');
INSERT INTO `referensi_profesi` VALUES (50, 'ANGGOTA BPK');
INSERT INTO `referensi_profesi` VALUES (51, 'PRESIDEN');
INSERT INTO `referensi_profesi` VALUES (52, 'WAKIL PRESIDEN');
INSERT INTO `referensi_profesi` VALUES (53, 'ANGGOTA MAHKAMAH KONSTITUSI');
INSERT INTO `referensi_profesi` VALUES (54, 'ANGGOTA KABINET/KEMENTERIAN');
INSERT INTO `referensi_profesi` VALUES (55, 'DUTA BESAR');
INSERT INTO `referensi_profesi` VALUES (56, 'GUBERNUR');
INSERT INTO `referensi_profesi` VALUES (57, 'WAKIL GUBERNUR');
INSERT INTO `referensi_profesi` VALUES (58, 'BUPATI');
INSERT INTO `referensi_profesi` VALUES (59, 'WAKIL BUPATI');
INSERT INTO `referensi_profesi` VALUES (60, 'WALIKOTA');
INSERT INTO `referensi_profesi` VALUES (61, 'WAKIL WALIKOTA');
INSERT INTO `referensi_profesi` VALUES (62, 'ANGGOTA DPRD PROVINSI');
INSERT INTO `referensi_profesi` VALUES (63, 'ANGGOTA DPRD KABUPATEN/KOTA');
INSERT INTO `referensi_profesi` VALUES (64, 'DOSEN');
INSERT INTO `referensi_profesi` VALUES (65, 'GURU');
INSERT INTO `referensi_profesi` VALUES (66, 'PILOT');
INSERT INTO `referensi_profesi` VALUES (67, 'PENGACARA');
INSERT INTO `referensi_profesi` VALUES (68, 'NOTARIS');
INSERT INTO `referensi_profesi` VALUES (69, 'ARSITEK');
INSERT INTO `referensi_profesi` VALUES (70, 'AKUNTAN');
INSERT INTO `referensi_profesi` VALUES (71, 'KONSULTAN');
INSERT INTO `referensi_profesi` VALUES (72, 'DOKTER');
INSERT INTO `referensi_profesi` VALUES (73, 'BIDAN');
INSERT INTO `referensi_profesi` VALUES (74, 'PERAWAT');
INSERT INTO `referensi_profesi` VALUES (75, 'APOTEKER');
INSERT INTO `referensi_profesi` VALUES (76, 'PSIKIATER/PSIKOLOG');
INSERT INTO `referensi_profesi` VALUES (77, 'PENYIAR TELEVISI');
INSERT INTO `referensi_profesi` VALUES (78, 'PENYIAR RADIO');
INSERT INTO `referensi_profesi` VALUES (79, 'PELAUT');
INSERT INTO `referensi_profesi` VALUES (80, 'PENELITI');
INSERT INTO `referensi_profesi` VALUES (81, 'SOPIR');
INSERT INTO `referensi_profesi` VALUES (82, 'PIALANG');
INSERT INTO `referensi_profesi` VALUES (83, 'PARANORMAL');
INSERT INTO `referensi_profesi` VALUES (84, 'PEDAGANG');
INSERT INTO `referensi_profesi` VALUES (85, 'PERANGKAT DESA');
INSERT INTO `referensi_profesi` VALUES (86, 'KEPALA DESA');
INSERT INTO `referensi_profesi` VALUES (87, 'BIARAWATI');
INSERT INTO `referensi_profesi` VALUES (88, 'WIRASWASTA');

-- ----------------------------
-- Table structure for referensi_tahun
-- ----------------------------
DROP TABLE IF EXISTS `referensi_tahun`;
CREATE TABLE `referensi_tahun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_tahun` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of referensi_tahun
-- ----------------------------
INSERT INTO `referensi_tahun` VALUES (1, '2015');
INSERT INTO `referensi_tahun` VALUES (2, '2016');
INSERT INTO `referensi_tahun` VALUES (3, '2017');
INSERT INTO `referensi_tahun` VALUES (4, '2018');
INSERT INTO `referensi_tahun` VALUES (5, '2019');
INSERT INTO `referensi_tahun` VALUES (6, '2020');
INSERT INTO `referensi_tahun` VALUES (7, '2021');

-- ----------------------------
-- Table structure for status_alumni
-- ----------------------------
DROP TABLE IF EXISTS `status_alumni`;
CREATE TABLE `status_alumni`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_users`(`id_user`) USING BTREE,
  CONSTRAINT `status_alumni_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status_alumni
-- ----------------------------
INSERT INTO `status_alumni` VALUES (7, 2, 'Bekerja', 'Bekerja di Purnamazaaaa');
INSERT INTO `status_alumni` VALUES (8, 4, 'Bekerja', 'Bekerja di PT. Indofood');

-- ----------------------------
-- Table structure for testimoni
-- ----------------------------
DROP TABLE IF EXISTS `testimoni`;
CREATE TABLE `testimoni`  (
  `id_testimoni` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `testimoni` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_tampil` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Tidak',
  PRIMARY KEY (`id_testimoni`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `testimoni_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of testimoni
-- ----------------------------
INSERT INTO `testimoni` VALUES (1, 2, 'Lumayan Aplikasinya', 'Ya');
INSERT INTO `testimoni` VALUES (2, 3, 'Mantab om Dari alumni 21', 'Ya');
INSERT INTO `testimoni` VALUES (3, 4, 'OI Oi I Love U', 'Ya');
INSERT INTO `testimoni` VALUES (4, 5, 'Terima Kasih Admin', 'Ya');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED NULL DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '127.0.0.1', 'admin', '$2y$08$tXgzdrIacZ1OrTByIPY7CuOTFhKjrj7OwpzDG/hYmC8GdJURLPMIe', '', 'admin@alumni.com', '', 'VHbVi336nbbhtY1eOPl1Re1b629206bb57116b5e', 1611647134, '7awmsrsLMjKFl2kVxXo7xu', 1268889823, 1611745444, 1, 'Admin', 'Aplikasi');
INSERT INTO `users` VALUES (2, '::1', 'user1', '$2y$08$RHhB.M9KEM2QdSWA9I29XOZqn6vwfxhtze49UG55/8t4iT5TuJM2C', NULL, 'user1@alumni.com', NULL, NULL, NULL, 'Z3roFeoEdWS7HTj8o7i8se', 1545149959, 1611739098, 1, 'user 1', 'user');
INSERT INTO `users` VALUES (3, '::1', 'user2', '$2y$08$cjmwxcIhPuhcsORwO0wsJOxb5U0ZH11ds.y3FK61obTd/2lli6oau', NULL, 'user2@alumni.com', NULL, NULL, NULL, NULL, 1545287957, 1611649928, 1, 'user 2', 'user');
INSERT INTO `users` VALUES (4, '::1', 'danang.priambodo66@gmail.com', '$2y$08$jKhWDVgJUQy1kHUD6MBBfOEPJ7jmo3ulHDDeJo/7vB6/rMWdaOjTq', NULL, 'danang@gmail.com', NULL, NULL, NULL, NULL, 1611650421, 1611745628, 1, 'Danang', 'Priambodo');
INSERT INTO `users` VALUES (5, '::1', 'ferdi@gmail.com', '$2y$08$Fg9awwAk7hlUEQH5IZ39n.bM2qVcWHx5.2kGGdX0ASP3sM5Ib/VDO', NULL, 'ferdi@gmail.com', NULL, NULL, NULL, NULL, 1611665361, 1611704683, 1, 'Ferdi', 'Ardhiansyah');

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uc_users_groups`(`user_id`, `group_id`) USING BTREE,
  INDEX `fk_users_groups_users1_idx`(`user_id`) USING BTREE,
  INDEX `fk_users_groups_groups1_idx`(`group_id`) USING BTREE,
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES (26, 1, 1);
INSERT INTO `users_groups` VALUES (18, 2, 2);
INSERT INTO `users_groups` VALUES (8, 3, 2);
INSERT INTO `users_groups` VALUES (23, 4, 2);
INSERT INTO `users_groups` VALUES (22, 5, 2);

SET FOREIGN_KEY_CHECKS = 1;
