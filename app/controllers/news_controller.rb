class NewsController < ApplicationController
  before_action :modal_procedure_new
  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
    @categories = Category.all
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(news_params)
    if @news.save
      flash[:notice] = "La noticia ha sido creada con éxito."
      redirect_to news_index_path
    else
      flash[:alert] = "La noticia no se ha podido crear. Inténtalo de nuevo."
      render 'new'
    end
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      flash[:notice] = "La noticia se ha actualizado con éxito."
      redirect_to news_index_path
    else
      flash[:alert] = "La noticia no se ha podido actualizar. Inténtalo de nuevo."
      render 'edit'
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to news_index_path
  end

  def rate
    @news = News.find(params[:id])
    if @news.rating == nil
     @news.update(rating: params[:rating])
     @news.update(raters: 1)
   else
     @news.update(raters: @news.raters + 1)
     average_rating = (@news.rating + params[:rating]) / @news.raters
     @news.update(rating: average_rating)
   end
   render json: {'body' => 'success'}.to_json, status: 201
 end

 private
 def news_params
  params.require(:news).permit(:image, :title, :content, :category_id, :highlight)
end
end
