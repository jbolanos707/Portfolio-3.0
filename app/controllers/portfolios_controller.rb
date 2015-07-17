class PortfoliosController < ApplicationController


  def index
    @portfolio = Portfolio.all.order('created_at DESC')
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(post_params)
    if @portfolio.save
      redirect_to @portfolio
    else
      render 'new'
    end
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update(params[:portfolio].permit(:name, :description, :image))
      redirect_to @portfolio
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy

    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :image)
    end
end
