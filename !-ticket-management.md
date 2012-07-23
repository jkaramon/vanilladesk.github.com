---
title: Ticket Management - VanillaDesk
header: Ticket Management in VanillaDesk
layout: new-default
norobots: true
---

{% capture intro %}
[TODO: Ticket Concept Excerpt]

Ticketing concept is described more detailed in our [wiki](http://wiki.vanilladesk.com/display/doc/Ticket). 
{% endcapture %}

<div class="intro"> 
{{ intro | markdownify }}
</div>

Nifty Features in Ticket Management
===================================

Our primary goal is to provide an easy to understand and easy to use product.
Not hard to figure out - users spend the most time on working with tickets.
Therefore we try constantly to make a ticket management process as simple as possible.  

Sure, we have ITIL based ServiceDesk, we have multiple time zones, multiple working hours, 
customizable and localizable notifications, SLA per service and/or customer, 
escalations, ticket prioritization, tickets created from emails, user portal, etc.  
But these these 'advanced' features should not hinder daily usage or make setup more complicated.

Let's see some of features that are there to make work with the application more pleasant.

## Attachment Upload ##
We provide several methods for adding attachments and screenshots to tickets. 
Some of them are available only if you are using Chrome or Firefox browser.  

{% capture clipboard %}
### Upload image from a clipboard ###
Create screenshot and paste it over ticket detail page. Then you may optionally annotate image and 
add it as an attachment to the ticket. This method is useful if you want quickly append screenshot to the ticket.
{% video ticket-management/clipboard %}
{% endcapture %}
<div class="cnt left">
{{ clipboard | markdownify }}
</div>

{% capture dragdrop %}
### Drag and drop upload ###
Drag one or more files and upload them by dropping them over defined area. 
{% video ticket-management/dragdrop %}
{% endcapture %}
<div class="cnt right">
{{ dragdrop | markdownify }}
</div>

In all browsers is of course supported a standard file dialog to attach files.

## Hypertext in comments and ticket description ##
{% capture hypertext %}
Tickets comments and description fields have some unique features.   
If you mention some entity (attachment, other tickets, person, customer, service … ) via its id 
while typing description or comment, this pattern is automatically recognized and displayed as link with tooltip.  
If you mention other ticket id, there is another hidden gem. Mentioned ticket will be added as related 
and displayed in Ticket Relations panel!
{% video ticket-management/hypertext %}
{% endcapture %}
<div class="cnt left">
{{ hypertext | markdownify }}
</div>


## Email Integration ##
{% capture email1 %}
You may create tickets if you send mail to the configured mailbox.  
You may add comment via email if you reply to the notification or escalation email
or if you mention ticket id in email subject.  
{% img ticket-management/email-reply.png %}
{% endcapture %}
{% capture email2 %}
Extracted email body w will be added as a comment to the ticket.
Email processor tries 
{% img ticket-management/email-imported.png %}
{% endcapture %}
<div class="cnt right">
{{ email1 | markdownify }}
</div>
<div class="cnt right">
{{ email2 | markdownify }}
</div>

Email integration is described more detailed in our [wiki](http://wiki.vanilladesk.com/display/doc/Email+Import).

## Ticket Watchers ##
Ticket watchers are actors that are not directly involved in ticket resolution, but they are interested 
in ticket progress updates.

You may watch particular ticket or add other watchers.  
Moreover, add watchers as a plain email address. Then public (end user) notifications will be sent to this address.

If you've still not impressed - add a ticket comment via email and add someone to CC field, 
this email address will be added as a ticket watcher!

{% capture watcher1 %}
### Example: ###
Add raw email address  as CC to the email and send it to the configured email account. 
{% img ticket-management/email-reply.png %}
{% endcapture %}
{% capture watcher2 %}
After sucessfull import, email address is added as an watcher to the ticket. 
This email will be notified about important changes of this ticket.
{% img ticket-management/watcher.png %}
{% endcapture %}
<div class="cnt right">
{{ watcher1 | markdownify }}
</div>
<div class="cnt right">
{{ watcher2 | markdownify }}
</div>










