Decidim::Meetings::MeetingSearch.class_eval do
  def search_date
    if options[:date] == "upcoming"
      query.where("end_time >= ? ", Time.current).order(start_time: :asc)
    elsif options[:date] == "past"
      query.where("end_time <= ? ", Time.current).order(start_time: :desc)
    else # Assume 'all'
      query
    end
  end
end
