class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: %i[ show edit update destroy ]

	def index
        @portfolios = Portfolio.all
    end

    def new
        @portfolios=Portfolio.new
    end

    def create
        @portfolios=Portfolio.new(params.require(:portfolio).permit(:tittle, :subtittle,:body))

        respond_to do |format|
            if @portfolios.save
            format.html { redirect_to (@portfolios), notice: "Portfolio was successfully created." }
            format.json { render :show, status: :created, location: @portfolios}
            end
        end
    end

    def show

    end

    def edit 

    end

    def update
    respond_to do |format|
      if @portfolio.update(params.require(:portfolio).permit(:tittle,:subtittle, :body))
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio}
      
    end
end
end
def destroy
    @portfolio.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
    

    private

    def set_portfolio
        @portfolio = Portfolio.find_by_id(params[:id])
    end


end
