# encoding: utf-8

class ShuoshuosController < ApplicationController
  # GET /shuoshuos
  # GET /shuoshuos.json
  def index
    @shuoshuos = Shuoshuo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shuoshuos }
    end
  end

  # GET /shuoshuos/1
  # GET /shuoshuos/1.json
  def show
    @shuoshuo = Shuoshuo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shuoshuo }
    end
  end

  # GET /shuoshuos/new
  # GET /shuoshuos/new.json
  def new
    @shuoshuo = Shuoshuo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shuoshuo }
    end
  end

  # GET /shuoshuos/1/edit
  def edit
    @shuoshuo = Shuoshuo.find(params[:id])
  end

  # POST /shuoshuos
  # POST /shuoshuos.json
  def create
    @shuoshuo = Shuoshuo.new(user:params[:user],title:params[:title],content:params[:content])

    respond_to do |format|
      if @shuoshuo.save
        format.html { redirect_to @shuoshuo, notice: '说说发表成功' }
        format.json { render json: @shuoshuo, status: :created, location: @shuoshuo }
      else
        format.html { render action: "new" }
        format.json { render json: @shuoshuo.errors, status: :unprocessable_entity }
      end
    end
  end
  


  # PUT /shuoshuos/1
  # PUT /shuoshuos/1.json
  def update
    @shuoshuo = Shuoshuo.find(params[:id])

    respond_to do |format|
      if @shuoshuo.update_attributes(params[:shuoshuo])
        format.html { redirect_to @shuoshuo, notice: 'Shuoshuo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shuoshuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shuoshuos/1
  # DELETE /shuoshuos/1.json
  def destroy
    @shuoshuo = Shuoshuo.find(params[:id])
    @shuoshuo.destroy

    respond_to do |format|
      format.html { redirect_to shuoshuos_url }
      format.json { head :no_content }
    end
  end
end
