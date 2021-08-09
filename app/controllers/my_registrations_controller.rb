class MyRegistrationsController < Devise::RegistrationsController
    def create
        super
        if @user.save
            if @user.persisted? && @user.errors.empty?
                UserMailer.with(user: @user).welcome_email.deliver
            end
        end
    end
end