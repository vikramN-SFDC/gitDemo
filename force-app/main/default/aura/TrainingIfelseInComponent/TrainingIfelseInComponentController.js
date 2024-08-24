({
	GetEligibility : function(component) {
		var vAge=component.find("Age").get("v.value") ;
        
        if(vAge>=18)
            component.set("EligibleOrNot",true);
            else
            component.set("EligibleOrNot",false);

	}
})