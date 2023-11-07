var Request = function() {  
	
	this.getParameter = function(name) {  
            var rtnval = '';  
            var nowAddress = unescape(location.href);  
            var parameters = (nowAddress.slice(nowAddress.indexOf('?') + 1,  
                    nowAddress.length)).split('&');  
            for (var i = 0; i < parameters.length; i++) {  
                var varName = parameters[i].split('=')[0];  
                if (varName.toUpperCase() == name.toUpperCase()) {  
                    rtnval = parameters[i].split('=')[1];  
                    break;  
                }  
            }
            
            return rtnval;  
        }
	
    }

    var request = new Request();

    var paramValue = request.getParameter('srch_menu_nix');

	if(typeof paramValue == "undefined" || paramValue == null || paramValue == ""){
		location.href='https://www.stop.or.kr';
	}
