class Comment1sController < ApplicationController

  def new
    @comment1 = @program.comment1.build
  end 
  
  def create
    @program = Program.find(params[:program_id])
    if @program.comment1
     flash[:error] = "Cannot comment more than once"
    else
     @comment1 = @program.create_comment1(params[:comment1])
     flash[:notice] = "Comment created"
    end
   redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:program_id])
    @comment1 = @program.comment1s.find(params[:id])
    @comment1.destroy
    redirect_to program_path(@program)
  end
  
  def edit
    @program = Program.find(params[:program_id])
    @comment1 = @program.comment1(params[:id])
  end
  
   def update
    @program = Program.find(params[:program_id])
    @comment1 = @program.comment1

    respond_to do |format|
      #if @program.comments.update_attributes(params[:comment])
      if @comment1.update_attributes(params[:comment1])
        format.html { redirect_to program_path(@program), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment1.errors, status: :unprocessable_entity }
      end
      end
    end
    
end