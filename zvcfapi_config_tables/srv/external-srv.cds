using { commtable as external } from './external/commtable';

service HrService {

    entity hrEmployee as projection on external.HrEmployee;
    entity hrDepartment as projection on external.HrDepartment;
    entity hrDepartCoHead as projection on external.HrDepartCoHead;

}