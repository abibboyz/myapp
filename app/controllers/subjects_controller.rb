class SubjectsController < ApplicationController
  layout 'admin'
  def index
    @subjects =Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => 'Default'})
  end

  def create
    @subject= Subject.new(subject_params) # parameters -> (params.required(:subject).permit(:name, :visible))
    if @subject.save
      flash[:notice] = "Subject created successully....."
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end
  
  def update
    @subject = Subject.find(params[:id])

    if @subject.update(subject_params)
      flash[:notice] = "Subject updated successully....."
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end
  
  def delete

    @subject = Subject.find(params[:id])
  end
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}'deleted successully....."
    redirect_to(subjects_path)
  end

  private
  def subject_params
    params.required(:subject).permit(:name,:position,:visible)
  end
end
