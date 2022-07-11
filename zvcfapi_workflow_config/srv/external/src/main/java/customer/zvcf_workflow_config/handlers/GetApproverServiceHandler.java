package customer.zvcf_workflow_config.handlers;

import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.draft.DraftService;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.messages.Messages;
import com.sap.cds.services.persistence.PersistenceService;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import cds.gen.getapproverservice.*;
import cds.gen.vcf.Input;
import cds.gen.vcf.Input_;

@Component
@ServiceName(GetApproverService_.CDS_NAME)
class GetApproverServiceHandler {

    private final DraftService getApproverService;

	private final PersistenceService db;

	private final Messages messages;

	private final CqnAnalyzer analyzer;

    GetApproverServiceHandler(@Qualifier(GetApproverService_.CDS_NAME) DraftService getApproverService, PersistenceService db,
    Messages messages, CdsModel model){
        this.getApproverService = getApproverService;
		this.db = db;
		this.messages = messages;

		// model is a tenant-dependant model proxy
		this.analyzer = CqnAnalyzer.create(model);

    }

    @On(entity = Input_.CDS_NAME)
    public void set_output(GetApproverContext context){
        String input_appliciant = context.getApplicant();
        String input_application_id = context.getApplicationId();
        String input_vendor_account_group = context.getVendorAccountGroup();
        String input_company = context.getCompany();
        String input_purchase_org = context.getPurchaseOrg();
        String input_supply_type = context.getSupplyType();
        String input_payment_term = context.getPaymentTerm();

        
    }


}
