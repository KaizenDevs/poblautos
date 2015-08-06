class PageContentsController < ApplicationController
  def index
    @home_page_contents = PageContent.where(page: "Inicio")
    @company_page_contents = PageContent.where(page: "Empresa")
  end

  def edit
    @page_content = PageContent.find(params[:id])
  end

  def update
    @page_content = PageContent.find(params[:id])

    if @page_content.update(page_content_params)
      flash[:notice] = "El contenido se ha actualizado correctamente!"
      redirect_to page_contents_path
    else
      flash[:alert] = "El contenido no se ha podido actualizar. Inténtalo de nuevo."
      render 'edit'
    end
  end

  def save_page
    page = PageContent.find(params[:id])
    page.title = params[:content][:page_title][:value]
    page.content = params[:content][:page_content][:value]
    page.save!

    render text: ''
  end

  private
  def page_content_params
    params.require(:page_content).permit(:title, :html, :page)
  end
end
