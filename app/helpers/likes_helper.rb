module LikesHelper
#checks if the current user has already liked the post
    def already_liked?(post)
        like = post.likes.where(user_id: current_user.id)
        like.any?
    end
#returns like by current user
    def current_like(post)
        like = current_user.likes.find_by(post_id: post.id) 
        like       
    end
#returns user of like
    def liker(post)
        like = post.likes.find_by(post: post)
        like.user
    end
end
