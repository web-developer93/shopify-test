/**
 * Created by mukol on 17.04.2018.
 */
$(document).ready(function(){
    setProducts(); // список продуктів по загрузці

    $('#select-collection').on('change', function () {
       setProducts(); // список продуктів при зміні стану списку
    });
});

//Отримуємо поточне значення списку і записуємо результат пошуку продуктів в блок
function setProducts(){
    var option = $('#select-collection').val();
    var result = '';
    if(option == ''){
        result =  '';
    }
    else{
        result = getProducts(option);
    }
    $('#products-container').html(result);

}

//Отримуємо список продуктів колекції
function getProducts(option){
    var result = '';
    var url = $('#urlProductView').val();
    $.ajax({
        type : 'post',
        url : url,
        async: false,
        data:{
            'typeProduct' : option
        },
        success : function (data) {
            result = data;
        }
    });
    return result;
}