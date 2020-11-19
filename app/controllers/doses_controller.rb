class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to dose_path(@dose)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, )
  end
end
