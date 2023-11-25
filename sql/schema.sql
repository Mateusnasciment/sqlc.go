CREATE TABLE IF NOT EXISTS `categories` (id int PRIMARY KEY AUTO_INCREMENT, name varchar(255) NOT NULL);
CREATE TABLE IF NOT EXISTS `courses` (id int PRIMARY KEY AUTO_INCREMENT, name varchar(255) NOT NULL, category_id INTEGER NOT NULL, FOREIGN KEY (category_id) REFERENCES categories(id));
CREATE TABLE IF NOT EXISTS `lessons` (id int PRIMARY KEY AUTO_INCREMENT, name varchar(255) NOT NULL, course_id INTEGER NOT NULL, FOREIGN KEY (course_id) REFERENCES courses(id));
CREATE TABLE IF NOT EXISTS `questions` (id int PRIMARY KEY AUTO_INCREMENT, name varchar(255) NOT NULL, lesson_id INTEGER NOT NULL, FOREIGN KEY (lesson_id) REFERENCES lessons(id));
CREATE TABLE IF NOT EXISTS `answers` (id int PRIMARY KEY AUTO_INCREMENT, name varchar(255) NOT NULL, question_id INTEGER NOT NULL, FOREIGN KEY (question_id) REFERENCES questions(id));
CREATE TABLE IF NOT EXISTS `users` (id int PRIMARY KEY AUTO_INCREMENT, name varchar(255) NOT NULL, email varchar(255) NOT NULL, password varchar(255) NOT NULL, role varchar(255) NOT NULL);
CREATE TABLE IF NOT EXISTS `user_courses` (id int PRIMARY KEY AUTO_INCREMENT, user_id INTEGER NOT NULL, course_id INTEGER NOT NULL, FOREIGN KEY (user_id) REFERENCES users(id), FOREIGN KEY (course_id) REFERENCES courses(id));
CREATE TABLE IF NOT EXISTS `user_lessons` (id int PRIMARY KEY AUTO_INCREMENT, user_id INTEGER NOT NULL, lesson_id INTEGER NOT NULL, FOREIGN KEY (user_id) REFERENCES users(id), FOREIGN KEY (lesson_id) REFERENCES lessons(id));
CREATE TABLE IF NOT EXISTS `user_questions` (id int PRIMARY KEY AUTO_INCREMENT, user_id INTEGER NOT NULL, question_id INTEGER NOT NULL, FOREIGN KEY (user_id) REFERENCES users(id), FOREIGN KEY (question_id) REFERENCES questions(id));
CREATE TABLE IF NOT EXISTS `user_answers` (id int PRIMARY KEY AUTO_INCREMENT, user_id INTEGER NOT NULL, answer_id INTEGER NOT NULL, FOREIGN KEY (user_id) REFERENCES users(id), FOREIGN KEY (answer_id) REFERENCES answers(id));