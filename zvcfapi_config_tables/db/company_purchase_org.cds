namespace vcf;

entity company_purchase_org {
    key company : String(4) not null;
    key purchase_org : String(4) not null;
        site : String(4);
}

