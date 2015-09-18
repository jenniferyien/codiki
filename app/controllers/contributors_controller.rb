class ContributorsController < ApplicationController
  before_action :set_contributor, only: [:show, :edit, :update, :destroy]

  def login
    if current_contributor
      redirect_to articles_path
    else
      render :login
    end
  end

  def logout
    session[:contributor_id]=nil
    redirect_to articles_path
  end
  #does an actual login
  def login_post
        @contributor = Contributor.find_by({email: params[:email]})
        if @contributor

          if @contributor.authenticate(params[:password])
            #password is good
            session[:contributor_id] = @contributor.id
            redirect_to articles_path
          else
            #password is bad
            redirect_to '/login', {:flash => { :error => "Insufficient rights!" }}
          end
        else
           redirect_to '/login', {:flash => { :error => "Insufficient rights!" }}
        end

  end

  def about
  end

  def contact
  end
  # GET /contributors
  # GET /contributors.json
  def index
    @contributors = Contributor.all
  end

  # GET /contributors/1
  # GET /contributors/1.json
  def show
    @articles = Article.all
  end

  # GET /contributors/new
  def new
      @contributor = Contributor.new
  end

  # GET /contributors/1/edit
  def edit
  end

  # POST /contributors
  # POST /contributors.json
  def create
    if current_contributor
      redirect_to articles_path
    else
      contributor = params.require(:contributor).permit(:first_name , :last_name, :email, :password)
      @contributor = Contributor.new(contributor)
      if @contributor.valid?
        @contributor.save
        session[:contributor_id] = @contributor.id
        redirect_to articles_path
        UserNotifier.send_signup_email(@contributor).deliver
      else
        render :new
    end
  end
  end

  # PATCH/PUT /contributors/1
  # PATCH/PUT /contributors/1.json
  def update
    respond_to do |format|
      if @contributor.update(contributor_params)
        format.html { redirect_to @contributor, notice: 'Contributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @contributor }
      else
        format.html { render :edit }
        format.json { render json: @contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributors/1
  # DELETE /contributors/1.json
  def destroy
    @contributor.destroy
    respond_to do |format|
      format.html { redirect_to contributors_url, notice: 'Contributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributor
      @contributor = Contributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contributor_params
      params.require(:contributor).permit(:first_name, :last_name, :email, :password)
    end
end
