class Comment6sController < ApplicationController

  def new
    @comment6 = @program.comment6.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment6
     flash[:error] = "Cannot comment more than once"
    else
     @comment6 = @program.create_comment6(params[:comment6])
     flash[:notice] = "Comment created"
    end
   redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment6 = @program.comment6s.find(params[:id])
    @comment6.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment6 = @program.comment6(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment6 = @program.comment6

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment6.update_attributes(params[:comment6])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment6.errors, status: :unprocessable_entity }
      end
      end
    end
    
end