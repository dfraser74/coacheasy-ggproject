class Comment2sController < ApplicationController

  def new
    @comment2 = @program.comment2.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment2
     flash[:error] = "Cannot comment more than once"
    else
     @comment2 = @program.create_comment2(params[:comment2])
     flash[:notice] = "Comment created"
    end
   redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment2 = @program.comment2s.find(params[:id])
    @comment2.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment2 = @program.comment2(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment2 = @program.comment2

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment2.update_attributes(params[:comment2])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment2.errors, status: :unprocessable_entity }
      end
      end
    end
    
end