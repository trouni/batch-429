class MoviesController < ApplicationController
  def index
    # sql_query = <<-SQL
    #     movies.title @@ :query
    #     OR movies.syllabus @@ :query
    #     OR directors.first_name @@ :query
    #     OR directors.last_name @@ :query
    #   SQL

    if params[:query].present?
      # @movies = Movie.joins(:director).where(sql_query,
      #   query: "%#{params[:query]}%"
      # )
      @movies = PgSearch.multisearch(params[:query]).map { |el| el.searchable }
    else
      @movies = Movie.all
    end
  end
end