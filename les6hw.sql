create database if not exists lesson6_hw;
use lesson6_hw;
DELIMITER // 

/* Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
 Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds ' */
DROP PROCEDURE IF EXISTS ToDate//
CREATE PROCEDURE ToDate (IN num INT) 
BEGIN
 DECLARE seconds TINYINT DEFAULT 0;
 DECLARE minutes TINYINT DEFAULT 0;
 DECLARE hours TINYINT DEFAULT 0;
 DECLARE days TINYINT DEFAULT 0;

/* дни */     IF num BETWEEN 86400 AND 604800 THEN  SET days = FLOOR(num / 86400);  SET num=num-(days  * 86400); END IF;
/* часы */    IF num BETWEEN 3600 AND 86400   THEN  SET hours = FLOOR(num / 3600);  SET num=num-(hours *  3600); END IF;
/* минуты */  IF num BETWEEN 60 AND  3600     THEN  SET minutes = FLOOR( num / 60); SET num=num-(minutes * 60 ); END IF;
/* секунды */ IF num <= 60                    THEN  SET seconds = num  ;  END IF;

 SELECT CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds,' seconds') AS 'result';
END //

CALL ToDate(123456);



/*  Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10 */
DROP PROCEDURE IF EXISTS EVEN//
CREATE PROCEDURE EVEN (IN num INT)
BEGIN
  DECLARE i INT UNSIGNED DEFAULT 1;
  DECLARE line  TEXT;
  DECLARE count BOOLEAN DEFAULT 0;
  IF (num > 1) THEN
	WHILE i <= num DO 
    IF (i % 2 ) = 0 then
    
		IF (count = 1) THEN
		 SET line=CONCAT (line, "," ,i);           
		END IF;
    
		 IF (count = 0) THEN     
     SET count = 1; SET line = i ;
     END IF;

    END IF;    
  	  SET i = i + 1;
	END WHILE;
    SELECT line AS "Четные числа";
  ELSE
	  SELECT 'Недопустимый параметр' AS 'ERR';
  END IF;
END//

CALL EVEN(10);