CREATE TABLE `Cliente` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(80) NOT NULL,
    `CPF` CHAR(11) NOT NULL,
    `Celular` CHAR(11) DEFAULT NULL,
    `EndLogradouro` VARCHAR(100) NOT NULL,
    `EndNumero` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UK_Cliente_CPF` (`CPF`)
);
