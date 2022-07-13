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
    entity approval_list as projection on vcf.approval_list;
   

}