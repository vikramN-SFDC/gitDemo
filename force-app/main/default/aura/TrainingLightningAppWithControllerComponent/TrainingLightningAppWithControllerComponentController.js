({
    GetOutLookName : function(component) {
        var vFirstName = component.find("FName").get("v.value");
        var vLastName = component.find("LName").get("v.value");
        var OutputNameElement=component.find("NameToDisplay");
        
        OutputNameElement.set("v.value",'OutLook Name::' +vLastName+','+vFirstName);

		
	}
})