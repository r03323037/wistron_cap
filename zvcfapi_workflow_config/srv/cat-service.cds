using vcf as vcf from '../db/index';

service CatalogService{

 entity workflow_config as projection on vcf.workflow_config;

 annotate workflow_config  @odata.draft.enabled ;
 

}

