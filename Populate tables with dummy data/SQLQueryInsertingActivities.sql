BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO Activity VALUES(1, 2.39, '20220802', '00:15:55');
		INSERT INTO Activity VALUES(2, 12.01, '20220804', '01:21:03');
		INSERT INTO Activity VALUES(3, 14.61, '20220811', '01:34:59');
		INSERT INTO Activity VALUES(4, 8.99, '20220801', '00:57:17');
		INSERT INTO Activity VALUES(5, 3.96, '20220801', '00:19:44');
		INSERT INTO Activity VALUES(6, 2.32, '20220802', '00:16:11');
		INSERT INTO Activity VALUES(7, 1.6, '20220815', '00:09:09');
		INSERT INTO Activity VALUES(8, 11.98, '20220812', '01:18:32');
		INSERT INTO Activity VALUES(9, 17.34, '20220815', '02:01:09');
		INSERT INTO Activity VALUES(10, 15.09, '20220807', '00:59:59');
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	SELECT ERROR_MESSAGE() AS ErrorMessage;
	ROLLBACK TRANSACTION
END CATCH