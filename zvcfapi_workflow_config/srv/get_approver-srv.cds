using vcf as vcf from '../db/index';

service GetApproverService
{
    function get_approver
    (
        application_id : String,
        applicant: String,
        vendor_account_group : String,
        company : String,
        purchase_org : String,
        supply_type : String,
        payment_term : String
    )returns output;

    entity output as projection on vcf.output;
}
