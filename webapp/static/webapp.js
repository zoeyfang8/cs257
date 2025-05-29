window.addEventListener("load", initialize);

function initialize() {
    var element = document.getElementById('searchbutton');
    if (element) {
        element.onclick = onSearchButton;
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
    var element = document.getElementById('country_name_search');
    if (element) {
        url += '/' + element.value;
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
        
    })

    .catch(function(error) {
        console.log(error);
    });
}


function onMainhueButton() {
     var element = document.getElementById('countryinfo');
    
    element.innerHTML = `<div class="body">
        <p class = "cctop"> View mainhues  </p>
        <p> Select a continent and view all its countries and their flags mainhue! </p>
        <p>
            The mainhue is the predominant colour in the flag (tie-breaks decided by taking the topmost hue, if that fails then the most central hue, and if that fails the leftmost hue)
        </p>

        <div>
            <form>
                Continent: 
                <select id = "continent_selection">
                    <option> North America </option>
                    <option> South America </option>
                    <option> Europe </option>
                    <option> Africa </option>
                    <option> Asia </option>
                    <option> Oceania </option>
                </select>
                <br>
                <br>
            </form>
            
            
            <button id ="go_button">
                    GO!
            </button>
                

    </div>

    </div>`;

    var mainhueGoElement = document.getElementById('go_button');
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
    })

    .catch(function(error) {
        console.log(error);
    });

}

function onFilterButton() {
    var element = document.getElementById('countryinfo');
    
    element.innerHTML = `<h2 class="cctop">Color and Continent Search</h2>

    <h3>Select Colors:  </h3>

    <input type="checkbox" id="red" name="red" value="red">
    <label for="red"> Red</label>
    <input type="checkbox" id="blue" name="blue" value="blue">
    <label for="blue"> Blue</label>
    <input type="checkbox" id="green" name="green" value="green">
    <label for="green"> Green</label>
    <input type="checkbox" id="white" name="white" value="white">
    <label for="white"> White</label><br>
    <input type="checkbox" id="black" name="black" value="black">
    <label for="black"> Black</label>
    <input type="checkbox" id="gold" name="gold" value="gold">
    <label for="gold"> Gold</label>
    <input type="checkbox" id="orange" name="orange" value="orange">
    <label for="orange"> Orange</label><br>


    <h3>Select Continent:  </h3>

    <select name="continent" id="continent">
        <option value=" "> </option>
        <option value="Asia">Asia</option>
        <option value="Africa">Africa</option>
        <option value="North America">North America</option>
        <option value="South America">South America</option>
        <option value="Europe">Europe</option>
        <option value="Oceania">Oceania</option>
    </select>
    
    <br>
    <br>
   
    <button class="ccsearch" id="filtergobutton">Go!</button>`;

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
        var body = `<h2 class="cctop">Color and Continent Search Results:
            <button class="new_search" id = "filternewsearch">New Search</button>
     
         </h2>

        <div class="body">
        <div class="countriesgrid">`
        

        for (i=0; i<countriesList.length; i++) {
            var currentItem = countriesList[i];
            body += `<div class="indvgrid">
                <img class="flagimage" src="${currentItem['image']}">
                <h3 class="flagcountryname">${currentItem['name']}</h3>
            </div>`
        }

        body += `</div> </div>`

        var element = document.getElementById('countryinfo');
        element.innerHTML = body;

        var filterNewSearchElement = document.getElementById('filternewsearch');
        if (filterNewSearchElement) {
            filterNewSearchElement.onclick = onFilterButton;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

function onHomeButton() {
    var element = document.getElementById('countryinfo');
    
    element.innerHTML = `<h2 class="cctop">Welcome to the Flags and Countries website! You can search by country and flags using 
        information about the colors and continent. </h2>
        <img id = "worldmap" src="https://upload.wikimedia.org/wikipedia/commons/1/17/World.svg">`
}