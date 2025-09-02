// This file contains the JavaScript code for the hotel management system.
// It handles user interactions, form submissions, and any dynamic content updates on the webpage.

document.addEventListener('DOMContentLoaded', function() {
    // Utility: simple storage wrapper
    const Storage = {
        get(key){
            try{return JSON.parse(localStorage.getItem(key) || '[]')}
            catch(e){return []}
        },
        set(key, val){localStorage.setItem(key, JSON.stringify(val))}
    }

    // Booking form (hotel)
    const bookingForm = document.getElementById('booking-form');
    if (bookingForm) {
        bookingForm.addEventListener('submit', function(event) {
            event.preventDefault();
            const formData = new FormData(bookingForm);
            const booking = Object.fromEntries(formData.entries());
            booking.id = 'H-' + Date.now();
            booking.createdAt = new Date().toISOString();
            booking.price = estimateRoomPrice(booking.roomType);
            const bookings = Storage.get('hotelBookings');
            bookings.push(booking);
            Storage.set('hotelBookings', bookings);
            // create a mock payment record
            const payments = Storage.get('payments');
            payments.push({id: 'P-' + Date.now(), bookingId: booking.id, amount: booking.price, method: 'card', status: 'pending', createdAt: booking.createdAt});
            Storage.set('payments', payments);
            alert('Room reserved successfully!');
            bookingForm.reset();
        });
    }

    // Restaurant form
    const restaurantForm = document.getElementById('restaurant-form');
    if (restaurantForm){
        restaurantForm.addEventListener('submit', function(e){
            e.preventDefault();
            const booking = Object.fromEntries(new FormData(restaurantForm).entries());
            booking.id = 'R-' + Date.now();
            booking.createdAt = new Date().toISOString();
            const list = Storage.get('restaurantBookings');
            list.push(booking);
            Storage.set('restaurantBookings', list);
            alert('Table reserved successfully!');
            restaurantForm.reset();
        });
    }

    // Admin page rendering
    function renderAdmin(){
        const hotelListEl = document.getElementById('hotel-list');
        const restListEl = document.getElementById('restaurant-list');
        const paymentsEl = document.getElementById('payments-list');
        if (hotelListEl){
            const bookings = Storage.get('hotelBookings');
            hotelListEl.innerHTML = bookings.length ? bookings.map(b => renderBookingItem(b)).join('') : '<p class="muted">No hotel bookings yet.</p>';
            attachAdminHandlers();
        }
        if (restListEl){
            const r = Storage.get('restaurantBookings');
            restListEl.innerHTML = r.length ? r.map(b => renderBookingItem(b, true)).join('') : '<p class="muted">No restaurant bookings yet.</p>';
            attachAdminHandlers();
        }
        if (paymentsEl){
            const p = Storage.get('payments');
            paymentsEl.innerHTML = p.length ? p.map(pay => `<div class="list-item"><div><strong>${pay.id}</strong> <div class="muted">Booking ${pay.bookingId} - ${pay.amount} USD</div></div><div class="actions"><button data-id="${pay.id}" data-action="mark-paid">Mark Paid</button></div></div>`).join('') : '<p class="muted">No payments recorded.</p>';
            attachAdminHandlers();
        }
    }

    function renderBookingItem(b, isRestaurant){
        const title = isRestaurant ? `${b.name} — ${b.partySize} people` : `${b.name} — ${b.roomType}`;
        const meta = isRestaurant ? `${b.date} ${b.time}` : `${b.checkIn} → ${b.checkOut}`;
        return `<div class="list-item" data-id="${b.id}"><div><strong>${title}</strong><div class="muted">${meta} • ${b.email || ''} • ${b.phone || ''}</div></div><div class="actions"><button data-id="${b.id}" data-action="cancel">Cancel</button></div></div>`;
    }

    function attachAdminHandlers(){
        document.querySelectorAll('[data-action="cancel"]').forEach(btn => btn.addEventListener('click', function(){
            const id = this.dataset.id;
            cancelBooking(id);
        }));
        document.querySelectorAll('[data-action="mark-paid"]').forEach(btn => btn.addEventListener('click', function(){
            const id = this.dataset.id;
            markPaymentPaid(id);
        }));
    }

    function cancelBooking(id){
        let hotel = Storage.get('hotelBookings').filter(b => b.id !== id);
        Storage.set('hotelBookings', hotel);
        let rest = Storage.get('restaurantBookings').filter(b => b.id !== id);
        Storage.set('restaurantBookings', rest);
        // optionally remove payments
        let payments = Storage.get('payments').filter(p => p.bookingId !== id);
        Storage.set('payments', payments);
        renderAdmin();
    }

    function markPaymentPaid(id){
        const payments = Storage.get('payments').map(p => p.id === id ? {...p, status: 'paid'} : p);
        Storage.set('payments', payments);
        renderAdmin();
    }

    function estimateRoomPrice(type){
        switch(type){
            case 'Single': return 50;
            case 'Double': return 80;
            case 'Suite': return 150;
            default: return 70;
        }
    }

    // run admin render on admin page load
    renderAdmin();
});