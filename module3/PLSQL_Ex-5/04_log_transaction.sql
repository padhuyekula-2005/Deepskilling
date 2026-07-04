CREATE OR REPLACE TRIGGER LogTransaction
AFTER INSERT
ON Transactions_E5
FOR EACH ROW

BEGIN

    INSERT INTO AuditLog_E5
    (
        TransactionID,
        LogDate
    )

    VALUES
    (
        :NEW.TransactionID,
        SYSDATE
    );

END;
/