module FriendshipsHelper

    def accept
        requestee.friends << requester
        requester.friends << requestee
        self.destroy
    end

    def decline
        self.destroy
    end


end
