CREATE PROCEDURE CalcularPromedioNotas
    @ID INT, 
    @Promedio DECIMAL(5, 1) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

   
    DECLARE @Nota1 DECIMAL(5, 1);
    DECLARE @Nota2 DECIMAL(5, 1);
    DECLARE @Nota3 DECIMAL(5, 1);
    DECLARE @Nota4 DECIMAL(5, 1);
   
    
    SELECT
        @Nota1 = ISNULL(Nota1, 0),
        @Nota2 = ISNULL(Nota2, 0),
        @Nota3 = ISNULL(Nota3, 0),
        @Nota4 = ISNULL(Nota4, 0)
    FROM Notas
    WHERE ID = @ID;
   
  
    SET @Promedio = (@Nota1 + @Nota2 + @Nota3 + @Nota4) / 4;

    RETURN;
END