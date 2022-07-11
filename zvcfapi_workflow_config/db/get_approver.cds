namespace vcf;

entity input {
    key application_id : String not null;
    vendor_account_group : String(4) not null;
    applicant : String(11);
    company_purchase: Composition of many company_purchase
        on company_purchase.application_id = $self;
}

entity company_purchase {
    application_id : Association to input;
    company : String(4);
    purchase_org : String(4);
    supply_type : String(1);
    payment_term : String(4);      
}

entity output{
    key application_id : String;
    workflow1{
        applicant{
            id: String(11);
            name: String(50);
            mail: String(50);
        };
        leader{
            id: String(11);
            name: String(50);
            mail: String(50);
        };
        mro_manager{
            id: String(11);
            name: String(50);
            mail: String(50);
        };
        hq_fin{
            id: String(11);
            name: String(50);
            mail: String(50);
        };
        hq_bu{
            id: String(11);
            name: String(50);
            mail: String(50);
        };
    };
    workflow2: Composition of many workflow2
        on workflow2.application_id = $self;
}

 entity workflow2{
    key application_id: Association to output;
    sites: Composition of many sites
        on sites.application_id = $self;
    mm_core_user{
        id: String(11);
        name: String(50);
        mail: String(50);
    };
    am_manager{
        id: String(11);
        name: String(50);
        mail: String(50);    
    };
    managers: Composition of many managers
        on managers.application_id = $self;
    site_fin{
        id: String(11);
        name: String(50);
        mail: String(50); 
    };
}

entity sites{
    key application_id: Association to workflow2;
    company : String(4);
    purchase_org: String(4);
}

entity managers{
    key application_id: Association to workflow2;
    seq: Integer;
    id: String(11);
    name: String(50);
    mail: String(50); 
};
