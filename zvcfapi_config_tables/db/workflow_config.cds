namespace vcf;
using { cuid } from '@sap/cds/common';

entity workflow_config: cuid {
  pic            : String(11) not null;
  company        : String;
  purchase_org   : String;
  workflow_stage : String not null;
  vendor_account_group : String(4);
  catgory: String;
}