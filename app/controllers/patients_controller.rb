class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]

  def index
    @patients = Patient.includes(:task_assignments, :task_items).all
  end

  def show; end

  def new
    @patient = Patient.new
  end

  def edit; end

  def create
    @patient = Patient.new(patient_params)
    return redirect_to patients_path, notice: t('.index.messages.sucess_create') if @patient.save

    render :new, status: :unprocessable_entity
  end

  def update
    return redirect_to @patient, notice: t('.index.messages.sucess_update') if @patient.update(patient_params)

    render :edit, status: :unprocessable_entity
  end

  def destroy
    @patient.destroy
    redirect_to patients_url, notice: t('.index.messages.success_destroy')
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name)
  end
end
