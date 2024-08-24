({
    handleMsg : function(component, event) {
        var msg=event.getParam('message')
        component.set("v.messagee",msg)

    }
})