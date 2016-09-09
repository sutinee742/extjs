class MainController < ApplicationController

  def index
    puts('index')
    puts(session[:username])
    puts(session[:password])

    if session[:username]==nil && session[:password]==nil
      puts('no session')
      redirect_to root_url
    else
      @username = session[:username]
      @password = session[:password]
      @user = Employee.searchuser(@username,@password)[0]

    end
  end

  def logout
    puts('logout')
    puts(params)
    puts(session[:username])
    puts(session[:password])
    if session[:username]!=nil && session[:password]!=nil
      session[:username]=nil
      session[:password]=nil
      puts(session[:username])
      puts(session[:password])
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end

  def timein
    puts('timein')
    puts(session[:username])
    puts(session[:password])

    @username = session[:username]
    @password = session[:password]
    @user = Employee.searchuser(@username,@password)[0]
    puts(@user)

    @date = params[:date]
    @employee_id = @user.id

    @work_times = WorkTime.searchbydateandemployee(@date,@employee_id)
    puts 'worktime'
    puts(@work_times.size())
    if @work_times.size == 0
      @work_time = WorkTime.new
      @work_time.date = @date
      @work_time.employee_id = @employee_id
      @work_time.timein = params[:time]
      if @work_time.save
        render :json => {success: true}
      else
        render :json => {success: false}
      end
    else
      render :json => {success: false}
    end
  end

  def work_time_params
    params.require(:work_time).permit( :employee_id,:date, :timein, :timeout)
  end

  def timeout
    puts('timeout')
    puts(session[:username])
    puts(session[:password])
    @date = params[:date]
    @username = session[:username]
    @password = session[:password]
    @user = Employee.searchuser(@username,@password)[0]
    @employee_id = @user.id
    @work_time_current = WorkTime.searchbydateandemployee(@date, @employee_id)[0]
    puts('worktime now!')
    puts(@work_time_current.id)
    puts(@work_time_current.employee_id)
    puts(@work_time_current.timein)
    puts(@work_time_current.timeout)
    @work_time = WorkTime.find(@work_time_current.id)
    @work_time.timeout = params[:time]
    if @work_time.save
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end

  def work_time_params
    params.require(:work_time).permit( :employee_id,:date, :timein, :timeout)
  end


end
