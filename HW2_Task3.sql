-- Вы работаете с PostgreSQL
-- Введите свой код ниже
ALTER TABLE itresume4145317.mobile_phones
ADD manufacturer_id INTEGER NULL;
ALTER TABLE itresume4145317.mobile_phones
ADD FOREIGN KEY (manufacturer_id) REFERENCES itresume7847721.manufacturer (id) ON DELETE SET NULL ON UPDATE CASCADE;
UPDATE itresume4145317.mobile_phones
SET manufacturer_id = 
CASE manufacturer
  WHEN 'Apple' THEN 1
  WHEN 'Samsung' THEN 2
  WHEN 'Huawei' THEN 3
END;
ALTER TABLE itresume4145317.mobile_phones
DROP COLUMN manufacturer;