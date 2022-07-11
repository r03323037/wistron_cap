namespace zvcf;

entity application_log_general {
    key application_no       : String(13) not null;
    key pic_id               : String(11) not null;
    key appliciant_id        : String(11) not null;
        application_status   : String not null;
        pic                  : String not null;
        appliciant           : String not null;  
        application_date     : Date not null;
        comment              : String;
        reason               : String;
        vendor_account_group : String(4) not null;
        vendor_code          : String(10) not null;
        vendor_name1         : String(35) not null;
        vendor_name2         : String(35);
        vendor_address1      : String(40) not null;
        vendor_address2      : String(40);
        vendor_address3      : String(40);
        vendor_address4      : String(40);
        vendor_address5      : String(40);
        search_term1         : String(20) not null;
        search_term2         : String(20) not null;
        post_code            : String(10);
        country_key          : String(2) not null;
        language_key         : String(2) not null;
        vat_no               : String(20);
        tax_no1              : String(16);
        city                 : String(35) not null;
        telephon             : String(16) not null;
        fax                  : String(31) not null;
        reigon               : String(3);
}

entity application_log_company {
    key application_no       : String(13) not null;
    key pic_id               : String(11) not null;
    key appliciant_id        : String(11) not null;
        application_status   : String not null;
        pic                  : String not null;
        appliciant           : String not null;  
        application_date     : Date not null;
        comment              : String;
        reason               : String;
        origin_application_no: String(13);
    key company              : String(4) not null;
        supply_type          : String(5) not null;
        payment_term         : String(4) not null;
        payment_method       : String(1) not null;
        recon_account        : String(10) not null;
        language_key         : String(2) not null;
        bank_currency        : String(5) not null;
        bank_wift_code       : String(15) not null;
        bank_account         : String(33) not null;
        beneficiary_name     : String(70) not null;
        beneficiary_name12   : String(50);
        info                 : String(35);
        contact_person       : String(70);
        contact_email        : String(50);
        bank_currency2       : String(5);
        bank_wift_code2      : String(15);
        bank_account2        : String(33);
        beneficiary_name2    : String(70);
        beneficiary_name22   : String(50);
        info2                : String(35);
        contact_person2      : String(70);
        contact_email2       : String(50);
}

entity application_log_purchase_org {
    key application_no       : String(13) not null;
    key pic_id               : String(11) not null;
    key appliciant_id        : String(11) not null;
        application_status   : String not null;
        pic                  : String not null;
        appliciant           : String not null;  
        application_date     : Date not null;
        comment              : String;
        reason               : String;
        origin_application_no: String(13);
    key purchase_org         : String(4) not null;
        po_currency          : String(3) not null;
        supply_type          : String(5) not null;
        payment_term         : String(4) not null;
        pr_type              : String(3);
        inco_tem1            : String(3) not null;
        inco_term2           : String(5) not null;
        tax_code             : String(2) not null;
        language_key         : String(2) not null;
}