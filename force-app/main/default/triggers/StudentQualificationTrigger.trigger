trigger StudentQualificationTrigger on student__c (Before insert ,before update) {
    StudentStatus.CheckQualification(trigger.new);

}