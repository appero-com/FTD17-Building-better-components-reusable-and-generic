({
	onCallApex : function(component, event, helper) {
        //get the method parameters
		var params = event.getParams().arguments;
        var controllerMethod = params.controllerMethod;
        var actionParameters = params.actionParameters;
        var successCallback = params.successCallback;
        helper.callApex(component, controllerMethod, actionParameters, successCallback);
	}
})