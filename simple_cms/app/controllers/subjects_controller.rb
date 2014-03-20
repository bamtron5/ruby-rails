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
      flash[:notice] = "Subject Created."
      redirect_to :action => 'list'
    else
      render('new')
    end
  end
  
  def edit
    @subject = Subject.find(params[:id])
  end
  
  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      flash[:notice] = "Subject Updated."
      redirect_to(:action => 'show', :id => @subject.id)
    else
      render('edit')
    end
  end
  
  def delete
    @subject = Subject.find(params[:id])
  end
  
  
  def destroy
    Subject.find(params[:id]).destroy
    flash[:notice] = "Subject Destroyed."
    redirect_to(:action => 'list')
  end
  
  private
  
  def subject_params
    params.require(:subject).permit(:name, :position, :visible, :id)
  end
  
end
