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
    page.content7 = params[:content][:page_content7][:value] if page.content7 != nil
    page.content8 = params[:content][:page_content8][:value] if page.content8 != nil
    page.content9 = params[:content][:page_content9][:value] if page.content9 != nil
    page.content10 = params[:content][:page_content10][:value] if page.content10 != nil
    page.content11 = params[:content][:page_content11][:value] if page.content11 != nil
    page.content12 = params[:content][:page_content12][:value] if page.content12 != nil
    page.content13 = params[:content][:page_content13][:value] if page.content13 != nil
    page.content14 = params[:content][:page_content14][:value] if page.content14 != nil
    page.content15 = params[:content][:page_content15][:value] if page.content15 != nil
    page.content15 = params[:content][:page_content15][:value] if page.content15 != nil
    page.content16 = params[:content][:page_content16][:value] if page.content16 != nil
    page.content17 = params[:content][:page_content17][:value] if page.content17 != nil
    page.content18 = params[:content][:page_content18][:value] if page.content18 != nil
    page.content19 = params[:content][:page_content19][:value] if page.content19 != nil
    page.content20 = params[:content][:page_content20][:value] if page.content20 != nil
    page.content21 = params[:content][:page_content21][:value] if page.content21 != nil
    page.content22 = params[:content][:page_content22][:value] if page.content22 != nil
    page.content23 = params[:content][:page_content23][:value] if page.content23 != nil
    page.content24 = params[:content][:page_content24][:value] if page.content24 != nil
    page.content25 = params[:content][:page_content25][:value] if page.content25 != nil
    page.content26 = params[:content][:page_content26][:value] if page.content26 != nil
    page.content27 = params[:content][:page_content27][:value] if page.content27 != nil
    page.content28 = params[:content][:page_content28][:value] if page.content28 != nil
    page.content29 = params[:content][:page_content29][:value] if page.content29 != nil
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
