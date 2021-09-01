class JournalsController < ApplicationController
  def index
    @categories = Category.all 

    cate = params[:cate]

    if !cate.nil?
      @journals = Journal.where(:category_id => cate)
    else
      @journals = Journal.all
    end
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def new
    @journal = Journal.new
  end
  
  def create 
    @journal = Journal.new(journal_params)


    if @journal.save
      redirect_to @journal
    else 
      render :new
    end
  end

  def edit
    @journal = Journal.find(params[:id])
  end

  def update 
    @journal = Journal.find(params[:id])
    
    if @journal.update(journal_params)
      redirect_to @journal
    else
      render edit
    end
  end

  def destroy
    @journal = Journal.find(params[:id])

    @journal.destroy
    redirect_to @journal
  end


  private 

  def journal_params
    params.require(:journal).permit(:title, :content, :category_id)
  end
end
