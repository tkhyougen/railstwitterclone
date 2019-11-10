class DivsController < ApplicationController
    before_action :set_div, only:[:edit, :update, :show, :destroy]
    def index
      @divs = Div.all
    end

    def new
      @div = Div.new
    end

    def create
      @div = Div.new(div_params)
      if params[:back]
        render :new
      else
        if @div.save
          redirect_to divs_path, notice:"つぶやきました!"
        else
          render "new"
        end
      end
    end

    def edit
      @div = Div.find(params[:id])
    end

    def update
      if @div.update(div_params)
        redirect_to divs_path, notice:"編集しました!"
      else
        render :edit
      end
    end


    def show
    end

    def destroy
      @div.destroy
      redirect_to divs_path, notice:"つぶやきを削除しました"
    end

    def confirm
      @div = Div.new(div_params)
      render:new if @div.invalid?
    end

    private
    def div_params
      params.require(:div).permit(:content)
    end

    def set_div
      @div = Div.find(params[:id])
    end


end
