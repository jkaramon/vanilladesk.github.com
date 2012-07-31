---
title: Ticket Management - VanillaDesk
header: Ticket Management in VanillaDesk
layout: new-default
norobots: true
---

[TODO: Ticket Concept Excerpt]

Ticketing concept is described more detailed in our [wiki](http://wiki.vanilladesk.com/display/doc/Ticket). 


Nifty Features in Ticket Management
===================================

Our primary goal while developing VanillaDesk is to provide you a easy to understand and easy to use product.  
Users spent most time on working with tickets. We are constantly focusing in making ticket management process as simple as possible.   
Sure, we have ITIL based ServiceDesk, we have multiple time zones, multiple working hours, customizable and localizable notifications, SLA per service and/or customer,  escalations, ticket prioritization, tickets created from emails, user portal, etc.  
But these these 'advanced' features should not hinder daily usage or make setup more complicated.

Let's see some of features, that are there to make work with application more pleasant.

## Attachment Upload ##
We provide several methods for adding attachments and screenshots to tickets. 
These are available if you are using Chrome or Firefox browser.

### Upload image from a clipboard ###
Create screenshot and paste it over ticket detail page. Then you may optionally annotate image and 
add it as an attachment to the ticket.
{% video ticket-management/clipboard %}

### Drag and drop upload ###
Drag one or more files and upload them by dropping over defined area.
{% video ticket-management/dragdrop %}

## Hypertext in comments and ticket description ##
Tickets comments and description fields have some unique features.   
If you mention some entity (attachment, other tickets, person, customer, service … ) via its id 
while typing description or comment, this pattern is automatically recognized and displayed as link with tooltip.  
If you mention other ticket id, there is another hidden gem. Mentioned ticket will be added as related 
and displayed in Ticket Relations panel!
{% video ticket-management/hypertext %}

## Email Integration ##
You may create tickets if you send mail to the configured mailbox.

You may add comment via email if you reply to the notification or escalation email 
{% img ticket-management/email-reply.png %}
or if you mention ticket id in email subject.  
Comment will be then added to the ticket:
{% img ticket-management/email-imported.png %}


## Ticket Watchers ##
Ticket watchers are actors that are not directly involved in ticket resolution, but they are interested 
in ticket progress updates (mainly via notifications).

You may watch particular ticket or add other watchers.  
Moreover, add watchers as plain email address. Then public (end user) notifications will be sent to this address.

If you've still not impressed - add a ticket comment via email and add someone to CC field, 
this email address will be added as a ticket watcher!

Example:  
{% img ticket-management/email-reply.png %}
watcher is added to ticket
{% img ticket-management/watcher.png %}









