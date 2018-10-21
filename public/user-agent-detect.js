// From http://stackoverflow.com/questions/11381673/detecting-a-mobile-browser 2017-02-05

window.onload = userAgentDetect;
function userAgentDetect() {
  if(window.navigator.userAgent.match(/Mobile/i)
  || window.navigator.userAgent.match(/iPhone/i)
  || window.navigator.userAgent.match(/iPod/i)
  || window.navigator.userAgent.match(/IEMobile/i)
  || window.navigator.userAgent.match(/Windows Phone/i)
  || window.navigator.userAgent.match(/Android/i)
  || window.navigator.userAgent.match(/BlackBerry/i)
  || window.navigator.userAgent.match(/webOS/i)) {
    alert('You might have a better experience playing "Get Fluffy!" on a desktop browser.');
    //document.body.className+=' mobile';
    //alert('Due to the lack of a physical keyboard, playing "Get Fluffy!" on mobile devices may be less than optimal\nnavigator.userAgent="'+navigator.userAgent+'"');
  //} else {
    //alert('False - Mobile - ' + navigator.userAgent);
    //return false;
  }
  if(window.navigator.userAgent.match(/Tablet/i)
  || window.navigator.userAgent.match(/iPad/i)
  || window.navigator.userAgent.match(/Nexus 7/i)
  || window.navigator.userAgent.match(/Nexus 10/i)
  || window.navigator.userAgent.match(/KFAPWI/i)) {
    alert('You might have a better experience playing "Get Fluffy!" on a desktop browser.');
    //document.body.className-=' mobile';
    //document.body.className+=' tablet';
    //alert('Due to the lack of a physical keyboard, playing "Get Fluffy!" on tablets may be less than optimal\nnavigator.userAgent="'+navigator.userAgent+'"');
  //} else {
    //alert('False - Tablet - ' + navigator.userAgent);
    //return false;
  }
}
