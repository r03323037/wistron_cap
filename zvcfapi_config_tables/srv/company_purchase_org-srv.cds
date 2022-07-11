using vcf as vcf from '../db/index';

@path: 'CompanyOrgService'
service CompanyOrgService {
    entity company_purchase_org as projection on vcf.company_purchase_org;
    
}