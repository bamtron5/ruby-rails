class SubjectsController < ApplicationController
  
  def index
    list
    render('list')
  end
  
  def list
    @subjects = Subject.order("subjects.position ASC")
  end
  
  def show
    @subject = Subject.find(params[:id])
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(subject_params)
    if(@subject.save)
      redirect_to :action => 'list'
    else
      render :action => :new
    end
  end
  
  private
  
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
  
end
