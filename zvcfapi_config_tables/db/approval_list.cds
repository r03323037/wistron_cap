namespace vcf;
using vcf.employee from './employee';

entity approval_list{
    key application_id : String;
        workflow1{
            applicant   : Association to employee;
            supervisor  : Association to employee;
            mro_manager : Association to employee;
            hq_fin      : Association to employee;
            hq_bu       : Association to employee;
        };
        workflow2: Composition of many workflow2 on workflow2.parent = $self;
}

entity workflow2{
    key parent: Association to approval_list;
        sites         : Composition of many sites on sites.parent = $self;
        mm_core_user  : Association to employee;
        am_manager    : Association to employee;
        managers      : Composition of many managers on managers.parent = $self;
        site_fin      : Association to employee;
}

entity sites{
    key parent : Association to workflow2;
        company        : String(4);
        purchase_org   : String(4);
}

entity managers{
    key parent: Association to workflow2;
        seq           : Integer;
        manager       : Association to employee; 
}