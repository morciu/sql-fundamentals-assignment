BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO Users VALUES('Thom', 'Mathews', 'Freddy', '1111112');
		INSERT INTO Users VALUES('James', 'Caren', 'Frank', 'asdasd');
		INSERT INTO Users VALUES('Don', 'Calfa', 'Ernie', '12345');
		INSERT INTO Users VALUES('Clu', 'Gulager', 'Burt', '54321');
		INSERT INTO Users VALUES('Linnea', 'Quigley', 'Trash', '55572');
		INSERT INTO Users VALUES('Brian', 'Peck', 'Scuz', 'scuz84');
		INSERT INTO Users VALUES('Allan', 'Trautman', 'Tarman', 'caddy66');
		INSERT INTO Users VALUES('Jewel', 'Shepard', 'Casey', 'cascas');
		INSERT INTO Users VALUES('Miguel', 'Nunez', 'Spider', 'pidermon');
		INSERT INTO Users VALUES('Mark', 'Venturini', 'Suicide', 'markymark');
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	SELECT ERROR_MESSAGE() AS ErrorMessage;
	ROLLBACK TRANSACTION
END CATCH