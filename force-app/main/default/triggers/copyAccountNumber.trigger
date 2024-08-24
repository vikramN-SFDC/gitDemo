trigger copyAccountNumber on Case (after insert) {
   copyAccountnumberHanlder.copyConNumber(trigger.new);
    

}