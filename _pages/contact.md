---
layout: page
title: Contact
desc: Vragen? Of gewoon een berichtje
permalink: /contact/
adallow: 0
---

Wil je wat kwijt of wat vragen? Neem contact op! Wij zouden dat erg leuk vinden!


<form id="contact-form" class="form-horizontal" action="https://getsimpleform.com/messages?form_api_token=b6d4be9b039b666b3311e1ddcbfb577c" method="POST" enctype="multipart/form-data">
       <fieldset>
       
            <div class="form-group">
                <label class="col-lg-2 control-label" for="name">Name:</label>
                <div class="col-lg-10">
                <input type="text" placeholder="Naam" id="name" class="form-control" name="name" tabindex="1"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 control-label" for="email">Email:</label>
                <div class="col-lg-10">
                <input type="email" placeholder="Email" id="email" class="form-control" name="email" tabindex="2"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 control-label" for="message">Message:</label>
                <div class="col-lg-10">
                <textarea class="contact-textarea" placeholder="Het bericht" class="form-control" rows="4" id="message" name="message" tabindex="3"></textarea>
                </div>
            </div>
            
           <div class="form-group"> 
           <div class="col-lg-10 col-lg-offset-2">  
         <input type="submit" class="btn btn-primary" value="Send" id="submit"/>
         </div>
         </div>
        <input type="hidden" name='redirect_to' value="http://test.micheltol.nl/thank-you/" />
    </fieldset>  
</form>