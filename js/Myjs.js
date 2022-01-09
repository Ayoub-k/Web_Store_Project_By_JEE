function GetAbout(event){
    $("[class*='nav-link']").removeClass('active');
    $(event.target).addClass('active');
    $('#content__div').html($('#about__code').html());
    $('#BigSlider').html($('#SmallSlider').html());
}

function GetContact(event){
    $("[class*='nav-link']").removeClass('active');
    $(event.target).addClass('active');
    $('#content__div').html($('#contact__code').html());
    $('#BigSlider').html($('#SmallSlider').html());
}

var folder = "/home/ay/HomeWork/Projects/images";

$.ajax({
    type: "GET",
    url : folder,
    async:true,
    crossDomain:true,
    success: function (data) {
        console.log(data);
    }
});


