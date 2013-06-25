class CommentsController < ApplicationController

  def new
    @comment = @program.comments.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    @comment = @program.comments.create(params[:comment])
    redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment = @program.comments.find(params[:id])
    @comment.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment = @program.comments.find(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment = @program.comments.find(params[:id])

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
      end
    end
    
end