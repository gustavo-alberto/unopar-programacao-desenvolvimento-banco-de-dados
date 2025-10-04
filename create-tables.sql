CREATE TABLE `Cliente` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `Nome` varchar(80) NOT NULL,
    `CPF` char(11) NOT NULL,
    `Celular` char(11) DEFAULT NULL,
    `EndLogradouro` varchar(100) NOT NULL,
    `EndNumero` varchar(10) NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UK_Cliente_CPF` (`CPF`)
);
