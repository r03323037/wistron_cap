namespace vcf;

entity workflow_config {
  key u_id       : UUID;
  pic            : String(11) not null;
  company        : String;
  purchase_org   : String;
  workflow_stage : String not null;
  vendor_account_group : String(4);
  catgory: String;
}