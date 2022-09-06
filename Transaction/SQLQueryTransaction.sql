BEGIN TRY
	BEGIN TRANSACTION
		UPDATE Activity
		SET Distance = 13.13
		WHERE Id = 3;
		UPDATE Activity
		SET Duration = '01:09:18'
		WHERE Id = 3;
		UPDATE Activity
		SET Distance = 1.11
		WHERE UserId = 1;
		DELETE FROM Marathon
		WHERE Id = 3;
		UPDATE Activity
		SET Duration = '00:05:36'
		WHERE UserId = 1;
		UPDATE Activity
		SET Duration = '00:57:43'
		WHERE UserId = 6;
		UPDATE Users
		SET UserName = 'Brains'
		WHERE UserName = 'Tarman';
		UPDATE Users
		SET UserName = 'ASDASDASDASD'
		WHERE Id = 2;
		UPDATE Users
		SET Password = 'asdadfasa'
		WHERE Id = 9;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	SELECT ERROR_MESSAGE() as ErrorMessage;
	ROLLBACK TRANSACTION
END CATCH