class NewappController < ApplicationController
    def home  
    end
    

    def contact 
        @post = Post.new  
        if request.post? 
            @post.assign_attributes(post_params)
            if @post.save
                redirect_to posts_path
            else
                render :contact
            end    
        end
    end
    
    
    def who
    end   

    private

    def post_params
        params.require(:post).permit(:title, :content)
    end
end