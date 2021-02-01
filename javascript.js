function Enviar() {
    var nome = document.getElementById("nomeid");

    if(nome.value != "") {
        alert('Obrigado Sr(a)'+ nome.value + 'sua mensagem foi enviada com sucesso"!');
    }
    else {
        alert('Informe seu nome');
    }



}