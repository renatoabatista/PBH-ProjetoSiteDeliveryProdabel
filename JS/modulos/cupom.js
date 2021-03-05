function ativarCupom(){
    let cupomDigitadoAtivado = document.getElementById('cupom').value
    let cupom = ['#10', '#20', 'Teste', '#RENATO', 'OK', 'ok', 'prodabel']

    for(let i = 0; i < cupom.length; i++){
        if(cupom[i] == cupomDigitadoAtivado){
            console.log("achei")
            document.getElementById('cupom').value = `CUPOM DE :R$ ${cupom[i]} ATIVADO`
        }
    }
}