function statuServico(){
    let dataHora = new Date();
    dataHora.getDate();

    let VH = dataHora.getHours()
    let VM = dataHora.getMinutes()
    let abertura = 10;

    let retornoFuncionamentoH = (VH - abertura)
    let retornoFuncionamento = (60 - VM)

    if(VH > 21 || VH < 12){
         document.getElementById('statuServico').innerHTML = `Estamos Fechado, abriremos em ${retornoFuncionamentoH}:${retornoFuncionamento}`;
        document.getElementById('statuServico').style.backgroundColor = 'red' 
        document.getElementById('statuServico').style.padding = '10px' 
        document.getElementById('statuServico').style.borderRadius = '10px' 
        document.getElementById('statuServico').style.color = 'white'
    }else{
        document.getElementById('statuServico').innerHTML = 'Em funcionamento'
        document.getElementById('statuServico').style.backgroundColor = '#12F300' 
        document.getElementById('statuServico').style.padding = '10px' 
        document.getElementById('statuServico').style.borderRadius = '10px' 
        document.getElementById('statuServico').style.color = 'black' 
    }
}