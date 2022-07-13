namespace vcf;
using vcf.employee from './employee';

entity approval_list{
    key application_id : String;
        workflow1{
            applicant   : Association to employee;
            supervisor  : Association to employee;
            mro_managers: Composition of many employee;
            hq_fin      : Association to employee;
            hq_bu       : Association to employee;
        };
        workflow2: Composition of many {
            sites         : Composition of many {
                company        : String(4);
                purchase_org   : String(4);
            };
            mm_core_user  : Association to employee;
            am_manager    : Association to employee;
            managers      : Composition of many {
                seq           : Integer;
                manager       : Association to employee; 
            };
            site_fin      : Association to employee;
        }
}