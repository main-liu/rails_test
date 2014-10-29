class JstestController < ApplicationController
  def index
  end

  def modify  #通过:remote => true 调用ajax
    puts '==========='
    @num=params[:num]
    respond_to do |format|#通过respond_to，Rails分辨客户端请求是html，还是js格式的返回，不同的格式请求可以进行不同的渲染输出。
      format.html 
      format.json { render json: @num }
      #format.js  默认渲染名为action名的js.erb模板，等同{ render :layout => false}
      format.js { render :layout => false, :status => 406  } #把num变量，渲染到名为 add.js.erb的模板
    end
  end

  def add  #用js中ajax调用，获取json数据
    puts '==========='
    @num=params[:num]
    @num= Integer(@num)+1
    puts @num

    respond_to do |format|
      format.html 
      format.json { render json: @num }
    end
  end

  def newuser
    @users = User.all
    @user = User.new	
  end

  def updateuser
    puts '==============================up'
    @user = User.new(params[:user])
    @user.save
    @users = User.all
    respond_to do |format|
      format.js 
    end
  end

end
