-- Create user dan beri privileges
CREATE USER IF NOT EXISTS 'datauser'@'%' IDENTIFIED BY 'datapassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'datauser'@'%';
FLUSH PRIVILEGES;

-- Create database and table
CREATE DATABASE IF NOT EXISTS classdata;
USE classdata;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_details VARCHAR(100) NOT NULL,
    nim VARCHAR(20) NOT NULL UNIQUE
);

-- Insert sample data
INSERT INTO students (name, birth_details, nim) VALUES
('Mylovia Mahesa Ayu', 'Gresik, 24 Juli 2006', '24031554001'),
('Abdullah Al-Firdaus Nuzula', 'Malang, 12 Maret 2006', '24031554008'),
('Syafira Najema Putri Anisa', 'Bondowoso, 16 Februari 2006', '24031554013'),
('Rizki Piji Fathoni', 'Boyolali, 9 Juli 2006', '24031554029'),
('Fio Ulaa Octariyanti', 'Lampung, 11 Oktober 2005', '24031554030'),
('Alfin Jayadi', 'Palembang, 18 Januari 2007', '24031554082'),
('Dimas Rafi Izzuhaq', 'Surabaya, 8 September 2006', '24031554084'),
('Rizqi Aqilah Cahyani Yuniarto', 'Sidoarjo, 27 Mei 2006', '24031554100'),
('Muhammad Raffi Fahrezi', 'Surabaya, 3 Mei 2005', '24031554110'),
('Cyriani Neuman Rebo', 'Bajawa, 29 Januari 2006', '24031554108'),
('Ketut Shridihara', 'Luwu Timur, 27 Maret 2007', '24031554115'),
('Nazril Ravi Pratama', 'Sidoarjo, 16 September 2005', '24031554129'),
('Halilatunnisa', 'Bima, 3 Agustus 2006', '24031554130'),
('Naura Kanaya Putri Masruri', 'Jakarta, 7 Februari 2006', '24031554138'),
('Daffa Ahmad Pangkreasa', 'Gresik, 17 Mei 2006', '24031554159'),
('Faishal Muflih Irfanu Tsaqib', 'Lamongan, 18 Februari 2006', '24031554170'),
('Elvira Tiara Suci Tambunan', 'Bogor, 20 Mei 2006', '24031554188'),
('Illona Anindya', 'Cirebon, 4 Juni 2006', '24031554222');