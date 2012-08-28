class PagesController < ApplicationController
  def index
  end

  def about
  end

  def news
    @trainings = Training.upcoming
  end

  def evs
  end

  def archive
    @trainings = Training.forecoming
  end

  def testimonials
    testimonial_ids = Training.forecoming.with_testimonials.descending.select(["trainings.id", "trainings.ends_on"]).includes(:testimonials).limit(5)
      .map { |training| training.testimonials.select("testimonials.id").descending.first.id }

    @testimonials = Testimonial.where(id: testimonial_ids).descending.paginate(page: params[:page], per_page: 1)
  end

  def partners
  end
end
