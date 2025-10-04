CREATE OR REPLACE VIEW `vw_ContasNaoPagas` AS
SELECT
    ContaReceber.ID AS `ID_Conta`,
    Cliente.Nome AS `Nome_Cliente`,
    Cliente.CPF AS `CPF_Cliente`,
    ContaReceber.DataVencimento AS `Data_Vencimento`,
    ContaReceber.Valor AS `Valor`
FROM
    ContaReceber
    INNER JOIN Cliente ON ContaReceber.Cliente_ID = Cliente.ID
WHERE
    ContaReceber.Situacao = '1';
