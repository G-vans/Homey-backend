class PropertiesController < ApplicationController

    #Error messages
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422

   
    def index 
        properties = Property.all 
        render json: properties, status: :ok
    end

   
    def show
        property = Property.find(params[:id])
        render json: property, status: :ok, serializer: PropertyReviewSerializer, include: ['reviews', 'reviews.user', 'category']
    end

   
    def create
        property = Property.create!(property_params)
        render json: property, status: :created
    end

    # PUT
    def update
        property = Property.find(params[:id])
        property.update!(property_params)
        render json: property, status: :created
    end

    # DELETE
    def destroy
        property = Property.find(params[:id])
        property.destroy
        head :no_content
    end

    private 

    def property_params
        params.permit(:title, :description, :price, :image_url, :size)
    end

    def render_404
        render json: { error: "Property not found" }, status: :not_found
    end

    def render_422(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end