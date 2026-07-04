CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment
(
    p_amount NUMBER,
    p_rate NUMBER,
    p_years NUMBER
)

RETURN NUMBER

IS

    v_installment NUMBER;

BEGIN

    v_installment := (p_amount + (p_amount*p_rate*p_years/100))
                     /(p_years*12);

    RETURN ROUND(v_installment,2);

END;
/