class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]


  def random_search
    # random key


    t1 = Time.now
    @key = rand(1...10000000).to_s

    @result = Test.using(Octopus.config[Rails.env]["followers"].keys.sample).where( "a LIKE '%#{@key}%' OR b LIKE '%#{@key}%' OR c LIKE '%#{@key}%' OR d LIKE '%#{@key}%' OR e LIKE '%#{@key}%' OR f LIKE '%#{@key}%' OR g LIKE '%#{@key}%' OR h LIKE '%#{@key}%' OR i LIKE '%#{@key}%' OR j LIKE '%#{@key}%' OR k LIKE '%#{@key}%' OR l LIKE '%#{@key}%' OR m LIKE '%#{@key}%' OR n LIKE '%#{@key}%' " )
    @count = Test.using(Octopus.config[Rails.env]["followers"].keys.sample).all.size    

    t2 = Time.now

    @ms = (t2 - t1) * 1000.0


  end


  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n)
    end
end
