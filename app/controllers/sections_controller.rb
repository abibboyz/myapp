class SectionsController < ApplicationController
  layout false
  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section= Section.new(section_params)
    if @section.save
      flash[:notice] ="Section created successfully......"
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @section.update(section_params)
      flash[:notice] = "Section updated successully....."
      redirect_to(section_path(@section))
    else
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end
  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] ="Section '#{@section.name}' delete successfully......"
    redirect_to(sections_path)
  end
  private
  def section_params
    params.required(:section).permit(:page_id,:name,:position,:visible,
    :content_type,:content)
  end
end