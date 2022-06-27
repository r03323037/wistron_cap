using zvcf as zvcf from '../db/data-model';

service ApplicationLogService {
    entity ApplicationLogGeneral as projection on zvcf.application_log_general;
    entity ApplicationLogCompany as projection on zvcf.application_log_company;
    entity ApplicationLogPurchaseOrg as projection on zvcf.application_log_purchase_org;

    annotate ApplicationLogGeneral with @odata.draft.enabled;
    annotate ApplicationLogCompany with @odata.draft.enabled;
    annotate ApplicationLogPurchaseOrg with @odata.draft.enable
    
}
