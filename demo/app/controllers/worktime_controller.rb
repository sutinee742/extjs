class WorktimeController < ApplicationController

  def index
    puts('search date')
    puts(params)
    puts(session[:username])
    puts(session[:password])
    # render :json => {worktimes: [{date:'abc', name:'abc', timein:'222', timeout:'333'},{date:'abc', name:'xyz', timein:'222', timeout:'333'}]}

    @start_date = params[:startdate]
    @end_date = params[:enddate]

    puts(@start_date)
    puts(@end_date)
    @worktimes = WorkTime.search(@start_date, @end_date, session[:username])
    puts('data')
    puts @worktimes

    render :json => {success: true, worktimes: @worktimes}

  end

end
