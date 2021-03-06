class AttendanceMailer < ApplicationMailer
  default from:  ENV['MAIL']
 
  def new_attending_email(attendance)
    @attendee = User.find(attendance.attendee_id)
    @event = Event.find(attendance.event_id) 
    @admin = User.find(@event.admin_id)
    mail(to: @admin.email, subject: 'A new attendee registered to your event!') 
  end
end
