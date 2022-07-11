package customer.zvcf_workflow_config.handlers.external;

import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.ServiceName;


import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

import cds.gen.get_hrdata.*;

@Component
@Profile("!cloud")
@ServiceName(value = { GetHrdata_.CDS_NAME })
public class ExternalEventHandler implements EventHandler {
    
  

}
