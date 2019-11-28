class MeetingMailer < ApplicationMailer
  helper :application
  default from: "notifications@dbeng.com"

  def meeting_scheduled
    @meeting = params[:meeting]
    @user = params[:user]

    mail(to: @user.email, subject: "New Booking Confirmation")
  end

end