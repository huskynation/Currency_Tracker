class CountryVisitController < ApplicationController
  before_filter :assign_country

  validates associated :country : currency :current_user

  def new
    @country_visit = Country_visit.new
    @country_visit.email = current_user.email
  end

  def collect
    @country_visit = Country_visit.find(params[:id])
    @currency = @Country_visit.currency
    if current_user == @Country_visit.owner
      @country_visit.save
    end
    redirect_to @country

    def create
      @country_visit = Country_visit.new(reservation_params)
      @country_visit.current_user = @current_user.id
      @country_visit.country = @country.id
      @country_visit.currency = @currency.id
      if @country_visit.save
        redirect_to(@country, notice: "Congrats you've conquered another currency!")
      else
        render "new"
      end

      def show
        @country_visit = Country_visit.find_all_by_visited(true)

      def visited_by
        User.find_by_id(self.user.find_by_id)
end

    end

