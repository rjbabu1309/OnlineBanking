$(window).on('scroll',function(){
                if($(window).scrollTop()){
                    $('nav').addClass('black');
                }
                else{
                    $('nav').removeClass('black');
                }
            });
            $(document).ready(function(){
	
	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('#scrollToTop').fadeIn();
		} else {
			$('#scrollToTop').fadeOut();
		}
	});
	
	//Click event to scroll to top
	$('#scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});
	
});
/////MAP
function initMap(){
    var uluru = {lat: 26.496854, lng: 80.266605};
    var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,
          center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}


setInterval(imgLoad,2000);
var rj=0;
function imgLoad(){
    rj=rj+1;
    if(rj%2==0){
     document.getElementById("myImg").src = "bg2.jpg";
        
    }
    else{
             document.getElementById("myImg").src = "bg1.jpg";

    }
}

setInterval(alertFunc, 100);
var int=10;
function alertFunc() {
    int=int+1;
    if(int%2==0){
  document.getElementById("fi").style.color="red";
        document.getElementById("loan").style.backgroundColor="red";
    }
    else{
  document.getElementById("fi").style.color="green";
       
    }
}
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 3000);
}

function showPage() {
    fun();
}
function fun(){
      document.getElementById("loader").style.display = "none";

  document.getElementById("myDiv").style.display = "block";
}