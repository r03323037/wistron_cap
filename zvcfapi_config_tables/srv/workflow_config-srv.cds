using vcf as vcf from '../db/index';

@path: 'WorkflowConfig'
service WorkflowConfigService {
    entity workflow_config as projection on vcf.workflow_config;
}

