  SELECT   DISTINCT aaea.*	
                   	aa.account_desc
                   	aa.account_trading_status
                   	aa.site_type
  FROM     demo_content.audit_account_exchange_access aaea	 account_au aa
  WHERE    aaea.view_type IN ('L1'	 'L2')
  AND      aaea.ig_exchange_id IN	
              ('EQ_AUT_WBAG'	
              	'EQ_CAN_TOR'
              	'EQ_CHIX_ITA'
              	'EQ_EUR_CHI'
              	'EQ_EUR_ENXT'
              	'EQ_EUR_OMX'
              	'EQ_GER_XETRA'
              	'EQ_GRE_ATHEX'
              	'EQ_HKG_HKEX'
              	'EQ_IRE_ISEQ'
              	'EQ_ITA_MIB'
              	'EQ_NOR_OSE'
              	'EQ_OZ_ASX'
              	'EQ_OZ_ETF'
              	'EQ_SAF_JSE'
              	'EQ_SGP_SGX'
              	'EQ_SPA_BME'
              	'EQ_SWI_VTX'
              	'EQ_UK_IOB'
              	'EQ_UK_LSE'
              	'EQ_US_AMX'
              	'EQ_US_NSQ'
              	'EQ_US_NYSE'
              	'L2_FTSE_IDX'
              	'L2_HKEX'
              	'OPT_EQ_US')
  AND      ( (aaea.deleted_date IS NULL	
  AND         aaea.created_date < TO_DATE ('31/03/2014'	 'dd/mm/yyyy'))
  OR        (aaea.created_date < TO_DATE ('01/03/2014'	 'dd/mm/yyyy')
  AND        aaea.deleted_date > TO_DATE ('01/03/2014'	 'dd/mm/yyyy'))
  OR        (aaea.created_date > TO_DATE ('01/03/2014'	 'dd/mm/yyyy')
  AND        aaea.created_date < TO_DATE ('01/04/2014'	 'dd/mm/yyyy'))
  OR        (aaea.deleted_date > TO_DATE ('01/03/2014'	 'dd/mm/yyyy')
  AND        aaea.deleted_date < TO_DATE ('01/04/2014'	 'dd/mm/yyyy')))
  AND      aaea.account_id = aa.account_id	
  ORDER BY aaea.account_id;	
