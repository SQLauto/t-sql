DECLARE @who2 TABLE (
	SPID INT NULL,
	[Status] VARCHAR(255) NULL,
	[Login] VARCHAR(255) NULL,
	HostName VARCHAR(255) NULL,
	BlkBy VARCHAR(255) NULL,
	DBName VARCHAR(255) NULL,
	Command VARCHAR(8000) NULL,
	CPUTime INT NULL,
	DiskIO INT NULL,
	LastBatch VARCHAR(255) NULL,
	ProgramName VARCHAR(250) NULL,
	SPID2 INT NULL, -- a second SPID for some reason...?
	REQUESTID INT NULL
)
INSERT INTO @who2
EXEC sp_who2

SELECT 
	*
FROM 
	@who2 w
WHERE 1=1
order by CPUTime desc
--AND login = 'login_name'