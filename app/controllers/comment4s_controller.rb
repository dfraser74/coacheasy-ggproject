class Comment4sController < ApplicationController

  def new
    @comment4 = @program.comment4.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment4
     flash[:error] = "Cannot comment more than once"
    else
     @comment4 = @program.create_comment4(params[:comment4])
     flash[:notice] = "Comment created"
    end
   redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment4 = @program.comment4s.find(params[:id])
    @comment4.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment4 = @program.comment4(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment4 = @program.comment4

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment4.update_attributes(params[:comment4])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment4.errors, status: :unprocessable_entity }
      end
      end
    end
    
end