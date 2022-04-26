/* var-> de escopo global
    let-> de escopo local
    const-> escopo global, mas é constante e não muda, pouco usada*/

/* por Tag: getElementByTagName()
    por Id: getElementById()
    por nome: getElementByName()
    por classe: getELementsByClassName()
    por seletor: querySelector() */

    let nome = window.document.getElementById('nome')
    let email = document.querySelector('#email') //se fosse uma classe seria '.email' e por aí vai
    let relato = document.querySelector('#relato')
    let nomeOk = false
    let emailOk = false
    let relatoOk = false
    let mapa = document.querySelector('#mapa')

    nome.style.width = '100%'
    email.style.width = '100%'
   
    function validaNome() {
        let txtNome = document.querySelector('#txtNome')
        if (nome.value.length < 3) {
            txtNome.innerHTML = 'Nome Inválido'
            txtNome.style.color = 'red'
        } 
        else{
            txtNome.innerHTML = 'Nome Válido'
            txtNome.style.color = 'green'
            nomeOk = true
        }
    
    }

    function validaEmail(){
        let txtEmail = document.querySelector('#txtEmail')
        if (email.value.indexOf('@') == -1 || email.value.indexOf('.') == -1) {
            txtEmail.innerHTML = 'Email inválido'
            txtEmail.style.color = 'red'
        } else {
            txtEmail.innerHTML = 'Email válido'
            txtEmail.style.color = 'green'
            emailOk=true
        }
        
    }

    function validaRelato(){
        let txtRelato = document.querySelector('#txtRelato')
        if (relato.value.length >= 10) {
            txtRelato.innerHTML = 'Limite de caracter excedido. Máximo 100'
            txtRelato.style.color = 'red'
            txtRelato.style.display = 'block'
        } else {
            txtRelato.style.display = 'none'
            relatoOk=true
        }  
    }

    function enviar(){
        if (nomeOk == true && emailOk == true && relatoOk==true) {
            alert('Formuláro enviado com sucesso')
        } else {
            alert('Corrija o formulário para enviá-lo')
        }
    }

    function mapaZoom(){
        mapa.style.width= '800px'
        mapa.style.height= '600px'
    }

    function mapaNormal(){
        mapa.style.width= '450px'
        mapa.style.height= '300px'
    }