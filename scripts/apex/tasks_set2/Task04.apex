/*
4. Write an Apex that store caseStatus as String 
   - if  caseStatus is New print 'Case need attention'
   - if  caseStatus is Working print 'Case in progress'
   - if  caseStatus is Escalated print 'Case need to be reassigned and manager need to be notified'
   - if  caseStatus is  print 'Case has been resolved'
*/

String caseStatus = 'Escalated';

switch on caseStatus{
    when  'New'{
        System.debug('Case need attention');
    }
    when 'Working'{
        System.debug('Case in progress');
    }
     when 'Escalated'{
        System.debug('Case need to be reassigned and manager need to be notified');
    }
     when 'Closed'{
        System.debug('Case has been resolved');
    }
    when else{
        System.debug('Nothing is match, invaled case status');
    }

}