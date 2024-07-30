CREATE TABLE Hospedes (
    HospedeId INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Documento NVARCHAR(50),
    Telefone NVARCHAR(20),
    Email NVARCHAR(100)
);
SELECT 
    R.ReservaId,
    H.Nome AS NomeHospede,
    Q.Numero AS NumeroQuarto,
    R.DataEntrada,
    R.DataSaida,
    R.ValorTotal
FROM 
    Reservas R
INNER JOIN 
    Hospedes H ON R.HospedeId = H.HospedeId
INNER JOIN 
    Quartos Q ON R.QuartoId = Q.QuartoId;
SELECT 
    R.ReservaId,
    H.Nome AS NomeHospede,
    Q.Numero AS NumeroQuarto,
    R.DataEntrada,
    R.DataSaida,
    R.ValorTotal
FROM 
    Reservas R
LEFT JOIN 
    Hospedes H ON R.HospedeId = H.HospedeId
LEFT JOIN 
    Quartos Q ON R.QuartoId = Q.QuartoId;
