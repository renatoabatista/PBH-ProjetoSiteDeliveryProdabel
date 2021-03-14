function ativarCupom(){
    let cupomDigitadoAtivado = document.getElementById('cupom').value
    let valorCupom = 0;
    let cupom = ['#10', '#20', '#RENATO', 'PRIMEIRACOMPRA','PRODABEL', 'MONTREAL']
    for(let i = 0; i < cupom.length; i++){
        if(cupom[i] == cupomDigitadoAtivado){
            switch(cupom[i]){
                case '#10':
                valorCupom = 10;
                break
                case '#20':
                valorCupom = 20;
                break
                default:
                case '#RENATO':
                valorCupom = 50;
                break
                case 'PRIMEIRACOMPRA':
                valorCupom = 15;    
                break
                case 'prodabel':
                valorCupom = 60;
                break
                case 'Montreal':
                valorCupom = 100;
                break
            }
            document.getElementById('cupom').value = `Ganhou R$ ${valorCupom.toFixed(2).replace('.',',')}`
            document.getElementById('cupom').disabled = true 
            return valorCupom;
        }
    }
}
/* CRIAR UM MODAL INCIAL PARA MOSTRAR O CUPOM DE DESCONTO DO DIA */