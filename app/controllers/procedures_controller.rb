class ProceduresController < ApplicationController
  
  before_action :logged_in_user, only: [:new, :create, :destroy]
  
  def index
  end

  def show
  end

  def new
    @procedure = Procedure.new
  end

  def create
    p "==================="
    p params[:procedure][:content]
    p "==================="
    @procedure = current_user.procedures.build(procedure_params)
    if @procedure.save
      flash[:success] = "レシピを作成しました"
      redirect_to procedures_index_path
    else
      flash[:danger] = "保存出来ませんでした"
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  
  
  private
  
  def procedure_params
    params.require(:procedure).permit(:image, :content, :recipe_id)
  end
end
