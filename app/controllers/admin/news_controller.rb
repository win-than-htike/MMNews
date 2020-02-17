module Admin
  class NewsController < Admin::ApplicationController
    # Overwrite any of the RESTful controller actions to implement custom behavior
    # For example, you may want to send an email after a foo is updated.
    #
    # def update
    #   foo = Foo.find(params[:id])
    #   foo.update(params[:foo])
    #   send_foo_updated_email
    # end

    # POST /news
    # POST /news.json
    def create

      @news = current_user.news.build(news_params)

      respond_to do |format|
        if @news.save
          format.html { redirect_to ["admin", @news], notice: 'News was successfully created.' }
          format.json { render :show, status: :created, location: @news }
        else
          format.html { render :new }
          format.json { render json: @news.errors, status: :unprocessable_entity }
        end
      end
    end

    # Override this method to specify custom lookup behavior.
    # This will be used to set the resource for the `show`, `edit`, and `update`
    # actions.
    #
    # def find_resource(param)
    #   Foo.find_by!(slug: param)
    # end

    # Override this if you have certain roles that require a subset
    # this will be used to set the records shown on the `index` action.
    #
    # def scoped_resource
    #  if current_user.super_admin?
    #    resource_class
    #  else
    #    resource_class.with_less_stuff
    #  end
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_params
      params.require(:news).permit(:title, :head_line, :original_image, :thumbnail_image, :body, :category_id, :author_id)
    end

  end
end
