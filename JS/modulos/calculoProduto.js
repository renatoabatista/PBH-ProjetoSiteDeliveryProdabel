function calcularTamanhoPreco(idproduto){
    let tamanhoSelecionado = parseFloat(document.getElementById('tamanhoProduto').value);
    let qtdProduto = parseInt(document.getElementById('qtdProduto').value)
    let precoProduto = 0;
    if(tamanhoSelecionado){
        if(tamanhoSelecionado == 500){
            precoProduto = 35.90;
            document.getElementById('P1').innerHTML = `R$ ${precoProduto.toFixed(2).replace('.',',')}`
        }else if(tamanhoSelecionado == 800){
            precoProduto = 45.99;
            document.getElementById('P1').innerHTML = `R$ ${precoProduto.toFixed(2).replace('.',',')}`
        }else{
            precoProduto = 29.99;
            document.getElementById('P1').innerHTML = `R$ ${precoProduto.toFixed(2).replace('.',',')}`
        }
    }
    return console.log(tamanhoSelecionado, qtdProduto , precoProduto)
}

function preCarrinho(tamanhoSelecionado, qtdProduto, precoProduto){
    calcularTamanhoPreco(tamanhoSelecionado, qtdProduto, precoProduto)
}


