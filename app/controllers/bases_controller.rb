class BasesController < ApplicationController
  def index
    @bases = Base.all.order('id ASC')
    @base = Base.new
  end  
  
  def new
    @base = Base.new
  end  
  
  def create
    @base = Base.new(base_params)
    if @base.save
      flash[:success] = "拠点情報を作成しました。"
      redirect_to bases_index_url
    else
      flash[:notice] = "拠点情報の作成に失敗しました。"
      render :index
    end  
  end  
  
  def update
    if @base = Base.find(params[:id])
      @base.update(base_params)
      @base.save
      flash[:success] = "拠点情報を更新しました。"
      redirect_to bases_index_url
    else
      flash[:danger] = "更新に失敗しました。"
      redirect_to index
    end
  end  
  
  def destroy
    @base = Base.find(params[:id])
    @base.destroy
    flash[:success] = "#{@base.base_name}を削除しました"
    redirect_to bases_index_url
    
  end  
  
  private
   def base_params
     params.require(:base).permit(:base_number, :base_name, :base_type)
   end   
     
end
