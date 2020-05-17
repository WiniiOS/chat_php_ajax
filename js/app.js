
//recuperer et afficher nos messages (GET)
function getMessages() {

    const xhr = new XMLHttpRequest();
    xhr.open("GET","handler.php");
    xhr.onload = function (){
        let resultat = JSON.parse(xhr.responseText);
        const html = resultat.reverse().map(function (message) {
            return `<div class="message">
                    <span class="date">${message.send_date.substring(11,16)}</span>
                    <span class="author">${message.author}:</span>
                    <span class="content">${message.content}</span>
                    </div>`;
        }).join(" ");

        const messages = document.querySelector('.messages');
        messages.innerHTML = html;
        //fixer la taille du scroll
        messages.scrollTop = messages.scrollHeight;
    }
    xhr.send();
}

// Poster un message
const form =  document.querySelector('form');
function postMessages(event) {
    
    event.preventDefault();
    const content = document.querySelector("#content");
    let data = new FormData(form);
    const xhr = new XMLHttpRequest();
    xhr.open("POST","handler.php?task=write");

    xhr.onload = function (){

        content.value ='';
        content.focus();
        getMessages();
    }
    xhr.send(data);
}

form.addEventListener("submit",postMessages);
const tempsReel = window.setInterval(getMessages,2500);
getMessages();