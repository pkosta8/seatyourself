class ReservationsController < ApplicationController

  def index
    @reservations = Reservations.all
  end

  def show
    @resevation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def edit
    @resevation = Reservation.find(params[:id])
  end

  def create
    @reservaiton = Reservation.new

    @reservaiton.name             = params[:reservation][:name]
    @reservaiton.date             = params[:reservation][:date]
    @reservaiton.number_of_people = params[:reservation][:number_of_people]

      if @resevation.save
        redirect_to resturants_path, notice: 'Resevations have succesfully been booked'
      else
        render 'resturants'
      end
  end

  def update
    @reservation = Reservation.find(params[:id])

    @reservaiton.name             = params[:reservation][:name]
    @reservaiton.date             = params[:reservation][:date]
    @reservaiton.number_of_people = params[:reservation][:number_of_people]

    if @resevation.save
      redirect_to resturants_path, notice: 'Resevations have succesfully been updated '
    else
      render :edit
    end
  end

  def destroy
    @reservaiton = Reservation.find(params[:id])
    @reservaiton.destory
    redirect_to "/resturants"
  end
end
