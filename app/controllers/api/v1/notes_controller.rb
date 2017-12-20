class Api::V1::NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new
    if @note.save
      render json: @note
    else
      render json: @note.errors, status: :unprocessible_entity
    end
  end




end
