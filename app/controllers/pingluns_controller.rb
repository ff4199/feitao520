class PinglunsController < ApplicationController
  # GET /pingluns
  # GET /pingluns.json
  def index
    @pingluns = Pinglun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pingluns }
    end
  end

  # GET /pingluns/1
  # GET /pingluns/1.json
  def show
    @pinglun = Pinglun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pinglun }
    end
  end

  # GET /pingluns/new
  # GET /pingluns/new.json
  def new
    @pinglun = Pinglun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pinglun }
    end
  end

  # GET /pingluns/1/edit
  def edit
    @pinglun = Pinglun.find(params[:id])
  end

  # POST /pingluns
  # POST /pingluns.json
  def create
    @pinglun = Pinglun.new(comment:params[:comment],
                          user:params[:user],
                          shuoshuo_id:params[:shuoshuo_id])
   
    respond_to do |format|
      if @pinglun.save
        format.html { redirect_to @pinglun, notice: 'Pinglun was successfully created.' }
        format.json { render json: @pinglun, status: :created, location: @pinglun }
      else
        format.html { render action: "new" }
        format.json { render json: @pinglun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pingluns/1
  # PUT /pingluns/1.json
  def update
    @pinglun = Pinglun.find(params[:id])

    respond_to do |format|
      if @pinglun.update_attributes(params[:pinglun])
        format.html { redirect_to @pinglun, notice: 'Pinglun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pinglun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pingluns/1
  # DELETE /pingluns/1.json
  def destroy
    @pinglun = Pinglun.find(params[:id])
    @pinglun.destroy

    respond_to do |format|
      format.html { redirect_to pingluns_url }
      format.json { head :no_content }
    end
  end
end
