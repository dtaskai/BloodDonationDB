declare
  cursor cur is
    select 'alter system kill session ''' || sid || ',' || serial# || '''' as command
      from v$session
     where username = 'BD_MANAGER';
begin
  for c in cur loop
    EXECUTE IMMEDIATE c.command;
  end loop;
end;
/

DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM dba_users t WHERE t.username='BD_MANAGER';
  IF v_count = 1 THEN 
    EXECUTE IMMEDIATE 'DROP USER bd_manager CASCADE';
  END IF;
END;
/
CREATE USER bd_manager 
  IDENTIFIED BY "12345678" 
  DEFAULT TABLESPACE users
  QUOTA UNLIMITED ON users
;

GRANT CREATE SESSION TO bd_manager;
GRANT CREATE TABLE TO bd_manager;
GRANT CREATE VIEW TO bd_manager;
GRANT CREATE SEQUENCE TO bd_manager;
GRANT CREATE PROCEDURE TO bd_manager;
GRANT CREATE TYPE to bd_manager;

ALTER SESSION SET CURRENT_SCHEMA=bd_manager;
