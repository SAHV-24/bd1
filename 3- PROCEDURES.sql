-- Procedures:
DROP PROCEDURE IF EXISTS u;
DELIMITER // 
CREATE PROCEDURE u ()
SELECT * FROM usuario;
// DELIMITER ; 


DROP PROCEDURE IF EXISTS s;
DELIMITER // 
CREATE PROCEDURE s ()
SELECT * FROM solicitud;
// DELIMITER ; 


DROP PROCEDURE IF EXISTS t;
DELIMITER // 
CREATE PROCEDURE t ()
SELECT * FROM tramite;
// DELIMITER ; 


DROP PROCEDURE IF EXISTS c;
DELIMITER // 
CREATE PROCEDURE c ()
SELECT * FROM comentario;
// DELIMITER ; 


DROP PROCEDURE IF EXISTS n;
DELIMITER // 
CREATE PROCEDURE n ()
SELECT * FROM normativa;
// DELIMITER ; 

DROP PROCEDURE IF EXISTS p;
DELIMITER // 
CREATE PROCEDURE p()
SELECT * FROM pago;
// DELIMITER ; 

DROP PROCEDURE IF EXISTS d;
DELIMITER // 
CREATE PROCEDURE d ()
SELECT * FROM documento;
// DELIMITER ; 

-- Seleccionar por ID de la solicitud
DROP procedure if exists estadoDePago;
DELIMITER && 
	CREATE PROCEDURE estadoDePago (in elID INT)
	BEGIN
	SELECT elId, idSolicitud, estadoDePago FROM pago WHERE idSolicitud=elID;
	END;
&& DELIMITER ;