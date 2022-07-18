using vcf as vcf from '../db/index';

@path: 'GetApprovalListService'
service GetApprovalListService{
    action getApprovalList ( input : input ) returns approval_list ;
    action test_return (input : input) returns test_return_e;

    entity test_return_e{
        re_string : String;
    }

    entity input {
        key application_id : String not null;
            vendor_account_group : String(4) not null;
            applicant : String(11);
            company_purchase:  Composition of many{
                key company : String(4);
                key purchase_org : String(4);
                    supply_type : String(1);
                    payment_term : String(4);     
            }
    }

    entity employee{
        employee_id : String(11);
        name        : String(50);
        email       : String(50);
    }

    entity workflow1{
        application_id : String;
        virtual applicant : Composition of one employee;
        virtual supervisor: Composition of one employee;
        virtual hq_fin    : Composition of one employee;
        virtual hq_bu     : Composition of one employee;
    }
    
    entity approval_list{
    key application_id : String;
        virtual workflow1: Composition of one workflow1;
        mro_managers: Composition of many{
            employee_id : String(11);
            name        : String(50);
            email       : String(50);
        };
        workflow2: Composition of many {
            company_purchase   : Composition of many {
                company        : String(4);
                purchase_org   : String(4);
            };
            mm_core_user  {
                employee_id : String(11);
                name : String(50);
                email : String(50);
            };
            am_manager    {
                employee_id : String(11);
                name        : String(50);
                email       : String(50);
            };
            managers      : Composition of many {
                seq         : Integer;
                employee_id : String(11);
                name        : String(50);
                email       : String(50); 
            };
            site_fin      {
                employee_id : String(11);
                name        : String(50);
                email       : String(50);
            };
        }
}
   

}