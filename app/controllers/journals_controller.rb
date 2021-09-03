class JournalsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @categories = current_user.categories

    cate = params[:cate]
    date = params[:date]

    if !date.nil?
      @journals = Journal.where(:deadline => date)
    else
      @journals = current_user.journals
    end

    if !cate.nil?
      @journals = Journal.where(:category_id => cate)
    else
      @journals = current_user.journals
    end
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def new
    # @journal = Journal.new
    @journal = current_user.journals.new
  end
  
  def create 
    @journal = current_user.journals.new(journal_params)
    # @journal = current_user.journals.build(journal_params)


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

  def correct_user
    @journal = current_user.journals.find_by(id: params[:id])
    redirect_to journal_path, notice: "Not Authorize" if @journal.nil?
  end


  private 

  def journal_params
    params.require(:journal).permit(:title, :content, :category_id, :user_id, :deadline)
  end
end
