ALTER PROCEDURE [dbo].[summary_order_status]
	@StatusID INT
AS
BEGIN
	SELECT a.OrderID, b.CustomerName,c.ProductName,a.Quantity,d.StatusOrder
	FROM FactSalesOrder a
	JOIN DimCustomer b ON a.CustomerID = b.CustomerID
	JOIN DimProduct c ON a.ProductID = c.ProductID
	JOIN DimStatusOrder d ON a.StatusID = d.StatusID
	WHERE d.StatusID = @StatusID;
END;

