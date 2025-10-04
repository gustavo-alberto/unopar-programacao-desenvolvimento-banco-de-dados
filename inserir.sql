INSERT INTO `Estado` (`Nome`, `UF`) VALUES
('São Paulo', 'SP'),
('Minas Gerais', 'MG'),
('Rio de Janeiro', 'RJ');

INSERT INTO `Municipio` (`Estado_ID`, `Nome`, `CodIBGE`) VALUES
(1, 'São Paulo', 3550308),
(2, 'Belo Horizonte', 3106200),
(3, 'Niterói', 3303302);

INSERT INTO `Cliente` (`Nome`, `CPF`, `Celular`, `EndLogradouro`, `EndNumero`, `EndMunicipio`, `EndCEP`, `Municipio_ID`) VALUES
('João Pereira', '12345678901', '11987654321', 'Rua das Flores', '100', 1, '01001000', 1),
('Maria Souza', '98765432100', '31991234567', 'Av. dos Andradas', '200', 2, '30120010', 2),
('Carlos Lima', '45678912345', '21987651234', 'Rua das Palmeiras', '50', 3, '24220001', 3);

INSERT INTO `ContaReceber` (`Cliente_ID`, `FaturaVendaID`, `DataConta`,`DataVencimento`, `Valor`, `Situacao`) VALUES
(1, 1001, '2025-10-01', '2025-10-10', 250.75, '1'),  -- Registrada
(2, 1002, '2025-09-15', '2025-09-30', 480.00, '3'),  -- Paga
(3, 1003, '2025-09-20', '2025-10-05', 310.50, '2');  -- Cancelada
