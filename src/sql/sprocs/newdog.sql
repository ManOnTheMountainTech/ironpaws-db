CREATE DEFINER=`bryany_mushuser`@`69.55.218.73` PROCEDURE `NewDog`(IN dogName VARCHAR(255),
	IN dogBirthday DATE)
BEGIN
	INSERT INTO dogs (dog_name, dog_age, dog_birthday)
    VALUES (dogName, 0, dogBirthday);
END