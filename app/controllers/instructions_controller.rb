class InstructionsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @instruction = @recipe.instructions.build
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @instruction = @recipe.instructions.build(instruction_params)

    if @instruction.save
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def instruction_params
    params.require(:instruction).permit(:body)
  end
end
