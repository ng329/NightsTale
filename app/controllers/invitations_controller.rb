class InvitationsController < ApplicationController
  def index
    @friends = current_user.friends
    @pending = current_user.pending_invitations
  end

  def new
    if params[:query].present?
      all_users = User.search_by_email_and_username(params[:query])
    else
      all_users = User.all
    end
    @users = []
    all_users.each { |user| @users << user if user != current_user && !Invitation.reacted(current_user, user) }
  end

  def create
    user = current_user
    friend = User.find(params[:friend_id])
    current_user.send_invitation(user, friend)
    redirect_to user_invitations_path()
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.destroy
    redirect_to user_invitations(current_user), status: :see_other
  end


  def update
    @invitation = Invitation.find(params[:id])
    @invitation.confirmed = true
    @invitation.save
    redirect_to user_invitations_path()
  end
end
