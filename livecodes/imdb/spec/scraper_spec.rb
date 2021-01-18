require_relative "../scraper"

describe "#fetch_movie_urls" do
	it "returns an array of movies" do
		urls = fetch_movie_urls
		expected = [
      "http://www.imdb.com/title/tt0111161/", # Notice we don't need the query string.
      "http://www.imdb.com/title/tt0068646/",
      "http://www.imdb.com/title/tt0071562/",
      "http://www.imdb.com/title/tt0468569/",
      "http://www.imdb.com/title/tt0050083/"
    ]
    expect(urls).to eq(expected)
  end
end


describe "#scrape_movie" do
	it "returns a Hash describing a movie" do
		the_dark_knight_url = "http://www.imdb.com/title/tt0468569/"
		movie = scrape_movie(the_dark_knight_url)

		expected = {
			cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
			director: "Christopher Nolan",
			storyline: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
			title: "The Dark Knight",
			year: 2008
		}
		expect(movie).to eq(expected)
	end
end