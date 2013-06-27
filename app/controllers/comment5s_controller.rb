class Comment5sController < ApplicationController

  def new
    @comment5 = @program.comment5.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment5
     flash[:error] = "Cannot comment more than once"
    else
     @comment5 = @program.create_comment5(params[:comment5])
     flash[:notice] = "Comment created"
    end
   redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment5 = @program.comment5s.find(params[:id])
    @comment5.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment5 = @program.comment5(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment5 = @program.comment5

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment5.update_attributes(params[:comment5])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment5.errors, status: :unprocessable_entity }
      end
      end
    end
    
end