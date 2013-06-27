class CommentsController < ApplicationController

  def new
    @comment = @program.comment.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment
     flash[:error] = "Cannot comment more than once"
    else
     @comment = @program.create_comment(params[:comment])
     flash[:notice] = "Comment created"
    end
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
    @comment = @program.comment(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment = @program.comment

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