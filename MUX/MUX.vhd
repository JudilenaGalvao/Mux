ENTITY MUX IS
	
	PORT(I0, I1, I2, I3: IN BIT;
			S1, S0: IN BIT;
			Y: OUT BIT);
			
END MUX;

ARCHITECTURE comportamento OF MUX IS
	SIGNAL sel: BIT_VECTOR(1 DOWNTO 0);
	
BEGIN

	sel <= S1 & S0;
	PROCESS(I0,I1,I2,I3,sel)
	BEGIN
	
		IF sel = "00" THEN Y <= I0;
		ELSIF sel = "01" THEN Y <= I1;
		ELSIF sel = "10" THEN Y <= I2;
		ELSE Y <= I3;
		END IF;
	
	END PROCESS;
END comportamento;