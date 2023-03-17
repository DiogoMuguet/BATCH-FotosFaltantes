@echo off
FOR /L %%i IN (4410,1,8500) DO (
  	
	findstr 0%%i matriculas.txt

	if ERRORLEVEL 1 (
	
		echo Matricula 0%%i nao esta no txt.
		
	) else (
	
		echo Matricula 0%%i esta no txt!
		
		dir P:\fotos\ /s /b | find /i "0%%i.jpg"
		
		if ERRORLEVEL 1 (
		
			echo Matricula 0%%i esta no txt, mas nao tem foto! D:
			echo 0%%i >> resultado.txt
			
		) else (
		
			echo Matricula 0%%i esta no txt, e tem foto! :D
			
		)
		
	)
	
)
pause