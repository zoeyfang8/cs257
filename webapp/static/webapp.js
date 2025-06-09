window.addEventListener("load", initialize);

function initialize() {
    var element = document.getElementById('searchbutton');
    if (element) {
        element.onclick = onSearchButton;
        // element.value = '';
    }

    var mainhueElement = document.getElementById('mainhuebutton');
    if (mainhueElement) {
        mainhueElement.onclick = onMainhueButton;
    }

    var filterElement = document.getElementById('filterbutton');
    if (filterElement) {
       filterElement.onclick = onFilterButton;
    }

    var homeElement = document.getElementById('homebutton');
    if (homeElement) {
       homeElement.onclick = onHomeButton;
    }

    var suggestionsElement = document.getElementById('suggestions');
    if (suggestionsElement) {
        var url = getAPIBaseURL() + '/countries';
        
        fetch(url, {method: 'get'})

        .then((response) => response.json())


        .then(function(infoAboutCountries) {
            var body = ``
            for (i=0; i<infoAboutCountries.length; i++)
            {
                body+= `<option value="${infoAboutCountries[i]}"></option>`
            }
            suggestionsElement.innerHTML = body;
        })
        .catch(function(error) {
        console.log(error);
        });
    }
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function getBaseURL() {
    var baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port;
    return baseURL;
}

function onSearchButton() {
    
    var url = getAPIBaseURL() + '/country';
    var searchelement = document.getElementById('country_name_search');
    if (searchelement) {
        url += '/' + searchelement.value;
    }

    fetch(url, {method: 'get'})

    .then((response) => response.json())


    .then(function(finaldict) {
        searchelement.value = '';

        var body =''
        body = `<div class = "country"> 
                <div class="country_info">
                    <h2 id="single_title"> ${finaldict['Country Name']} </h2>
                    <p id="single_continent"> ${finaldict['continent']}</p>
                    <p id="single_area"> ${finaldict['area']}000 km<sup>2</sup></p>
                    <p> Flag Colors</p>`
        var element = document.getElementById('colorslist');
        var listBody = ''
        colorslist = finaldict['colors']
        for (i=0;i< colorslist.length; i++){
            console.log(colorslist[i])
            listBody +=  `<li> ${colorslist[i]} </li>\n`
        
        }
        body += listBody;  
        body +=  `<p> Main hue: ${finaldict['Mainhue']}</p>
                </div><div class="image_container">
                        <img class="single_image" src="${finaldict['flagimage']}">
                        </></div></>`        
        var element = document.getElementById('countryinfo');
        element.innerHTML = body;
        
    })

    .catch(function(error) {
        console.log(error);
    });


}


function onMainhueButton() {
     var element = document.getElementById('countryinfo');
    
    element.innerHTML = `<div class="body">
        <h2 class = "cctop"> View Flag Main Color  </h2>
        <p> Select a continent and view all its countries and their flags' main color! </p>
        <p>
            Tie-breaks decided by taking the topmost hue, if that fails then the most central hue, and if that fails the leftmost hue
        </p>

        <div>
            <form >
                <p id = "form"> Continent: 
                <select id = "continent_selection">
                    <option> North America </option>
                    <option> South America </option>
                    <option> Europe </option>
                    <option> Africa </option>
                    <option> Asia </option>
                    <option> Oceania </option>
                </select>
                </p>
            </form>
            <button class="ccsearch" id ="mainhuegobutton">
                    GO!
            </button>
        </div>

    </div>`;

    var mainhueGoElement = document.getElementById('mainhuegobutton');
    if (mainhueGoElement) {
        mainhueGoElement.onclick = onGoMainhueButton;
    }
        
}

function onGoMainhueButton() {
    var url = getAPIBaseURL() + '/mainhue';
    var element = document.getElementById('continent_selection');
    if (element) {
        url += '/' + element.value;
    }
    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(mainhue_list) {
        var body = `<div class="body">
        <p class = "cctop">View mainhues: Results  
                <button class ="new_search" id="mainhuenewsearch">
                        New Search
                </button>
        </p>
        <div class ="countriesgrid">`;
        var i =0;
        for (item in mainhue_list) {
            var currentItem = mainhue_list[i];
            body += ` 
            <div class = "grid_element"> 
               
                    <img class="flagimage" src = "${currentItem['image']}">
                    <div class = "mainhue_info">
                        <p class = "country_name">${currentItem['name']}</p>
                        <p class = "country_mainhue"> ${currentItem['mainhue']}</p>
                    </div>
               
            </div>`
            i++;
        }
        body += ' </div> </div>  </div>';

        var element = document.getElementById('countryinfo');
        element.innerHTML = body;

        var mainhueNewSearchElement = document.getElementById('mainhuenewsearch');
        if (mainhueNewSearchElement) {
            mainhueNewSearchElement.onclick = onMainhueButton;
        }

        onCountryClick();

    //     var gridElements = document.getElementsByClassName('grid_element');
    //     for (let i = 0; i < gridElements.length; i++){
    //         gridElements[i].onclick = function (){
    //             var countryName = gridElements[i].querySelector('.country_name');
    //             var url = getAPIBaseURL() + '/country';
    //             if (countryName) {
    //                 url += '/' + countryName.textContent;
    //             }

    //             fetch(url, {method: 'get'})

    //             .then((response) => response.json())


    //             .then(function(finaldict) {

    //                 var body =''
    //                 body = `<div class = "country"> 
    //                         <div class="country_info">
    //                             <h2 id="single_title"> ${finaldict['Country Name']} </h2>
    //                             <p id="single_continent"> ${finaldict['continent']}</p>
    //                             <p id="single_area"> ${finaldict['area']}000 km<sup>2</sup></p>
    //                             <p> Flag Colors</p>`
    //                 var element = document.getElementById('colorslist');
    //                 var listBody = ''
    //                 colorslist = finaldict['colors']
    //                 for (i=0;i< colorslist.length; i++){
    //                     console.log(colorslist[i])
    //                     listBody +=  `<li> ${colorslist[i]} </li>\n`
                    
    //                 }
    //                 body += listBody;  
    //                 body +=  `<p> Main hue: ${finaldict['Mainhue']}</p>
    //                         </div><div class="image_container">
    //                                 <img class="single_image" src="${finaldict['flagimage']}">
    //                                 </></div></>`        
    //                 var element = document.getElementById('countryinfo');
    //                 element.innerHTML = body;
    //                 searchelement.value = '';
                    
    //             })

    //             .catch(function(error) {
    //                 console.log(error);
    //             });    

    //         }
    //     }
    })

    .catch(function(error) {
        console.log(error);
    });

}

function onFilterButton() {
    var element = document.getElementById('countryinfo');
    
    element.innerHTML = `<div class="body">
    <h2 class="cctop">Color and Continent Search</h2>

    <h3>Select Colors:  </h3>

    <div id = "checkgrid">
        <div class = "indvcheck">
            <input type="checkbox" id="red" name="red" value="red">
            <label for="red"> Red</label>
        </div>
        <div class = "indvcheck">
            <input type="checkbox" id="blue" name="blue" value="blue">
            <label for="blue"> Blue</label>
        </div>
        <div class = "indvcheck">
            <input type="checkbox" id="green" name="green" value="green">
            <label for="green"> Green</label>
        </div>
        <div class = "indvcheck">
            <input type="checkbox" id="white" name="white" value="white">
            <label for="white"> White</label><br>
        </div>
        <div class = "indvcheck">
            <input type="checkbox" id="black" name="black" value="black">
            <label for="black"> Black</label>
        </div>
        <div class = "indvcheck">
            <input type="checkbox" id="gold" name="gold" value="gold">
            <label for="gold"> Gold</label>
        </div>
        <div class = "indvcheck">
            <input type="checkbox" id="orange" name="orange" value="orange">
            <label for="orange"> Orange</label><br>
        </div>
    </div>


    <h3>Select Continent:  
     <select name="continent" id="continent">
        <option value=" "> </option>
        <option value="Asia">Asia</option>
        <option value="Africa">Africa</option>
        <option value="North America">North America</option>
        <option value="South America">South America</option>
        <option value="Europe">Europe</option>
        <option value="Oceania">Oceania</option>
    </select></h3>

   
    
    <br>
    <br>
   
    <button class="ccsearch" id="filtergobutton">GO!</button>
    </div>`;

    var filterGoElement = document.getElementById('filtergobutton');
    if (filterGoElement) {
        filterGoElement.onclick = onGoFilterButton;
    }
}

function onGoFilterButton() {
    var url = getAPIBaseURL() + '/countries2?';

    var red = document.getElementById('red');
    if (red.checked) {
        url += 'color=' + red.value + '&';
    }
    var blue = document.getElementById('blue');
    if (blue.checked) {
        url += 'color=' + blue.value + '&';
    }
    var green = document.getElementById('green');
    if (green.checked) {
        url += 'color=' + green.value + '&';
    }
    var white = document.getElementById('white');
    if (white.checked) {
        url += 'color=' + white.value + '&';
    }
    var black = document.getElementById('black');
    if (black.checked) {
        url += 'color=' + black.value + '&';
    }
    var gold = document.getElementById('gold');
    if (gold.checked) {
        url += 'color=' + gold.value + '&';
    }
    var orange = document.getElementById('orange');
    if (orange.checked) {
        url += 'color=' + orange.value + '&';
    }

    var continent = document.getElementById('continent');
    if (continent) {
        url += 'continent=' + continent.value;
    } 

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(countriesList) {
        
        var body = `<p class="cctop">Color and Continent Search Results:
     
        <button class="new_search" id = "filternewsearch">New Search</button>
         </p>
         

        <div class="body">
        <div class="countriesgrid">`
        

        for (i=0; i<countriesList.length; i++) {
            var currentItem = countriesList[i];
            body += `<div class="grid_element">
                <img class="flagimage" src="${currentItem['image']}">
                <h3 class="country_name">${currentItem['name']}</h3>
            </div>`
        }

        body += `</div> </div>`

        var element = document.getElementById('countryinfo');
        element.innerHTML = body;

        var filterNewSearchElement = document.getElementById('filternewsearch');
        if (filterNewSearchElement) {
            filterNewSearchElement.onclick = onFilterButton;
        }

        onCountryClick();
    })

    .catch(function(error) {
        console.log(error);
    });
}

function onCountryClick(){
        var gridElements = document.getElementsByClassName('grid_element');
        for (let i = 0; i < gridElements.length; i++){
            gridElements[i].onclick = function (){
                var countryName = gridElements[i].querySelector('.country_name');
                var url = getAPIBaseURL() + '/country';
                if (countryName) {
                    url += '/' + countryName.textContent;
                }

                fetch(url, {method: 'get'})

                .then((response) => response.json())


                .then(function(finaldict) {

                    var body =''
                    body = `<div class = "country"> 
                            <div class="country_info">
                                <h2 id="single_title"> ${finaldict['Country Name']} </h2>
                                <p id="single_continent"> ${finaldict['continent']}</p>
                                <p id="single_area"> ${finaldict['area']}000 km<sup>2</sup></p>
                                <p> Flag Colors</p>`
                    var element = document.getElementById('colorslist');
                    var listBody = ''
                    colorslist = finaldict['colors']
                    for (i=0;i< colorslist.length; i++){
                        console.log(colorslist[i])
                        listBody +=  `<li> ${colorslist[i]} </li>\n`
                    
                    }
                    body += listBody;  
                    body +=  `<p> Main hue: ${finaldict['Mainhue']}</p>
                            </div><div class="image_container">
                                    <img class="single_image" src="${finaldict['flagimage']}">
                                    </></div></>`        
                    var element = document.getElementById('countryinfo');
                    element.innerHTML = body;
                    searchelement.value = '';
                    
                })

                .catch(function(error) {
                    console.log(error);
                });    

            }
        }



}

function onHomeButton() {
    var element = document.getElementById('countryinfo');
    
    element.innerHTML = `<h2 class="cctop">Welcome to the Flags and Countries website! You can search by country and flags using 
        information about the colors and continent. </h2>
        <img id = "worldmap" src="https://upload.wikimedia.org/wikipedia/commons/b/b1/Globe_Atlantic.svg">`
}
