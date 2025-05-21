window.addEventListener("load", initialize);

function initialize() {
    var element = document.getElementById('searchbutton');
    console.log("hi")
    if (element) {
        element.onclick = onSearchButton;
    }
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function onSearchButton() {
    var url = getAPIBaseURL() + '/country';
    var element = document.getElementById('country_name_search');
    console.log(element)
    console.log("hi")
    if (element) {
        url += '/' + element.value;
    }

    fetch(url, {method: 'get'})

    // window.location.replace(url)

    .then((response) => response.json())

    .then(function(finaldict) {
        var listBody = '';
        for (const key in finaldict) {
            const value = finaldict[key];
            thekey = key;
            thevalue = value;
            listBody +=  `<li> ${thekey} : ${thevalue} </li>\n`;
        }

        var element = document.getElementById('countryinfo');
       
        
        element.innerHTML = listBody;
        
    })

    .catch(function(error) {
        console.log(error);
    });
}
