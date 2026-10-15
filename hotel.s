# Hotel Table Booking - GNU Assembly (AT&T Syntax)
# File: hotel_booking.s

.section .data
table_available: .byte 1      # 1 = Table khali hai
student_valid:   .byte 1      # 1 = Student ID valid hai
table_booked:    .byte 0
order_placed:    .byte 0
msg_booked:      .asciz "Table Booked Successfully!\n"
msg_full:        .asciz "Table Not Available!\n"
msg_order:       .asciz "Order Placed!\n"

.section .text
.globl _start

_start:
    # === GNU CONCEPT 1: AND Gate Logic for Table Booking ===
    # Booking = Table_Available AND Student_Valid
    
    movb table_available, %al    # AL = table_available
    movb student_valid, %bl      # BL = student_valid
    andb %bl, %al                # AL = AL AND BL (AND Gate)
    
    cmpb $1, %al
    je book_table               # Agar AND = 1 toh book
