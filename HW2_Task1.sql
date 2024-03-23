-- Вы работаете с PostgreSQL
-- Введите свой код ниже
CREATE TABLE itresume4145317.manufacturer(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50));
INSERT INTO itresume4145317.manufacturer (name)
SELECT DISTINCT manufacturer
FROM itresume4145317.mobile_phones;