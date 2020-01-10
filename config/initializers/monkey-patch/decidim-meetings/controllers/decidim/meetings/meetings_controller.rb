Decidim::Meetings::MeetingsController.class_eval do
  private

  def default_filter_params
    {
      date: "all",
      search_text: "",
      scope_id: "",
      category_id: ""
    }
  end
end
