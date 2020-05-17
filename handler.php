<?php
//connexion a la BDD
$db = new PDO("mysql:host=localhost;dbname=web_apps;charset=utf8","root","",
[PDO::ATTR_ERRMODE => PDO:: ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC]);

// Analyser la demande faite via l'url GET afn de determiner si on recupere ou ecrit des donnees
$task = "list";

if(array_key_exists("task",$_GET)){
    $task = $_GET['task'];
}

if ($task == "write") {

   postMessage();

}else{

    getMessages();
}

function getMessages(){
    global $db;
    //on recupere les 20 derniers messages
    $resultats = $db->query("SELECT * FROM messages ORDER BY send_date DESC LIMIT 20");
    //on traite les resultats
    $messages = $resultats->fetchAll();
    //on affiche les donnees sous forme de format json sachant que $messages est l'array qui contient nos messages
    echo json_encode($messages);
}

function postMessage(){
    global $db;
    //Analyser les parametres passes en POST

    //au cas ou les deux cles n'existent pas
    if (!array_key_exists('author',$_POST) || !array_key_exists('content',$_POST)) {
        echo json_encode(['status'=>'error','message'=>'your datas have not been sent']);
        return;
    }

    $author = $_POST['author'];
    $content = $_POST['content'];
    //Inserer ces donnees par un request
    $query = $db->prepare("INSERT INTO messages SET author = :author, content= :content, send_date = NOW()");
    $query->execute(["author" =>$author,"content" => $content]);
    //donner un statut de success au format json
    echo json_encode(['message'=>'success']);

}