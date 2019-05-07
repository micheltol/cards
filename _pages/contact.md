---
layout: page
title: Contact
description: Vragen? Of gewoon een berichtje
permalink: /contact/
---

Wil je wat kwijt of wat vragen? Neem contact op! Wij zouden dat erg leuk vinden!

<form name="contact" id="contact-form" class="form-horizontal" method="POST" data-netlify="true" netlify-honeypot="bonus" action="/thank-you/">
       <fieldset>
            <div class="form-group hidden">
                <label for="bonus">bonus</label>
                <input type="text" class="form-control" id="bonus" name="bonus" placeholder="Bonus">
            </div>
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
                <label class="col-lg-2 control-label" for="message">Bericht:</label>
                <div class="col-lg-10">
                <textarea class="contact-textarea" placeholder="Het bericht" class="form-control" rows="4" id="message" name="message" tabindex="3"></textarea>
                </div>
            </div>
           <div class="form-group"> 
           <div class="col-lg-10 col-lg-offset-2">  
         <input type="submit" class="btn btn-primary" value="Send" id="submit"/>
         </div>
         </div>
    </fieldset>  
</form>