class ReviewController < ApplicationController
  def create
    Review.create(review_text: params[:review_text], rating: params[:rating], user_id: current_user.id, invoice_id: params[:invoice_id])
    redirect_to invoice_index_path, notice: "تم إرسال تقييمك بنجاح. شكرًا لمشاركتك تجربتك!"
  end
end
