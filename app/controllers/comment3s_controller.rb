class Comment3sController < ApplicationController

  def new
    @comment3 = @program.comment3.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment3
     flash[:error] = "Cannot comment more than once"
    else
     @comment3 = @program.create_comment3(params[:comment3])
     flash[:notice] = "Comment created"
    end
   redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment3 = @program.comment3s.find(params[:id])
    @comment3.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment3 = @program.comment3(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment3 = @program.comment3

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment3.update_attributes(params[:comment3])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment3.errors, status: :unprocessable_entity }
      end
      end
    end
    
end