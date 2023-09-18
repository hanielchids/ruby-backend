class PackagesController < ApplicationController
    def create
        package = Package.new(package_params)

        if package.save
            render json: package
        else
            render json: {error: "Package could not be created. Please try again."}
        end
    end

    def show
        package = Package.find(params[:id])
        if package
            render json: package
        else
            render json: {error: "Package could not be found."}
        end
    end

    private

    def package_params
        params.require(:package).permit(:location_name, :destination_name, :distance, :timeslot, :date, :reference_number, :user_id)
    end


end

