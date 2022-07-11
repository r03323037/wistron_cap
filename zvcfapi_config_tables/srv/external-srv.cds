using { commtable as external } from './external/commtable';

service get_hrdata {

    entity hrdatas as projection on external.HrDatas;

}