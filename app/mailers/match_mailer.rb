class MatchMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.match_mailer.welcome.subject
  #
  def welcome(match, current_user)
    @match = match
    @user = current_user

    mail(
      to:       @match.matched_gratitude.user.email && @match.matching_gratitude.user.email,
      subject:  "You have got a match"
    )
  end
end
