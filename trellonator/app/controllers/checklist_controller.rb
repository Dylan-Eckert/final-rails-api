class ChecklistController < ApplicationController
  def index
    @checklists = Checklist.all
  end

  def new
    @checklist = Checklist.new
  end

  def edit
    @checklist = Checklist.find(params[:id])
  end

  def create
  @checklist = Checklist.new(checklists_params)

    if @checklist.save
      redirect_to @checklist
    else
      render :new
    end
  end

  def show
    @checklist = Checklist.find(params[:id])
  end

  def update
    @checklist = Checklist.find(params[:id])

    if @checklist.update(checklists_params)
      redirect_to @checklist
    else
      render :edit
    end
  end

  def destroy
    @checklist = Checklist.find(params[:id])
    @checklist.destroy

    redirect_to checklists_path
  end

  private
    def checklists_params
      params.require(:checklist).permit(:title, :body)
    end
end
