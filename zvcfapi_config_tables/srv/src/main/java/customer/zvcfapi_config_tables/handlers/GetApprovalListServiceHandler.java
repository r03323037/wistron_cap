package customer.zvcfapi_config_tables.handlers;

import java.util.List;

import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

import org.springframework.stereotype.Component;
import cds.gen.getapprovallistservice.*;
//import cds.gen.vcf.*;
import cds.gen.getapprovallistservice.Input.CompanyPurchase;



@Component
@ServiceName(GetApprovalListService_.CDS_NAME)
public class GetApprovalListServiceHandler implements EventHandler {
    
    private final CqnAnalyzer analyzer;

    GetApprovalListServiceHandler(CdsModel model){
        this.analyzer = CqnAnalyzer.create(model);
    }

    @On(event = GetApprovalListContext.CDS_NAME)
    public void setResult(GetApprovalListContext context){
        Input input = Input.create();
        String ApplicationID = context.getInput().getApplicationId();
        String VendorAccountGroup = context.getInput().getVendorAccountGroup() ;
        String Appliciant = context.getInput().getApplicant();
        List<CompanyPurchase> Site = context.getInput().getCompanyPurchase();
    
    //Get Approval List by input
        //Get Appliciant HR data
        //Call HR data


        //get Superior from HR
        //Use Appliciant.Superior to call HR Data

        //Call Workflow config
            //1. HQ_BA -> Check by Vendor Account Group -> Get ID
            //2. HQ FIN -> get ID
            //3. (workflow2) MM core User -> Check Vendor Account Group -> Get ID by Pur_Org 
            //4. (workflow2) MRO Manager -> Check MRO flag = Y -> Get ID by Pur_Org 
                // Post business rule destination: BUSINESS_RULES/rest/v2/workingset-rule-services
            //5. (workflow2) Site FIN -> Get ID by Company + Pur_Org 
            //TBD add "AM manager" collumn to application UI -> Get HR data by input.AmManager
        

        
    //Set return Approval List
        ApprovalList approvallist = ApprovalList.create();
        approvallist.setApplicationId(ApplicationID);
        //approvallist.setWorkflow1Applicant(workflow1Applicant);
        //approvallist.setWorkflow1Supervisor(workflow1Supervisor);
        //approvallist.setWorkflow1MroManager(workflow1MroManager);
        //approvallist.setWorkflow1HqFin(workflow1HqFin);
        //approvallist.setWorkflow1HqBu(workflow1HqBu);
        //approvallist.setWorkflow2(workflow2);

        context.setResult(approvallist);
        context.setCompleted();
       
    }
    @On(event = TestReturnContext.CDS_NAME)
    public void testReturn(TestReturnContext context){
        TestReturnE re_string = TestReturnE.create();
        re_string.setReString(context.getInput().getApplicationId());
        context.setResult(re_string);
        context.setCompleted();
    }
 
    
}

