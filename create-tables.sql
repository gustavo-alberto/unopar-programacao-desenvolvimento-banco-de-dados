CREATE TABLE `Cliente` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(80) NOT NULL,
    `CPF` CHAR(11) NOT NULL,
    `Celular` CHAR(11) DEFAULT NULL,
    `EndLogradouro` VARCHAR(100) NOT NULL,
    `EndNumero` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UK_Cliente_CPF` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ContaReceber` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `Cliente_ID` INT NOT NULL,
    `FaturaVendaID` INT DEFAULT NULL,
    `DataConta` DATE NOT NULL,
    `DataVencimento` DATE NOT NULL,
    `Valor` DECIMAL(18,2) NOT NULL,
    `Situacao` ENUM('1','2','3') NOT NULL COMMENT '1=Registrada, 2=Cancelada, 3=Paga',
    PRIMARY KEY (`ID`),
    CONSTRAINT `fk_ContaReceber_Cliente` FOREIGN KEY (`Cliente_ID`) REFERENCES `Cliente` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `Estado` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(50) NOT NULL,
    `UF` CHAR(2) NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UK_Estado_UF` (`UF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
