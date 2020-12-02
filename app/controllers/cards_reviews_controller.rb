class CardsReviewsController < ApplicationController
  before_action :set_cards_review, only: [:show, :edit, :update, :destroy]

  # GET /cards_reviews
  # GET /cards_reviews.json
  def index
    @cards_reviews = CardsReview.all 
  end

  # GET /cards_reviews/1
  # GET /cards_reviews/1.json
  def show
  end

  # GET /cards_reviews/new
  def new
    @cards_review = CardsReview.new
  end

  # GET /cards_reviews/1/edit
  def edit
  end

  # POST /cards_reviews
  # POST /cards_reviews.json
  def create
    @cards_review = CardsReview.new(cards_review_params)
    @cards_review.user_id = current_user.id

    respond_to do |format|
      if @cards_review.save
        format.html { redirect_to @cards_review, notice: 'Cards review was successfully created.' }
        format.json { render :show, status: :created, location: @Cards_review }
      else
        format.html { render :new }
        format.json { render json: @cards_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards_reviews/1
  # PATCH/PUT /cards_reviews/1.json
  def update
    respond_to do |format|
      if @cards_review.update(cards_review_params)
        format.html { redirect_to @cards_review, notice: 'Cards review was successfully updated.' }
        format.json { render :show, status: :ok, location: @cards_review }
      else
        format.html { render :edit }
        format.json { render json: @cards_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards_reviews/1
  # DELETE /cards_reviews/1.json
  def destroy
    @cards_review.destroy
    respond_to do |format|
      format.html { redirect_to cards_reviews_url, notice: 'Cards review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cards_review
      @cards_review = CardsReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cards_review_params
      params.require(:cards_review).permit(:user_id, :cards_id, :review)
    end
end