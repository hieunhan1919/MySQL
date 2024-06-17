select * from mobile;
-- Q1: Kiểm tra tính năng di động và bảng giá
-- Q1: Check mobile features and price list 
SELECT 
    phone_name, price
FROM
    mobile;

-- Q2: Tìm hiểu giá 5 chiếc điện thoại đắt nhất
SELECT 
    phone_name, MAX(price) AS gia
FROM
    mobile
GROUP BY phone_name
ORDER BY gia DESC
LIMIT 5;

-- Q3: Tìm hiểu giá 5 chiếc điện thoại rẻ nhất 
SELECT 
    phone_name, MIN(price) AS giarenhat
FROM
    mobile
GROUP BY Phone_name
ORDER BY giarenhat
LIMIT 5;


-- Q4: Danh sách top 5 điện thoại Samsung có giá thành và đầy đủ tính năng
SELECT 
    Phone_name, price, brands
FROM
    mobile
WHERE
    brands LIKE 'S%'
ORDER BY Price DESC
LIMIT 5;

-- Q5: Phải có danh sách điện thoại android thì top 5 điện thoại android giá cao
SELECT 
    Operating_System_Type, Price
FROM
    mobile
WHERE
    Operating_System_Type LIKE 'andr%'
ORDER BY price DESC
LIMIT 5;


-- Q6: Phải có danh sách điện thoại android, top 5 android giá thấp hơn cái điện thoại
SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'Android'
ORDER BY Price ASC
LIMIT 5;

-- Q7: Phải có danh sách điện thoại iOS va top 5 điện thoại lOS giá cao
SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'iOS'
ORDER BY price DESC
LIMIT 5; 


-- Q8: Phải có danh sách điện thoại lOS thì top 5 điện thoại iOS giá thấp hơn
 SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'iOS'
ORDER BY price ASC
LIMIT 5;

-- Q9: Viết câu hỏi về điện thoại nào hỗ trợ 5g và top 5 điện thoại hỗ trợ 5g
SELECT 
    *
FROM
    mobile
WHERE
    phone_name LIKE '%5G%'
LIMIT 5;

-- Q10: Tổng giá của tất cả các thiết bị di động đều có thương hiệu
SELECT 
    brands, SUM(price) AS total_price
FROM
    mobile
GROUP BY brands;








