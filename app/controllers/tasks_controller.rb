class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    # @tasks = Task.all
    @tasks = Task.order(:due_date, :due_time)
  end

  # GET /tasks/1 or /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    if current_user
      @user = current_user
      @task = @user.own_tasks.build(task_params)
    else
      @task = Task.new(task_params)
    end
  
    respond_to do |format|
      if @task.save
        format.html { redirect_to my_tasks_path(@user.username), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to task_url(@task), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @user = @task.owner

    @task.destroy

    respond_to do |format|
      format.html { redirect_to my_tasks_path(@user.username), notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def ping_task
    @task = Task.find(params[:id])
    @task.increment!(:pings_count)
    
    render json: { pings_count: @task.pings_count }
  end

  def toggle_completion
    @task = Task.find(params[:id]) # Ensure you're using the correct param name (it might be :id, not :task_id)
    @task.update(completion: !@task.completion)
  
    respond_to do |format|
      if @task.save
        format.json { head :no_content }
      else
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:description, :due_date, :due_time, :completion, :ping_frequency, :owner_id)
    end
end
