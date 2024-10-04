CREATE TABLE departments (
  department_id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `name` VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  );

ALTER TABLE people ADD department_id INT unsigned NOT NULL after email;

-- //   q3
INSERT INTO departments (name)
  VALUES
  ('営業'),
  ('開発'),
  ('経理'),
  ('人事'),
  ('情報システム')
;
INSERT INTO people (name,email, department_id, age, gender)
  VALUES
  ('岸田文雄', 'fumio@gmail.com', 1, 50, 1),
  ('菅義偉',' suga@gmail.com', 1, 50, 1),
  ('安倍晋三', 'abe2@gmail.com', 1, 50, 1),
  ('野田佳彦', 'noda@gmail.com', 2, 50, 1),
  ('菅直人',' kan@gmail.com', 2, 50, 1),
  ('鳩山由紀夫', 'hatoyama@gmail.com', 2, 50, 1),
  ('麻生太郎', 'asou@gmail.com', 2, 50, 1),
  ('福田康夫', 'fukuda@gmail.com', 3, 50, 1),
  ('安倍晋三', 'abe1@gmail.com', 4, 50, 1),
  ('小泉純一郎', 'koizumi@gmail.com', 5, 50, 1)
;
INSERT INTO reports (person_id, content)
  VALUES
  (1, 'test test test 1'),
  (1, 'test test test 2'),
  (2, 'test test test 3'),
  (2, 'test test test 4'),
  (3, 'test test test 5'),
  (4, 'test test test 6'),
  (5, 'test test test 7'),
  (6, 'test test test 8'),
  (7, 'test test test 9'),
  (8, 'test test test 10')
;

-- q4
update people set  department_id=5 where department_id IS NULL;

-- 5
select name , age  from people  where gender =1 order by age DESC;

-- 6
peopleターブルの中で、department_idが1のレコードのうち、
name, email, ageカラムを抽出し、それをそのレコードが追加された日の昇順で表示する。

-- 7
select name from people  where (gender =2 AND age like '2%') or (gender =1 AND age like '4%');

-- 8
select * from people  where department_id =1 order by age;

-- 9
select AVG(age) as average_age from people  where department_id =2 and gender=2 group by age;

-- 10
select p.name, r.content from people p right join reports r on p.person_id = r.person_id;


-- 11
select p.name from people p left join reports r on p.person_id = r.person_id where r.report_id IS NULL;

