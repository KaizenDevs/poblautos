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
    puts page.content
    page.title = params[:content][:page_title][:value] if page.title != nil
    page.title1 = params[:content][:page_title1][:value] if page.title1 != nil
    page.content = params[:content][:page_content][:value] if page.content != nil
    page.content1 = params[:content][:page_content1][:value] if page.content1 != nil
    page.content2 = params[:content][:page_content2][:value] if page.content2 != nil
    page.content3 = params[:content][:page_content3][:value] if page.content3 != nil
    page.content4 = params[:content][:page_content4][:value] if page.content4 != nil
    page.content5 = params[:content][:page_content5][:value] if page.content5 != nil
    page.content6 = params[:content][:page_content6][:value] if page.content6 != nil
    page.image = params[:content][:page_image][:attributes][:src] if params[:content] && params[:content][:page_image] && params[:content][:page_image][:attributes]
    page.image1 = params[:content][:page_image1][:attributes][:src] if params[:content] && params[:content][:page_image1] && params[:content][:page_image1][:attributes]
    page.image2 = params[:content][:page_image2][:attributes][:src] if params[:content] && params[:content][:page_image2] && params[:content][:page_image2][:attributes]
    page.image3 = params[:content][:page_image3][:attributes][:src] if params[:content] && params[:content][:page_image3] && params[:content][:page_image3][:attributes]
    page.image4 = params[:content][:page_image4][:attributes][:src] if params[:content] && params[:content][:page_image4] && params[:content][:page_image4][:attributes]
    page.image5 = params[:content][:page_image5][:attributes][:src] if params[:content] && params[:content][:page_image5] && params[:content][:page_image5][:attributes]
    page.image6 = params[:content][:page_image6][:attributes][:src] if params[:content] && params[:content][:page_image6] && params[:content][:page_image6][:attributes]
    page.image7 = params[:content][:page_image7][:attributes][:src] if params[:content] && params[:content][:page_image7] && params[:content][:page_image7][:attributes]
    page.image8 = params[:content][:page_image8][:attributes][:src] if params[:content] && params[:content][:page_image8] && params[:content][:page_image8][:attributes]
    page.image9 = params[:content][:page_image9][:attributes][:src] if params[:content] && params[:content][:page_image9] && params[:content][:page_image9][:attributes]
    page.image10 = params[:content][:page_image10][:attributes][:src] if params[:content] && params[:content][:page_image10] && params[:content][:page_image10][:attributes]
    page.save!


    render text: ''
  end

  def save_company_page

  end

  private
  def page_content_params
    params.require(:page_content).permit(:title, :html, :page)
  end
end
