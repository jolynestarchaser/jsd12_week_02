-- Exercise 1
Select * from staff; -- Select เอาไว้ใช้ในการเลือกเป้าหมาย
-- Exercise 2
select * from menuitems
where category = 'Burger'; -- Where เป็นการกรองข้อมูลเฉพาะ

-- Exercise 3
select menuitems, price from menuitems
ORDER BY price DESC;

-- ORDER BY (การเรียงลำดับ): เหมือนคุณมีไพ่ในมือแล้วจับมันมา "เรียง" จากแต้มมากไปแต้มน้อย ข้อมูลทุกใบยังอยู่ครบ แค่สลับที่กัน
-- GROUP BY (การจัดกลุ่ม): เหมือนคุณเอาไพ่มา "แยกกอง" ตามสี (แดง/ดำ) ข้อมูลจะถูกยุบรวมกัน เช่น ถ้าคุณอยากรู้ว่า "ราคาเฉลี่ยของเบอร์เกอร์แต่ละประเภทคือเท่าไหร่" ถึงจะใช้ตัวนี้ครับ
-- HAVING (การกรองกลุ่ม): ใช้คู่กับ GROUP BY เสมอ เพื่อกรองผลลัพธ์ที่ได้จากการจัดกลุ่ม เช่น "เอาเฉพาะกลุ่มที่มีราคาเฉลี่ยมากกว่า 200 บาท"
--Ascending = การขึ้นไป
--Descending = การลงมา

-- Exercise 4
select * from menuitems
order by price asc
limit 3;

SELECT * FROM ingredients
