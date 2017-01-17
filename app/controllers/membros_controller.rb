class MembrosController < ApplicationController
	before_filter :authenticate_admin!, except: [:index, :show]


	def index
  	@membros = Membro.order("name").page(params['page']).per(10)
  		respond_to do |format|
   			format.html
		    format.xml {render xml: @membros}
		    format.json {render json: @membros}
  		end
	end

	def new
  		@membro = Membro.new
	end

	def show
  		@membro = Membro.find(params[:id])
	end

	def destroy
  		@membro = Membro.find(params[:id])
  		@membro.destroy

	  redirect_to(action: "index")
	end

	def membro_params
 	 params.require(:membro).permit(:name, :email, :course, :role, :JoinTime, :Rg, :CPF)
	end

	def create
	  @membro = Membro.new(membro_params)
	  if @membro.save
	    redirect_to action: "show", id: @membro
	  else
	    render action: "new"
	  end
	end


	def edit
	  @membro = Membro.find params[:id]
	end

	def update
	  @membro = Membro.find(params[:id])

	  if @membro.update_attributes(membro_params)
	    redirect_to action: "show", id: @membro
	  else
	    render action: "edit"
	  end
	end



end

