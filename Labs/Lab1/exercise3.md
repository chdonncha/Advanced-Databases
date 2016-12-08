---
### Exercise 3
---

The system works like so:

A cinema can have many Screens, the screen can have many movies and many screen times with many bookings associated with the screen.

The user must login using their username and password in order to book tickets with one customer being able to book many tickets.

the user then inputs the number of tickets.

A user can place a booking and specify their age whether they are an adult or child, the tick_age table store the prices for the adult and child tickets.

After which they have specified both their age for the ticket and the number of tickets being booked their ticket cost will be totaled

They select their movie and their screen time which and then they will be allocated a seatings number for their tickets.

The reason why the seating table isn't in a relationship with screen, screen_times or movies is because it'll be easier to define the number of seats when it's associated with the screen through the booking for the sake of allocating seats.

![Exercise3](images/7.jpg)
