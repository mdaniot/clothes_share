import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application


(function(){ var widget_id = 'eHd8XPVC4T';var d=document;var w=window;function l(){
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true;
s.src = '//code.jivosite.com/script/widget/'+widget_id
; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}
if(d.readyState=='complete')
{l(); console.log(1)}else{
  if(w.attachEvent){
    w.attachEvent('onload',l);
    console.log(2)
  }
else{
  console.log(3);
  w.addEventListener('load',l,false);}}})();


export { application }
