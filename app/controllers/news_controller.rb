class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
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

  private
  def news_params
    params.require(:news).permit(:image, :title, :content, :category_id, :highlight)
  end
end
