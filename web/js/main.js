/**
 * Created by mukol on 17.04.2018.
 */
$(document).ready(function(){
    setProducts(); // список продуктів по загрузці

    $('#select-collection').on('change', function () {
       setProducts(); // список продуктів при зміні стану списку
    });
});

//Отримуємо поточне значення списку
function setProducts(){
    var option = $('#select-collection').val();
    var result = '';
    if(option == ''){
        result =  '';
    }
    else{
        result = getProducts(option);
    }


}

//Отримуємо список продуктів колекції і записуємо результат пошуку продуктів в блок
function getProducts(option){
    
    var url = $('#urlProductView').val();
    $.ajax({
        type : 'post',
        url : url,
        data:{
            'typeProduct' : option
        },
        success : function (data) {
            $('#products-container').html(data);
        },
        error:function (data) {
            alert('Щось пішло не так');
        }

    });

}