## About this setup

- Biosdk debug zip has been pushed in madrasindiadeploy/artifactory-server:1.1.3_hsm_sdk. Make sure zip is updated after testing.

- Patch version of IDA Internal service is being used for now.  The patch contains fix for "level" field problem - where this field from cbeff was not being sent to biosdk.

- Idemia biosdk is running as service on http://10.10.20.235:9099/biosdk-service/.  The same is pointed from property files 

- Minio is running externally on http://10.10.20.237:9000 with credentials minioadmin,minioadmin

- Postgres running externally. Make sure max connections is set to 1000 on postgres.

- Device onboarding steps:
    1. add the device providers as partners in partner.csv in /home/mosipuser/mosip-infra/deployment/sandboxv2/utils/onboard/partner/csv/partner.csv
    2. Run below script from utils/onboard/partner
        ./partner.py partner             //check response for partner's sucessfull onboarding.
    3. Update all the device related csv's in utils/onboard/device/csv  directory.
    4. Run below script for sucessfull device onboarding.. in defined sequence...
        ./device.py -h      //run this to know the sequence.
eg.        ./device.py add......

also update device_spec table for each device id added using below Insert Query....
            INSERT INTO master.device_spec(id, name, brand, model, dtyp_code, min_driver_ver, descr, lang_code, is_active, cr_by, cr_dtimes)
    VALUES ('1003','device1','finger1','DactyScan84c','CMR','xyz','Face','eng','true','superadmin','now()');


1. Reprocessing stage has been disabled.
1. PreReg batch job service has been disabled.
1. Mock abis removed
1. Mock SDK service removed.
1. Softhsm removed.
1. Postgres init disabled in `group_vars/all.yml`.


