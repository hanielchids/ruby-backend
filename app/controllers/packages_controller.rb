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

    def index
        packages = Package.all
        render json: packages
    end    

    def update
        package = Package.find(params[:id])

        if package.update(package_params)
          render json: package
        else
        render json: { error: "Package could not be updated. Please try again." }
        end
    end

    def destroy
        package = Package.find(params[:id])

        if package.destroy
        render json: { message: "Package deleted successfully" }
        else
        render json: { error: "Package could not be deleted" }
        end
    end


    private

    def package_params
        params.require(:package).permit(:location_name, :destination_name, :distance, :timeslot, :date, :reference_number, :user_id)
    end


end

