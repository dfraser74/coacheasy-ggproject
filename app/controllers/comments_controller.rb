class CommentsController < ApplicationController

  def create
    @program = Program.find(params[:program_id])
    @comment = @program.comments.create(params[:comment])
    redirect_to program_path(@program)
  end

end
