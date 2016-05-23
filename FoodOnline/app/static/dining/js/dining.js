// JavaScript Document
/* 包车出车*/
function get_dining_foods(dining_id,pagnum){
     
    $.ajax({
        type: 'GET',
        url:"/dining/get_dining_foods/" + dining_id+"/"+pagnum,
        dataType: 'text',
        success: function(res) {
            alert(res);
        },
        error: function(res) {
            console.log("Error");
            alert(res);
        },
        complete: function() {
            console.log("Complete");
        }
    });
  
}