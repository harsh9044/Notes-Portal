function bookSearch(){
       var search = document.getElementById('search').value
document.getElementById('results').innerHTML = ""
console.log(search)

$.ajax({
url: "https://www.googleapis.com/books/v1/volumes?q=" + search,
          dataType: "json",
         success: function(data) {
var url =''; 
var img ='';
var title ='';
var author ='';
             for(i=0;i< data.items.length; i++){
title = $('<h5 class="centre-align black-text">' +data.items[i].volumeInfo.title + '</h5>');
author = $('<h5 class="centre-align black-text">' +data.items[i].volumeInfo.authors + '</h5>');
img = $('<img class="aligning card z-depth-5" id="dynamic"><br><a href=' + data.items[i].volumeInfo.infoLink + '><button id="imagebutton" class="btn red aligning">Read More</button></a>');
url = data.items[i].volumeInfo.imageLinks.thumbnail;
img.attr('src',url);
title.appendTo("#results");
        author.appendTo("#results");
        img.appendTo("#results");
}
},

         type: 'GET'
     }); 
}

document.getElementById('button').addEventListener('click', bookSearch, false)

