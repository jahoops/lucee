$(function(){
    $('#testBtn').on('click',function(){
        $('#testDiv').html(cf.app + ':' + cf.url);
    });
});